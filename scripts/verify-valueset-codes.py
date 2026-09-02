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
import sys
import time
import urllib.parse
import urllib.request

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
LOCAL_PREFIX = "https://www.medizininformatik-initiative.de/"


def lookup(tx, system, code, attempts=3):
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
            with urllib.request.urlopen(req, timeout=30) as r:
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
        except Exception as e:  # Transport, nicht Terminologie
            last = e
            time.sleep(1 + i)
    print("    ! %s#%s nicht pruefbar (%s)" % (system, code, last), file=sys.stderr)
    return None, None, None


def norm(s):
    return " ".join((s or "").split()).lower()


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--tx", default="https://tx.fhir.org/r4")
    args = ap.parse_args()

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
                got, status, missing = lookup(args.tx, system, code)
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
