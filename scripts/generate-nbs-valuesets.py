#!/usr/bin/env python3
"""Regenerate the newborn-screening ValueSets from the LOINC-SNOMED ontology.

WHY THIS SCRIPT EXISTS. The five `mii-vs-seltene-nbs-*-dbs` ValueSets are not
hand-picked. Each one is the result of one ECL query against the LOINC-SNOMED
edition, so "which analytes belong in the acylcarnitine value set" is answered by
the ontology's own Component hierarchy rather than by whoever edited the file
last. This script is what makes that claim checkable: run it again and you get
the same files, or you get a diff that tells you the ontology moved.

THE ONE NON-OBVIOUS STEP is why the output contains LOINC codes at all when the
query runs against SNOMED. Each LOINC-SNOMED concept carries its LOINC code as an
`alternateIdentifier` (identifierScheme 30051010000102, "LOINC code identifier"),
so the ontology can select the concepts while LOINC supplies the codes that go
into the ValueSet. That indirection is deliberate: tx.fhir.org — the terminology
server this IG builds and validates against — does not know the LOINC-SNOMED
edition (`http://snomed.info/sct/11010000107` is not a valid version there), so an
intensional ECL ValueSet would simply fail to expand. Publishing the enumerated
LOINC codes keeps the ValueSets resolvable for every consumer while the ECL stays
recorded in each file's header as the provenance of the selection.

REQUIREMENTS
  - a Snowstorm with the LOINC-SNOMED edition on branch MAIN/SNOMEDCT-LOINC
    (default http://localhost:8090, override with SNOWSTORM_BASE)
  - network access to tx.fhir.org for the per-code verification

Every code is verified with CodeSystem/$lookup before it is written. A code the
server does not confirm is dropped and reported — never written on trust.

USAGE
    python3 scripts/generate-nbs-valuesets.py [--check]

    --check  regenerate into a temporary directory and diff against the committed
             files; exit 1 on any difference. Intended for CI.
"""

import argparse
import json
import os
import re
import sys
import tempfile
import time
import urllib.parse
import urllib.request

SNOWSTORM = os.environ.get("SNOWSTORM_BASE", "http://localhost:8090")
BRANCH = "MAIN/SNOMEDCT-LOINC"
TX = "https://tx.fhir.org/r4"
OUT_DIR = "input/fsh/valuesets"

ECL_BASE = (
    "<363787002 |Observable entity| : "
    "704327008 |Direct site| = 440500007 |Dried blood spot specimen|"
)

SPECS = [
    {
        "id": "mii-vs-seltene-nbs-acylcarnitine-dbs",
        "name": "MII_VS_Seltene_NBS_Acylcarnitine_DBS",
        "title": "MII VS Seltene Erkrankungen NBS Acylcarnitine (Trockenblut)",
        "ecl": ECL_BASE + ", 246093002 |Component| = << 102651000 |Acylcarnitine|",
        "desc": (
            "Acylcarnitin- und Carnitin-Analyte in Trockenblut (dried blood spot) — die "
            "Messgrößen des MS/MS-Acylcarnitinprofils im Neugeborenenscreening "
            "(Fettsäureoxidationsstörungen, Organoazidopathien, Carnitinzyklusdefekte). "
            "Abgeleitet aus der LOINC-SNOMED-Ontologie und deshalb NICHT vollständig "
            "gegenüber LOINC: enthalten ist der nach SNOMED gemappte Teil. Für die "
            "lückenlose Menge siehe mii-vs-seltene-nbs-dbs-all."
        ),
    },
    {
        "id": "mii-vs-seltene-nbs-aminoacid-dbs",
        "name": "MII_VS_Seltene_NBS_AminoAcid_DBS",
        "title": "MII VS Seltene Erkrankungen NBS Aminosäuren (Trockenblut)",
        "ecl": ECL_BASE + ", 246093002 |Component| = << 52518006 |Amino acid|",
        "desc": (
            "Aminosäure-Analyte in Trockenblut — die Messgrößen des MS/MS-Aminosäureprofils "
            "im Neugeborenenscreening (Phenylketonurie, Ahornsirupkrankheit, "
            "Homocystinurie, Tyrosinämie, Harnstoffzyklusdefekte). Abgeleitet aus der "
            "LOINC-SNOMED-Ontologie und deshalb NICHT vollständig gegenüber LOINC; für "
            "die lückenlose Menge siehe mii-vs-seltene-nbs-dbs-all."
        ),
    },
    {
        "id": "mii-vs-seltene-nbs-enzyme-activity-dbs",
        "name": "MII_VS_Seltene_NBS_EnzymeActivity_DBS",
        "title": "MII VS Seltene Erkrankungen NBS Enzymaktivitäten (Trockenblut)",
        "ecl": ECL_BASE + ", 370130000 |Property| = 118524006 |Catalytic concentration|",
        "desc": (
            "Enzymaktivitäten (katalytische Konzentration), die in Trockenblut bestimmt "
            "werden — u. a. Biotinidase und Galaktose-Enzyme des deutschen "
            "Neugeborenenscreenings sowie die Enzyme lysosomaler Speicherkrankheiten, die "
            "international gescreent werden."
        ),
    },
    {
        "id": "mii-vs-seltene-nbs-ratio-dbs",
        "name": "MII_VS_Seltene_NBS_Ratio_DBS",
        "title": "MII VS Seltene Erkrankungen NBS Quotienten (Trockenblut)",
        "ecl": ECL_BASE + ", 370130000 |Property| = 118563004 |Substance ratio|",
        "desc": (
            "Diagnostische Quotienten aus Trockenblut-Analyten. Im Neugeborenenscreening "
            "tragen die Verhältnisse (z. B. C3/C2, Phe/Tyr) einen großen Teil der "
            "diagnostischen Trennschärfe, weil sie von der Probenqualität weniger abhängen "
            "als Einzelwerte."
        ),
    },
    {
        "id": "mii-vs-seltene-nbs-hemoglobin-dbs",
        "name": "MII_VS_Seltene_NBS_Hemoglobin_DBS",
        "title": "MII VS Seltene Erkrankungen NBS Hämoglobin-Fraktionen (Trockenblut)",
        "ecl": ECL_BASE + ", 246093002 |Component| = << 38082009 |Hemoglobin|",
        "desc": (
            "Hämoglobin-Fraktionen in Trockenblut, bezogen auf das Gesamthämoglobin — die "
            "Messgrößen des Screenings auf Sichelzellkrankheit und weitere "
            "Hämoglobinopathien. Abgeleitet aus der LOINC-SNOMED-Ontologie und deshalb "
            "deutlich unvollständig gegenüber LOINC (rund ein Drittel der DBS-Hämoglobin-"
            "Codes); für die lückenlose Menge siehe mii-vs-seltene-nbs-dbs-all."
        ),
    },
]


def get_json(url, data=None, timeout=180):
    req = urllib.request.Request(url)
    if data is not None:
        req.data = json.dumps(data).encode()
        req.add_header("Content-Type", "application/json")
    with urllib.request.urlopen(req, timeout=timeout) as fh:
        return json.load(fh)


def ecl_query(expression, limit=1000):
    url = f"{SNOWSTORM}/{BRANCH}/concepts?" + urllib.parse.urlencode(
        {"ecl": expression, "activeFilter": "true", "limit": limit}
    )
    result = get_json(url)
    if result["total"] > len(result["items"]):
        raise SystemExit(
            f"ECL returned {result['total']} concepts but only {len(result['items'])} "
            f"were fetched — raise the limit rather than publishing a truncated set."
        )
    return result["items"]


def loinc_codes_for(concept_ids):
    """Read each concept's LOINC code from its alternateIdentifier.

    The identifiers endpoint ignores its referencedComponentId filter on this
    Snowstorm build (it returns the same first page for every id), so the browser
    bulk-load endpoint is used instead — it carries alternateIdentifiers inline.
    """
    mapping = {}
    for start in range(0, len(concept_ids), 100):
        batch = concept_ids[start : start + 100]
        result = get_json(
            f"{SNOWSTORM}/browser/{BRANCH}/concepts/bulk-load",
            {"conceptIds": batch},
        )
        items = result if isinstance(result, list) else result.get("items", [])
        for concept in items:
            codes = [
                ident["alternateIdentifier"]
                for ident in (concept.get("alternateIdentifiers") or [])
                if ident.get("active")
                and ident.get("identifierSchemeId") == "30051010000102"
            ]
            if len(codes) == 1:
                mapping[concept["conceptId"]] = (codes[0], concept["fsn"]["term"])
            elif codes:
                print(
                    f"  ! {concept['conceptId']} carries {len(codes)} LOINC codes "
                    f"({', '.join(codes)}) — skipped, a 1:n mapping is not a ValueSet entry",
                    file=sys.stderr,
                )
    return mapping


def verify(code, attempts=4):
    """Confirm a code against tx.fhir.org; return (display, loinc_status) or (None, None).

    Retries transport failures. A timeout is not evidence that a code is invalid,
    and treating it as such would silently drop a valid analyte from a published
    ValueSet — which is exactly what happened on the first run of this script.
    Only a server that answers, and answers with something other than a
    Parameters resource carrying a display, counts as "not confirmed".

    The LOINC STATUS property is read alongside the display because a code can be
    perfectly resolvable and still be the wrong one to publish. That is not
    hypothetical here: 54104-5 (haemoglobin pattern by HPLC) resolves fine and is
    DISCOURAGED, which the IG Publisher flagged only after the code had already
    been written into a ValueSet.
    """
    url = f"{TX}/CodeSystem/$lookup?" + urllib.parse.urlencode(
        {"system": "http://loinc.org", "code": code}
    )
    last = None
    for attempt in range(attempts):
        try:
            result = get_json(url, timeout=60)
        except Exception as exc:  # noqa: BLE001 - reported below, never swallowed
            last = exc
            time.sleep(2 * (attempt + 1))
            continue
        if result.get("resourceType") != "Parameters":
            return None, None
        display = None
        status = None
        for param in result.get("parameter", []):
            if param.get("name") == "display":
                display = param.get("valueString")
            elif param.get("name") == "property":
                parts = {
                    p["name"]: (p.get("valueString") or p.get("valueCode"))
                    for p in param.get("part", [])
                }
                if parts.get("code") == "STATUS":
                    status = parts.get("value")
        return display, status
    print(f"  ! {code}: {attempts} lookups all failed ({last})", file=sys.stderr)
    return None, None


def analyte_name(fsn):
    match = re.search(r" of (.+?) in dried blood spot", fsn)
    return match.group(1) if match else fsn


def render(spec, entries):
    lines = "\n".join(
        f'* $loinc#{code} "{display}"' for code, display, _ in entries
    )
    return f"""// GENERIERT aus der LOINC-SNOMED-Ontologie (Snowstorm-Branch {BRANCH})
// und anschliessend Code für Code gegen tx.fhir.org verifiziert.
// Die Auswahl ist NICHT handverlesen, sondern das Ergebnis dieser ECL-Abfrage:
//
//   {spec['ecl']}
//
// NICHT VOLLSTÄNDIG GEGENÜBER LOINC — das ist der Preis der Gliederung. Die
// LOINC-SNOMED-Edition bildet nur den nach SNOMED gemappten Teil von LOINC ab:
// gemessen am 2026-08-28 sind das 335 Konzepte gegenüber 608 LOINC-Codes mit
// SYSTEM = Trockenblut. Bei den Acylcarnitinen fehlen dadurch etwa 45 % der
// LOINC-Codes, bei den Hämoglobin-Fraktionen rund zwei Drittel, darunter echte
// Analyte wie 50086-8 (C5-OH) und 53166-5 (C4). Wer Vollständigkeit braucht statt
// klinischer Gliederung, nimmt mii-vs-seltene-nbs-dbs-all: dort ist die Menge
// intensional über die LOINC-Eigenschaft SYSTEM definiert und deshalb lückenlos.
//
// Aus jedem Treffer wurde der LOINC-Code über den alternateIdentifier des Konzepts
// (identifierScheme 30051010000102 "LOINC code identifier") gelesen; alle {len(entries)}
// Codes wurden per CodeSystem/$lookup auf tx.fhir.org bestätigt.
//
// Warum LOINC-Codes und nicht die SNOMED-Observables: tx.fhir.org — der Server, gegen
// den dieser IG baut und validiert — kennt die LOINC-SNOMED-Edition nicht
// (http://snomed.info/sct/11010000107 ist dort keine gültige Version). Ein intensionales
// ECL-ValueSet wäre damit nicht expandierbar. Die Ontologie liefert hier die Auswahl,
// LOINC die Codes.
//
// NICHT VON HAND BEARBEITEN — regenerieren mit scripts/generate-nbs-valuesets.py.
ValueSet: {spec['name']}
Id: {spec['id']}
Title: "{spec['title']}"
Description: "{spec['desc']}"
* insert Publisher
* insert PR_CS_VS_Version
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/{spec['id']}"
* ^status = #active
* ^experimental = false

{lines}
"""


def build(out_dir):
    written = []
    for spec in SPECS:
        concepts = ecl_query(spec["ecl"])
        ids = [c["conceptId"] for c in concepts]
        mapping = loinc_codes_for(ids)
        missing = [cid for cid in ids if cid not in mapping]
        if missing:
            print(
                f"  ! {spec['id']}: {len(missing)} concept(s) without a usable LOINC code "
                f"— excluded: {', '.join(missing[:5])}",
                file=sys.stderr,
            )
        entries = []
        unverified = []
        flagged = []
        for cid in ids:
            if cid not in mapping:
                continue
            code, fsn = mapping[cid]
            display, status = verify(code)
            if display is None:
                unverified.append(code)
                continue
            if status and status not in ("ACTIVE", "TRIAL"):
                flagged.append(f"{code} ({status})")
            entries.append((code, display.replace('"', '\\"'), analyte_name(fsn)))
        if unverified:
            print(
                f"  ! {spec['id']}: {len(unverified)} code(s) not confirmed by tx.fhir.org "
                f"— excluded: {', '.join(unverified[:5])}",
                file=sys.stderr,
            )
        if flagged:
            # Kept, not dropped: the ontology says these belong to the group, and
            # removing them would misrepresent it. Surfaced so a human decides.
            print(
                f"  ! {spec['id']}: {len(flagged)} code(s) carry a LOINC status that is "
                f"neither ACTIVE nor TRIAL — kept, but review them: {', '.join(flagged)}",
                file=sys.stderr,
            )
        entries.sort(key=lambda e: e[2])
        path = os.path.join(out_dir, f"{spec['id']}.fsh")
        with open(path, "w", encoding="utf-8") as fh:
            fh.write(render(spec, entries))
        print(f"{spec['id']:44} {len(entries):4} Codes")
        written.append((spec["id"], path))
    return written


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--check",
        action="store_true",
        help="regenerate into a temp dir and diff against the committed files",
    )
    args = parser.parse_args()

    if args.check:
        with tempfile.TemporaryDirectory() as tmp:
            build(tmp)
            drift = []
            for spec in SPECS:
                new = os.path.join(tmp, f"{spec['id']}.fsh")
                old = os.path.join(OUT_DIR, f"{spec['id']}.fsh")
                if not os.path.exists(old):
                    drift.append(f"{spec['id']}: not committed")
                elif open(new, encoding="utf-8").read() != open(old, encoding="utf-8").read():
                    drift.append(f"{spec['id']}: differs from the ontology")
            if drift:
                print("\nDRIFT:", file=sys.stderr)
                for line in drift:
                    print("  " + line, file=sys.stderr)
                return 1
            print("\nno drift — the committed ValueSets match the ontology")
            return 0

    os.makedirs(OUT_DIR, exist_ok=True)
    build(OUT_DIR)
    print(
        "\nThe curated ValueSet mii-vs-seltene-nbs-target-analyte.fsh is NOT generated "
        "here — it encodes the G-BA Kinder-Richtlinie's disease-to-analyte assignment, "
        "which is a clinical statement and not derivable from the terminology."
    )
    return 0


if __name__ == "__main__":
    sys.exit(main())
