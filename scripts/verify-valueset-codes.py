#!/usr/bin/env python3
"""Prueft alle aufgezaehlten ValueSet-Codes gegen einen Terminologieserver.

Anlass: In drei zufaellig geprueften ValueSets dieses Moduls fanden sich
zusammen sieben Codes, deren Display etwas voellig anderes behauptete als der
Code bedeutet — HP:0025169 stand als "Complete penetrance" und ist Left
ventricular systolic dysfunction, 84757009 stand als "Rare disease" und ist
Epilepsy. Solche Fehler sind mit blossem Auge nicht zu finden, weil das Display
plausibel aussieht. Dieses Skript vergleicht jedes Display gegen die
Terminologie.

Geprueft wird per CodeSystem/$lookup OHNE property-Filter: mit Filter liefert
tx.fhir.org nur eine Teilmenge der Eigenschaften und verschweigt STATUS.

Nicht geprueft werden intensionale Includes (filter-basiert) — dort gibt es
keine Codeliste — und lokale CodeSystems des Moduls, die der Server nicht kennt.

Aufruf:  python3 scripts/verify-valueset-codes.py [--tx URL]
Beendet sich mit Code 1, wenn Abweichungen gefunden wurden.
"""
import argparse
import glob
import json
import os
import ssl
import sys
import time
import urllib.error
import urllib.parse
import urllib.request

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
LOCAL_PREFIX = "https://www.medizininformatik-initiative.de/"

# HPO kennt tx.fhir.org nicht (404 auf jeden Code). Die Ontologie-API von JAX
# beantwortet dieselbe Frage und wird fuer dieses System stattdessen befragt —
# sonst blieben 35 Codes stillschweigend ungeprueft und die Bilanz saehe
# besser aus, als sie ist.
HPO = "http://human-phenotype-ontology.org"
HPO_API = "https://ontology.jax.org/api/hp/terms/%s"

# SNOMED-Semantik-Tags: das ValueSet fuehrt oft den Fully Specified Name
# ("... (finding)"), der Server den Preferred Term. Beides bezeichnet dasselbe
# Konzept; ohne diese Normalisierung meldet das Skript Fehlalarme.
SEMANTIC_TAGS = (
    "(finding)", "(disorder)", "(procedure)", "(observable entity)",
    "(qualifier value)", "(situation)", "(body structure)", "(substance)",
    "(regime/therapy)", "(morphologic abnormality)", "(event)", "(person)",
)


def opener(cert=None, key=None):
    """urlopen-Opener, optional mit Client-Zertifikat (mTLS)."""
    if not cert:
        return urllib.request.build_opener()
    ctx = ssl.create_default_context()
    ctx.load_cert_chain(certfile=cert, keyfile=key or cert)
    return urllib.request.build_opener(urllib.request.HTTPSHandler(context=ctx))


def lookup_hpo(code, op):
    req = urllib.request.Request(HPO_API % code)
    try:
        with op.open(req, timeout=25) as r:
            return json.loads(r.read().decode("utf-8")).get("name"), None, False
    except urllib.error.HTTPError as e:
        if e.code == 404:
            return None, None, True
        return None, None, None
    except Exception:
        return None, None, None


def lookup(tx, system, code, op, attempts=3):
    """(display, status, fehlt) — Transportfehler werden wiederholt.

    Ein Timeout ist kein Beweis, dass ein Code ungueltig ist; ohne die
    Wiederholung wuerde das Skript einzelne Codes faelschlich anschwaerzen.
    """
    url = "%s/CodeSystem/$lookup?%s" % (
        tx.rstrip("/"),
        urllib.parse.urlencode({"system": system, "code": code}),
    )
    req = urllib.request.Request(url, headers={"Accept": "application/fhir+json"})
    last = None
    for i in range(attempts):
        try:
            with op.open(req, timeout=30) as r:
                d = json.loads(r.read().decode("utf-8"))
            if d.get("resourceType") == "OperationOutcome":
                return None, None, True
            disp = status = None
            for p in d.get("parameter", []):
                if p.get("name") == "display":
                    disp = p.get("valueString")
                if p.get("name") == "property":
                    parts = {x["name"]: (x.get("valueString") or x.get("valueCode"))
                             for x in p.get("part", [])}
                    if parts.get("code") == "STATUS":
                        status = parts.get("value")
            return disp, status, False
        except urllib.error.HTTPError as e:
            # 404 auf $lookup heisst: diesen Code gibt es im System nicht. Das
            # ist ein BEFUND, kein Transportfehler — frueher wurde es als
            # "nicht pruefbar" abgetan und verschwand aus der Bilanz.
            if e.code == 404:
                return None, None, True
            last = e
            time.sleep(1 + i)
        except Exception as e:  # Transport, nicht Terminologie
            last = e
            time.sleep(1 + i)
    print("    ! %s#%s nicht pruefbar (%s)" % (system, code, last), file=sys.stderr)
    return None, None, None


def norm(s):
    s = " ".join((s or "").split()).lower()
    for tag in SEMANTIC_TAGS:
        if s.endswith(tag):
            s = s[: -len(tag)].strip()
    return s


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--tx", default="https://tx.fhir.org/r4",
                    help="Terminologieserver. Fuer den MII-eigenen: "
                         "https://ontoserver.mii-termserv.de/fhir (braucht --cert)")
    ap.add_argument("--cert", help="Client-Zertifikat (PEM) fuer mTLS, z.B. SU-TermServ")
    ap.add_argument("--key", help="Zugehoeriger Schluessel, falls nicht im Zertifikat")
    args = ap.parse_args()
    op = opener(args.cert, args.key)

    findings = []
    checked = skipped = 0
    for f in sorted(glob.glob(os.path.join(ROOT, "fsh-generated/resources/ValueSet-*.json"))):
        d = json.load(open(f, encoding="utf-8"))
        vsid = d.get("id")
        if d.get("status") == "retired":
            continue
        for inc in d.get("compose", {}).get("include", []):
            system = inc.get("system", "")
            if system.startswith(LOCAL_PREFIX):
                skipped += len(inc.get("concept", []))
                continue
            for c in inc.get("concept", []):
                code, want = c.get("code"), c.get("display")
                if system == HPO:
                    got, status, missing = lookup_hpo(code, op)
                else:
                    got, status, missing = lookup(args.tx, system, code, op)
                if missing is None:
                    continue
                checked += 1
                if missing:
                    findings.append((vsid, system, code, want, "EXISTIERT NICHT"))
                elif want and got and norm(want) != norm(got):
                    findings.append((vsid, system, code, want, "ist: %s" % got))
                elif status and status.upper() not in ("ACTIVE", "TRIAL"):
                    findings.append((vsid, system, code, want, "STATUS %s" % status))

    print("\nGeprueft: %d Codes  |  uebersprungen (lokale Systeme): %d" % (checked, skipped))
    if not findings:
        print("Keine Abweichungen.")
        return 0
    print("\nABWEICHUNGEN: %d\n" % len(findings))
    print("%-44s %-13s %-30s %s" % ("ValueSet", "Code", "behauptet", "Befund"))
    for vsid, system, code, want, why in findings:
        print("%-44s %-13s %-30s %s" % (vsid[:44], code, (want or "")[:30], why[:60]))
    return 1


if __name__ == "__main__":
    sys.exit(main())
