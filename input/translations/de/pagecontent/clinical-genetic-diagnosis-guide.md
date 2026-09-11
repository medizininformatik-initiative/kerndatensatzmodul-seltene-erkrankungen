<!-- DE-Uebersetzungsseite; Quelle(n): clinical-genetic-diagnosis-guide.md — Migration 2026-08-28, page-map.tsv -->
# Leitfaden: Klinische vs. Genetische Diagnose bei Seltenen Erkrankungen

## Übersicht

In der Modellierung seltener Erkrankungen unterscheiden wir zwischen zwei Arten der Diagnosestellung:

1. **Klinische Diagnose** (`MII_PR_Seltene_ClinicalDiagnosis`) - Basierend auf phänotypischen Merkmalen
2. **Genetische Diagnose** (`MII_PR_Seltene_GeneticDiagnosis`) - Molekulargenetisch bestätigt

Diese Unterscheidung ist wichtig, da viele seltene Erkrankungen zunächst klinisch vermutet und später genetisch bestätigt werden.

## Klinische Diagnose

### Verwendung
Die klinische Diagnose wird verwendet, wenn:
- Die Diagnose auf klinischen Befunden und Symptomen basiert
- Eine genetische Testung noch aussteht oder nicht verfügbar ist
- Die Diagnose phänotypisch gestellt wird (z.B. bei charakteristischen Syndromen)

### Besonderheiten
- **HPO-Codes**: Zusätzlicher Slice `code.coding[hpo]` (0..*), required gebunden an
  das ValueSet der HPO-Phänotypcodes
- **Phänotypische Evidenz**: Evidence.detail verweist auf HPO-kodierte Symptom-Observations
- **Verifikationsstatus**: Vom Profil **nicht** eingeschränkt (0..1, geerbte required-
  Bindung an `condition-ver-status`); empfohlen "provisional" oder "differential",
  solange die genetische Bestätigung aussteht
- **Kategorie**: `category` ist Pflicht (1..*), der Wert bleibt frei — üblich sind
  `problem-list-item` oder `encounter-diagnosis`. Warum die genetische Diagnose das
  anders handhabt, steht weiter unten unter *Warum die Kategorie sich unterscheidet*.

### Strukturvergleich

![Klinische gegen genetische Diagnose — struktureller Vergleich](diagnose-klinisch-vs-genetisch-de.svg)

Die ausformulierten Instanzen stehen als Beispiele bei den Profilen selbst; hier geht es um den Unterschied, nicht um die Syntax.

## Genetische Diagnose

### Verwendung
Die genetische Diagnose wird verwendet, wenn:
- Die Diagnose durch molekulargenetische Untersuchung bestätigt wurde
- Pathogene Varianten identifiziert wurden
- Eine eindeutige genetische Ursache nachgewiesen ist

### Besonderheiten
- **OMIM-Codes**: Zusätzlicher Slice für Online Mendelian Inheritance in Man Codes
- **Genetische Evidenz**: `evidence` ist Pflicht (1..*), `evidence.detail` (1..*) verweist
  auf Observation oder DiagnosticReport. Das Profil schreibt die Zielprofile nicht vor;
  empfohlen sind die MolGen-Ressourcen:
  - `MII_PR_MolGen_Variante` für einzelne Varianten
  - `MII_PR_MolGen_DiagnostischeImplikation` für umfassende genetische Berichte
- **Genetische Evidenz-Kennzeichnung**: `evidence.code.coding[geneticEvidence]` trägt
  `106221001 | Genetic finding |`
- **Verifikationsstatus**: Vom Profil **nicht** eingeschränkt; empfohlen "confirmed"
- **Genetische Zusatzinformation**: Extension `penetrance`
- **Kategorie**: PFLICHT: `782964007 | Genetic disease |` zur eindeutigen Kennzeichnung

### Warum die Kategorie sich unterscheidet

Die beiden Profile behandeln `category` ungleich, und das ist erklärungsbedürftig:

| | `category` |
|---|---|
| Klinische Diagnose | Pflicht, Wert frei |
| Genetische Diagnose | Pflicht, fester Wert `782964007 \| Genetic disease \|` |

`Condition.category` beantwortet in FHIR die Frage nach der **Rolle der Condition im
Datensatz** — der Kurztext des Elements lautet wörtlich `problem-list-item |
encounter-diagnosis`. Die Art der Erkrankung gehört dagegen in `Condition.code`.

Die klinische Diagnose folgt dem: Sie verlangt eine Kategorie, schreibt aber keinen Wert
vor. Die genetische Diagnose setzt zusätzlich einen festen Code — **bewusst**, und zwar
aus zwei Gründen.

**Es ist zulässig.** `Condition.category` ist `0..*` und **extensible** an
`condition-category` gebunden. Eine extensible Bindung erlaubt ausdrücklich Codes
außerhalb des ValueSets, wenn keiner der enthaltenen passt; die FHIR-Spezifikation merkt
am Element selbst an, die Kategorisierung sei „often highly contextual".

**Es ist nötig.** Ob eine Erkrankung genetisch gesichert ist, steht nicht in
`Condition.code` — dort steht die Erkrankung selbst — und lässt sich daraus auch nicht
herleiten, weil dieselbe Erkrankung klinisch oder genetisch gesichert sein kann. Genau
diese Unterscheidung trägt das Modul in zwei getrennten Profilen; `category` macht sie
für eine registerübergreifende Suche auswertbar.

Abzugrenzen vom zurückgezogenen ValueSet `mii-vs-seltene-clinical-diagnosis-category`:
Das band `category` modulweit an Krankheitsarten *anstelle* der Rolle und beantwortete
damit die falsche Frage. Hier geht es um ein einzelnes, begründetes Zusatzmerkmal.

> **Offener Punkt für die Ballotierung.** `patternCodeableConcept` auf einem
> wiederholbaren Element verlangt, dass *jede* Wiederholung dem Muster entspricht. Eine
> zweite Kategorie — etwa `encounter-diagnosis` für die Rolle im Datensatz — ist damit
> derzeit unzulässig, und alle Beispiele führen folgerichtig nur diesen einen Wert.
> Sauberer wäre ein offener Slice, der `782964007` verlangt und weitere Kategorien
> zulässt. Das ändert die publizierte Constraint-Form und steht deshalb zur Kommentierung.
{: .ig-highlight .ig-highlight-blue}

## Paralleles Diagnosemodell

Bei seltenen Erkrankungen existieren klinische und genetische Diagnosen **parallel** zueinander:

![Paralleles Diagnosemodell](diagnose-parallelmodell-de.svg)

Das Diagramm zeigt die drei Stufen: Verdachtsdiagnose aus Screening oder Erstkontakt,
klinische Diagnose nach phänotypischer Abklärung, genetische Diagnose nach
molekulargenetischer Bestätigung.

**Wichtig:** Die genetische Diagnose ersetzt NICHT die klinische Diagnose. Beide existieren parallel und ergänzen sich gegenseitig.

## Entscheidungsbaum

![Entscheidungsbaum: welches Diagnoseprofil wann](diagnose-entscheidungsbaum-de.svg)

## Praktische Hinweise

### Wann welches Profil verwenden?

| Situation | Profil | Verifikationsstatus |
|-----------|--------|-------------------|
| Neugeborenenscreening positiv | ClinicalDiagnosis | unconfirmed |
| Klinisch eindeutiges Syndrom | ClinicalDiagnosis | provisional |
| Genetisch bestätigt | GeneticDiagnosis | confirmed |
| Klinisch + genetisch bestätigt | **Beide Profile parallel** | confirmed |
| **Ausgeschlossene Diagnose** | Entsprechendes Profil | **refuted** |
| Differentialdiagnose | ClinicalDiagnosis | differential |

### Verlinkung zwischen Diagnosen mittels ClinicalImpression

Die **ClinicalImpression** verbindet die verschiedenen Diagnosestadien:

1. **problem**: Verweis auf die Verdachtsdiagnose (Grund der Untersuchung)
2. **finding**: Verweise auf die bestätigten Diagnosen (klinisch UND genetisch)
3. **investigation**: Verweise auf durchgeführte Untersuchungen

Beide Diagnosen bleiben als eigenständige Ressourcen erhalten und dokumentieren verschiedene Aspekte derselben Erkrankung.

### Evidence-Verlinkung

**Klinische Diagnose:**
- Evidence → Observation mit HPO-kodierten Symptomen
- Evidence → DiagnosticReport mit klinischen Befunden
- Evidence → ClinicalImpression mit klinischer Beurteilung

**Genetische Diagnose:**
- Evidence → MolGen Variante (Observation)
- Evidence → MolGen DiagnostischeImplikation (DiagnosticReport)
- Evidence → MolGen Untersuchte Region (Observation)

## Validierung

### Checkliste Klinische Diagnose
- [ ] `category` gesetzt — **Pflicht** (1..*)
- [ ] HPO-Code in `code.coding[hpo]`, sofern der Phänotyp bekannt ist (das Profil
      erzwingt ihn nicht, für seltene Erkrankungen ist er aber der eigentliche Gehalt)
- [ ] `evidence.detail` mit Verweis auf phänotypische Observations
- [ ] Angemessener `verificationStatus`

### Checkliste Genetische Diagnose
- [ ] `category` = `782964007 | Genetic disease |` — **Pflicht**, fester Wert
- [ ] Mindestens eine `evidence` mit `evidence.detail` — **Pflicht** (1..*)
- [ ] OMIM-Code, wenn verfügbar
- [ ] `evidence.code.coding[geneticEvidence]` = `106221001 | Genetic finding |`
- [ ] `verificationStatus = confirmed` bei bestätigter Diagnose

## Ausgeschlossene Diagnosen

### Wichtiger Hinweis
**Ausgeschlossene Diagnosen (refuted) MÜSSEN ebenfalls dokumentiert werden!**

Bei seltenen Erkrankungen ist die Dokumentation ausgeschlossener Diagnosen essentiell für:
- Vermeidung redundanter Diagnostik
- Dokumentation des diagnostischen Prozesses
- Unterstützung bei Differentialdiagnosen
- Forschung und Registerdaten

### Modellierung ausgeschlossener Diagnosen

Ausgeschlossene Diagnosen nutzen dasselbe Profil wie bestätigte; unterschieden wird
allein über den Status:

| Feld | Klinisch ausgeschlossen | Genetisch ausgeschlossen |
|---|---|---|
| Profil | `MII_PR_Seltene_ClinicalDiagnosis` | `MII_PR_Seltene_GeneticDiagnosis` |
| `verificationStatus` | `refuted` | `refuted` |
| `clinicalStatus` | `inactive` | `inactive` |
| Begründung | `note.text` | `note.text` |
| Evidenz | negativer phänotypischer Befund | negativer molekulargenetischer Befund |

### Best Practices für ausgeschlossene Diagnosen

1. **Immer dokumentieren wenn:**
   - Eine Verdachtsdiagnose widerlegt wurde
   - Genetische Tests negativ sind
   - Differentialdiagnosen ausgeschlossen werden

2. **Pflichtangaben:**
   - `verificationStatus = refuted`
   - `clinicalStatus = inactive`
   - Begründung in `note.text`
   - Evidence wenn vorhanden

3. **Zeitliche Dokumentation:**
   - `recordedDate`: Wann wurde ausgeschlossen
   - `abatementDateTime`: Zeitpunkt des Ausschlusses

## Beispiele

Vollständige Beispiele finden sich in:
- [SMA-Fallbeispiel](sma-example-annotations.html) - Diagnose-Verlauf von Screening bis genetischer Bestätigung
- [Marfan-Fallbeispiel](marfan-example-annotations.html) - Klinische Diagnose mit phänotypischen Merkmalen
