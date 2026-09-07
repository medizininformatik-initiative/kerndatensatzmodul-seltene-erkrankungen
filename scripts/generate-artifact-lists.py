#!/usr/bin/env python3
"""Erzeugt die Artefakt-Tabellen fuer profiles / extensions / value-sets / code-systems.

Warum ein Generator: Am 2026-09-04 fuehrte profiles.md 10 von 24 Profilen, und
extensions.md, value-sets.md und code-systems.md fuehrten KEIN einziges eigenes
Artefakt. Alle sechs JARDIN-Profile fehlten. Der IG Publisher verlinkt die
Artefakte zwar in seiner eigenen Uebersicht, aber die erzaehlenden Seiten des
Moduls behaupteten damit eine Vollstaendigkeit, die sie nicht hatten -- und eine
von Hand gepflegte Liste laeuft genau so wieder weg.

Quelle ist der von SUSHI erzeugte Ressourcenbestand, nicht die FSH-Datei: so
steht in der Tabelle, was tatsaechlich publiziert wird. Zurueckgezogene
Artefakte (status = retired) werden gesondert ausgewiesen statt verschwiegen.

Aufruf:  python3 scripts/generate-artifact-lists.py
"""
import json
import pathlib
import re
import sys

ROOT = pathlib.Path(__file__).resolve().parent.parent
GEN = ROOT / "fsh-generated/resources"

BEGIN = "<!-- BEGIN GENERATED: artifact-list (scripts/generate-artifact-lists.py) -->"
END = "<!-- END GENERATED: artifact-list -->"

# (Seitenname, Ressourcentyp, Filter auf StructureDefinition.type)
KINDS = [
    ("profiles",     "StructureDefinition", "constraint"),
    ("extensions",   "StructureDefinition", "extension"),
    ("value-sets",   "ValueSet",            None),
    ("code-systems", "CodeSystem",          None),
]

HEAD = {
    "en": ("Title", "Id", "Purpose"),
    "de": ("Titel", "Id", "Zweck"),
}

INTRO = {
    "profiles": {
        "en": "The module defines the following profiles. Each entry links to the "
              "generated artefact page with structure, constraints, bindings and examples.",
        "de": "Das Modul definiert die folgenden Profile. Jeder Eintrag verweist auf die "
              "erzeugte Artefaktseite mit Struktur, Constraints, Bindings und Beispielen.",
    },
    "extensions": {
        "en": "The module defines the following extensions.",
        "de": "Das Modul definiert die folgenden Extensions.",
    },
    "value-sets": {
        "en": "The module defines the following value sets. Value sets that only bundle "
              "codes of an external terminology are listed here as well, because their "
              "canonical is owned by this module.",
        "de": "Das Modul definiert die folgenden ValueSets. Auch solche, die lediglich "
              "Codes einer externen Terminologie buendeln, stehen hier &mdash; ihr "
              "Canonical gehoert diesem Modul.",
    },
    "code-systems": {
        "en": "Beyond the external terminologies described above, the module defines the "
              "following code systems of its own. They exist where no published "
              "terminology carries the concept.",
        "de": "Neben den oben beschriebenen externen Terminologien definiert das Modul die "
              "folgenden eigenen CodeSystems. Sie bestehen dort, wo keine publizierte "
              "Terminologie das Konzept fuehrt.",
    },
}

RETIRED_NOTE = {
    "en": "**Retired.** The following artefacts remain resolvable but must no longer be "
          "used in new implementations:",
    "de": "**Zurueckgezogen.** Die folgenden Artefakte bleiben aufloesbar, sollen in neuen "
          "Implementierungen aber nicht mehr verwendet werden:",
}


def cell(text):
    if not text:
        return ""
    text = re.sub(r"\s+", " ", str(text)).strip()
    return text.replace("|", "\\|")


def collect(rtype, sd_kind):
    active, retired = [], []
    for f in sorted(GEN.glob("%s-*.json" % rtype)):
        d = json.loads(f.read_text(encoding="utf-8"))
        if d.get("resourceType") != rtype:
            continue
        if rtype == "StructureDefinition":
            is_ext = d.get("type") == "Extension"
            if sd_kind == "extension" and not is_ext:
                continue
            if sd_kind == "constraint" and is_ext:
                continue
            # Logical Models haben ihre eigene Seite (logical-models.md).
            if d.get("kind") == "logical":
                continue
        row = (
            d.get("title") or d.get("name") or d["id"],
            d["id"],
            d.get("description") or d.get("purpose") or "",
            rtype,
        )
        (retired if d.get("status") == "retired" else active).append(row)
    return active, retired


def render(kind, active, retired, lang):
    head = HEAD[lang]
    out = [INTRO[kind][lang], ""]
    # Die Trennzeile MUSS "|---|" ohne Leerzeichen lauten; mit Leerzeichen macht
    # die Typografie-Ersetzung des Renderers Geviertstriche daraus und die
    # Tabelle zerfaellt (dieselbe Falle wie bei der Logical-Model-Tabelle).
    out += ["| %s | %s | %s |" % head, "|---|---|---|"]
    for title, rid, desc, rtype in active:
        link = "[`%s`](%s-%s.html)" % (rid, rtype, rid)
        out.append("| %s | %s | %s |" % (cell(title), link, cell(desc)))
    if retired:
        out += ["", RETIRED_NOTE[lang], ""]
        out += ["| %s | %s | %s |" % head, "|---|---|---|"]
        for title, rid, desc, rtype in retired:
            link = "[`%s`](%s-%s.html)" % (rid, rtype, rid)
            out.append("| %s | %s | %s |" % (cell(title), link, cell(desc)))
    return "\n".join(out)


def main():
    if not GEN.exists():
        sys.exit("fsh-generated/ fehlt — bitte zuerst SUSHI laufen lassen.")
    total = 0
    for kind, rtype, sd_kind in KINDS:
        active, retired = collect(rtype, sd_kind)
        if not active and not retired:
            print("  %-13s keine Artefakte — uebersprungen" % kind)
            continue
        for rel, lang in (("input/pagecontent/%s.md" % kind, "en"),
                          ("input/translations/de/pagecontent/%s.md" % kind, "de")):
            page = ROOT / rel
            if not page.exists():
                print("  %-13s fehlt: %s" % (kind, rel))
                continue
            text = page.read_text(encoding="utf-8")
            block = "%s\n\n%s\n\n%s" % (BEGIN, render(kind, active, retired, lang), END)
            if BEGIN in text and END in text:
                text = re.sub(re.escape(BEGIN) + r".*?" + re.escape(END), block,
                              text, flags=re.S)
            else:
                text = text.rstrip() + "\n\n" + block + "\n"
            page.write_text(text, encoding="utf-8")
        print("  %-13s %2d aktiv, %d zurueckgezogen  (beide Sprachen)"
              % (kind, len(active), len(retired)))
        total += len(active) + len(retired)
    print("Fertig: %d Artefakte gelistet." % total)


if __name__ == "__main__":
    main()
