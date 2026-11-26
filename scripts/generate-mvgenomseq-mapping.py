#!/usr/bin/env python3
"""Erzeugt die Mapping-Tabellen der Seite mapping-mvgenomseq.md (en + de).

Quelle sind die von SUSHI erzeugten Ressourcen, nicht die FSH-Dateien:
  fsh-generated/resources/StructureDefinition-mii-lm-seltene-mvgenomseq.json
  fsh-generated/resources/ConceptMap-mii-cm-seltene-to-mvgenomseq.json

Geschrieben werden zwei GENERATED-Blöcke je Sprachdatei:
  mvgs-mapping   je KDK-Feld: Pflicht, Quelle im Modul, Beziehung, Hinweis
  mvgs-gaps      KDK-Felder ohne Quelle in diesem Modul, mit Einordnung

Die Einordnung der Lücken (LUECKEN unten) ist kuratiert und gehört hierher,
nicht in die ConceptMap: eine ConceptMap in Richtung MII -> KDK kann Felder,
die keine Quelle haben, nicht ausdrücken. Ein KDK-Feld ohne Quelle und ohne
Eintrag in LUECKEN erscheint als "noch nicht bewertet" — das ist der Hinweis,
dass nach einem Schema-Update hier nachzuarbeiten ist.

Aufruf (nach SUSHI):  python3 scripts/generate-mvgenomseq-mapping.py [--check]
"""
import json, pathlib, re, sys

ROOT = pathlib.Path(__file__).resolve().parent.parent
RES = ROOT / "fsh-generated/resources"
LM = RES / "StructureDefinition-mii-lm-seltene-mvgenomseq.json"
CM = RES / "ConceptMap-mii-cm-seltene-to-mvgenomseq.json"
PAGES = {
    ROOT / "input/pagecontent/mapping-mvgenomseq.md": "en",
    ROOT / "input/translations/de/pagecontent/mapping-mvgenomseq.md": "de",
}

# Einordnung der KDK-Felder ohne Quelle: (Kategorie, Text de, Text en)
#   modul  = gehört in ein anderes MII-Modul
#   luecke = kein Datenelement im MII-KDS; Ticket nennt den Vorschlag
#   pruefen = Zuordnung fachlich offen, Entscheidung des Modulteams nötig
LUECKEN = {
    "case.diagnosisRd.diagnosisGmfcs": ("luecke", "Kein Profil. GMFCS ist keine ICF-Kategorie; Vorschlag eines Observation-Profils in HDB-975.", "No profile. GMFCS is not an ICF category; an Observation profile is proposed in HDB-975."),
    "followUp.followUpRds.gmfcs": ("luecke", "Wie diagnosisGmfcs (HDB-975).", "As diagnosisGmfcs (HDB-975)."),
    "case.priorRds.hospitalizationPeriods": ("luecke", "Gebänderter Zählwert über fünf Jahre, aus Fällen nicht ableitbar (HDB-975).", "Banded count over five years, not derivable from encounters (HDB-975)."),
    "case.priorRds.hospitalizationDuration": ("luecke", "Gebänderte Dauer, aus Fällen nicht ableitbar (HDB-975).", "Banded duration, not derivable from encounters (HDB-975)."),
    "case.priorRds.genomicTestType": ("modul", "Modul Molekulargenetischer Befundbericht: Art der Untersuchung in mii-pr-molgen-genomic-study (Procedure.code) bzw. Analysemethode in mii-pr-molgen-genomic-study-analysis. Für die KDK-Werteliste gibt es dort kein ValueSet.", "Molecular Genetics module: type of test in mii-pr-molgen-genomic-study (Procedure.code) or method in mii-pr-molgen-genomic-study-analysis. No value set for the KDK list there."),
    "case.priorRds.genomicStudyType": ("modul", "Modul Molekulargenetischer Befundbericht: single/duo/trio ergibt sich aus den untersuchten Personen der mii-pr-molgen-genomic-study.", "Molecular Genetics module: single/duo/trio follows from the persons tested in mii-pr-molgen-genomic-study."),
    "case.priorRds.diagnosticDate": ("modul", "Modul Molekulargenetischer Befundbericht: mii-pr-molgen-genomic-study, Procedure.performed[x].", "Molecular Genetics module: mii-pr-molgen-genomic-study, Procedure.performed[x]."),
    "case.priorRds.diagnosticResult": ("modul", "Modul Molekulargenetischer Befundbericht: Ergebnis im Befundbericht (mii-pr-molgen-molekulargenetischer-befundbericht); die KDK-Ergebniskategorien haben dort kein ValueSet.", "Molecular Genetics module: result in mii-pr-molgen-molekulargenetischer-befundbericht; no value set for the KDK result categories there."),
    "case.priorRds.zseContactDate": ("luecke", "Erstkontakt mit einem Zentrum für Seltene Erkrankungen. Aus Kontakten (Modul Basis, Fall) nur ableitbar, wenn das ZSE als Einrichtung kenntlich ist.", "First contact with a centre for rare diseases. Derivable from encounters (Base module) only if the centre is identifiable."),
    "case.diagnosisRd.diagnosticExtent": ("modul", "Modul Molekulargenetischer Befundbericht: angeforderter Umfang in mii-pr-molgen-anforderung-genetischer-test.", "Molecular Genetics module: requested extent in mii-pr-molgen-anforderung-genetischer-test."),
    "case.diagnosisRd.libraryType": ("modul", "Modul Molekulargenetischer Befundbericht: Art der Sequenzierung in mii-pr-molgen-anforderung-genetischer-test bzw. mii-pr-molgen-genomic-study-analysis.", "Molecular Genetics module: sequencing type in mii-pr-molgen-anforderung-genetischer-test or mii-pr-molgen-genomic-study-analysis."),
    "case.diagnosisRd.molecularBoardDecisionDate": ("modul", "Modul Molekulargenetischer Befundbericht: Die Fallkonferenz zur Diagnostik mündet in die Anforderung des genetischen Tests (mii-pr-molgen-anforderung-genetischer-test). Nicht Gegenstand dieses Moduls; der Therapieplan trägt nur die Fallkonferenz zur Therapie.", "Molecular Genetics module: the diagnostic case conference results in the genetic test request (mii-pr-molgen-anforderung-genetischer-test). Out of scope for this module; the care plan carries only the therapy conference."),
    "plan.carePlanRd.clinicalManagementDescriptions": ("luecke", "Die Versorgungsform (Spezialambulanz, Hochschulambulanz, ZSE vor Ort oder anderes ZSE, Hausarzt, Facharzt) hat weder ein SNOMED-Gegenstück noch ein ValueSet. Vorschlag: modul-eigenes CodeSystem, gebunden an ServiceRequest.performerType der nicht-medikamentösen Therapieempfehlung.", "The care setting (specialised outpatient clinic, university clinic, local or other rare disease centre, GP, specialist) has neither a SNOMED counterpart nor a value set. Proposal: a module code system bound to ServiceRequest.performerType of the non-medication recommendation."),
    "plan.recommendedStudies.variants": ("modul", "Bezug auf Varianten: Modul Molekulargenetischer Befundbericht.", "Reference to variants: Molecular Genetics module."),
    "plan.recommendedTherapies.variants": ("modul", "Bezug auf Varianten: Modul Molekulargenetischer Befundbericht.", "Reference to variants: Molecular Genetics module."),
    "followUp.followUpRds.vitalStatus": ("modul", "Modul Person: Patient.deceased[x].", "Person module: Patient.deceased[x]."),
    "followUp.followUpRds.deathDate": ("modul", "Modul Person: Patient.deceasedDateTime, auf JJJJ-MM gekürzt.", "Person module: Patient.deceasedDateTime, truncated to YYYY-MM."),
}

TXT = {
    "de": {
        "beziehung": {"equivalent": "gleichwertig", "equal": "gleich", "wider": "KDK gröber", "narrower": "KDK feiner",
                      "inexact": "ungefähr", "relatedto": "abgeleitet", "unmatched": "ohne Entsprechung"},
        "kat": {"modul": "anderes Modul", "luecke": "Lücke", "pruefen": "zu prüfen", None: "noch nicht bewertet"},
        "kopf1": "| KDK-Feld | Pflicht | Quelle im Modul | Beziehung | Hinweis |",
        "kopf2": "| KDK-Feld | Pflicht | Einordnung | Begründung |",
        "ja": "ja", "nein": "",
        "summe": "**Abdeckung:** {m} von {n} KDK-Feldern haben eine Quelle in diesem Modul, darunter {p} der {pn} Pflichtfelder (Pflicht, sobald der Abschnitt gemeldet wird). "
                 "Die übrigen: {mod} in anderen Modulen, {lue} Lücken im MII-KDS, {pru} fachlich offen{nb}.",
        "nb": ", {x} noch nicht bewertet",
    },
    "en": {
        "beziehung": {"equivalent": "equivalent", "equal": "equal", "wider": "KDK coarser", "narrower": "KDK finer",
                      "inexact": "approximate", "relatedto": "derived", "unmatched": "no match"},
        "kat": {"modul": "other module", "luecke": "gap", "pruefen": "to be decided", None: "not yet assessed"},
        "kopf1": "| KDK field | Required | Source in this module | Relationship | Note (German) |",
        "kopf2": "| KDK field | Required | Category | Reason |",
        "ja": "yes", "nein": "",
        "summe": "**Coverage:** {m} of {n} KDK fields have a source in this module, including {p} of the {pn} required ones (required once the section is submitted). "
                 "The rest: {mod} in other modules, {lue} gaps in the MII core data set, {pru} open{nb}.",
        "nb": ", {x} not yet assessed",
    },
}


def lm_felder():
    lm = json.load(open(LM))
    felder = []
    for e in lm["differential"]["element"]:
        if "." not in e["path"]:
            continue
        pfad = e["path"].split(".", 1)[1]
        felder.append((pfad, e.get("min", 0) >= 1))
    pfade = [p for p, _ in felder]
    blaetter = [(p, r) for p, r in felder if not any(q.startswith(p + ".") for q in pfade)]
    # Pflicht = Pflicht, sobald der Abschnitt (case, plan, followUp) gemeldet
    # wird: alle Ebenen unterhalb des Abschnitts sind 1..x.
    pflicht = dict(felder)
    def eff(p):
        teile = p.split(".")
        return all(pflicht.get(".".join(teile[:i + 1]), False) for i in range(1, len(teile)))
    return [(p, eff(p)) for p, _ in blaetter]


def zuordnungen():
    cm = json.load(open(CM))
    z = {}
    for g in cm["group"]:
        prof = g["source"].rsplit("/", 1)[1]
        for el in g["element"]:
            for t in el["target"]:
                z.setdefault(t["code"], []).append((prof, el["code"], t["equivalence"], t.get("comment", "")))
    return z


def zelle(s):
    return s.replace("|", "\\|").replace("\n", " ")


def render(lang):
    T = TXT[lang]
    felder, z = lm_felder(), zuordnungen()
    zeilen1 = [T["kopf1"], "|---|---|---|---|---|"]
    zeilen2 = [T["kopf2"], "|---|---|---|---|"]
    zaehl = {"modul": 0, "luecke": 0, "pruefen": 0, None: 0}
    m = p = pn = 0
    for pfad, req in felder:
        pn += req
        if pfad in z:
            m += 1; p += req
            for i, (prof, el, eq, kom) in enumerate(z[pfad]):
                zeilen1.append(f"| {'`'+pfad+'`' if i == 0 else ''} | {T['ja'] if req and i == 0 else ''} | "
                               f"[{prof.replace('mii-pr-seltene-', '')}](StructureDefinition-{prof}.html) · `{zelle(el)}` | "
                               f"{T['beziehung'].get(eq, eq)} | {zelle(kom)} |")
        else:
            kat, de, en = LUECKEN.get(pfad, (None, "", ""))
            zaehl[kat] += 1
            zeilen2.append(f"| `{pfad}` | {T['ja'] if req else ''} | {T['kat'][kat]} | {zelle(de if lang == 'de' else en)} |")
    nb = T["nb"].format(x=zaehl[None]) if zaehl[None] else ""
    summe = T["summe"].format(m=m, n=len(felder), p=p, pn=pn, mod=zaehl["modul"], lue=zaehl["luecke"],
                              pru=zaehl["pruefen"], nb=nb)
    return summe + "\n\n" + "\n".join(zeilen1), "\n".join(zeilen2)


def ersetze(text, name, inhalt):
    b, e = f"<!-- BEGIN GENERATED: {name} (scripts/generate-mvgenomseq-mapping.py) -->", f"<!-- END GENERATED: {name} -->"
    if b not in text:
        raise SystemExit(f"Marker fehlt: {b}")
    return re.sub(re.escape(b) + r".*?" + re.escape(e), lambda _: f"{b}\n{inhalt}\n{e}", text, flags=re.S)


def main():
    check = "--check" in sys.argv
    drift = False
    for pfad, lang in PAGES.items():
        alt = pfad.read_text()
        tab, luecken = render(lang)
        neu = ersetze(ersetze(alt, "mvgs-mapping", tab), "mvgs-gaps", luecken)
        if neu != alt:
            drift = True
            if not check:
                pfad.write_text(neu)
                print(f"geschrieben: {pfad.relative_to(ROOT)}")
    if check and drift:
        raise SystemExit("Mapping-Seite weicht von LM/ConceptMap ab: scripts/generate-mvgenomseq-mapping.py ausführen.")


if __name__ == "__main__":
    main()
