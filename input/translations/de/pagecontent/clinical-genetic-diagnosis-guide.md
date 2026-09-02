<!-- DE-Uebersetzungsseite; Quelle(n): clinical-genetic-diagnosis-guide.md — Migration 2026-08-28, page-map.tsv -->
# Leitfaden: Klinische vs. Genetische Diagnose bei Seltenen Erkrankungen

## Übersicht

In der Modellierung seltener Erkrankungen unterscheiden wir zwischen zwei Arten der Diagnosestellung:

1. **Klinische Diagnose** (`MII_PR_SE_ClinicalDiagnosis`) - Basierend auf phänotypischen Merkmalen
2. **Genetische Diagnose** (`MII_PR_SE_GeneticDiagnosis`) - Molekulargenetisch bestätigt

Diese Unterscheidung ist wichtig, da viele seltene Erkrankungen zunächst klinisch vermutet und später genetisch bestätigt werden.

## Klinische Diagnose

### Verwendung
Die klinische Diagnose wird verwendet, wenn:
- Die Diagnose auf klinischen Befunden und Symptomen basiert
- Eine genetische Testung noch aussteht oder nicht verfügbar ist
- Die Diagnose phänotypisch gestellt wird (z.B. bei charakteristischen Syndromen)

### Besonderheiten
- **HPO-Codes**: Zusätzlicher Slice für Human Phenotype Ontology Codes
- **Phänotypische Evidenz**: Evidence.detail verweist auf HPO-kodierte Symptom-Observations
- **Verifikationsstatus**: Typischerweise "provisional" oder "differential"
- **Kategorie**: Optional spezifische Kategorisierung (z.B. "Syndrome", "Rare disease")

### Beispiel FSH
![Klinische gegen genetische Diagnose — struktureller Vergleich](diagnose-klinisch-vs-genetisch.svg)

Die ausformulierten Instanzen stehen als Beispiele bei den Profilen selbst; hier geht es um den Unterschied, nicht um die Syntax.

## Genetische Diagnose

### Verwendung
Die genetische Diagnose wird verwendet, wenn:
- Die Diagnose durch molekulargenetische Untersuchung bestätigt wurde
- Pathogene Varianten identifiziert wurden
- Eine eindeutige genetische Ursache nachgewiesen ist

### Besonderheiten
- **OMIM-Codes**: Zusätzlicher Slice für Online Mendelian Inheritance in Man Codes
- **MolGen-Evidenz**: Evidence.detail MUSS auf MolGen-Ressourcen verweisen:
  - `MII_PR_MolGen_Variante` für einzelne Varianten
  - `MII_PR_MolGen_DiagnostischeImplikation` für umfassende genetische Berichte
- **Verifikationsstatus**: Typischerweise "confirmed"
- **Genetische Zusatzinformationen**: Penetranz, genetische Basis
- **Kategorie**: PFLICHT: `782964007 | Genetic disease |` zur eindeutigen Kennzeichnung

### Beispiel FSH

## Paralleles Diagnosemodell

Bei seltenen Erkrankungen existieren klinische und genetische Diagnosen **parallel** zueinander:

### 1. Verdachtsdiagnose (Screening/Initial)
![Paralleles Diagnosemodell](diagnose-parallelmodell.svg)

### 2. Klinische Diagnose

### 3. Genetische Diagnose (parallel zur klinischen)

**Wichtig:** Die genetische Diagnose ersetzt NICHT die klinische Diagnose. Beide existieren parallel und ergänzen sich gegenseitig.

## Entscheidungsbaum

![Entscheidungsbaum: welches Diagnoseprofil wann](diagnose-entscheidungsbaum.svg)

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

### Pflichtfelder Klinische Diagnose
- [ ] Mindestens ein HPO-Code im code.coding Slice
- [ ] Evidence.detail mit Verweis auf phänotypische Observations
- [ ] Angemessener verificationStatus

### Pflichtfelder Genetische Diagnose
- [ ] OMIM-Code wenn verfügbar
- [ ] Mindestens eine evidence.detail zu MolGen-Ressource
- [ ] verificationStatus = confirmed (bei bestätigter Diagnose)
- [ ] evidence.code mit "Genetic finding"

## Ausgeschlossene Diagnosen

### Wichtiger Hinweis
**Ausgeschlossene Diagnosen (refuted) MÜSSEN ebenfalls dokumentiert werden!**

Bei seltenen Erkrankungen ist die Dokumentation ausgeschlossener Diagnosen essentiell für:
- Vermeidung redundanter Diagnostik
- Dokumentation des diagnostischen Prozesses
- Unterstützung bei Differentialdiagnosen
- Forschung und Registerdaten

### Modellierung ausgeschlossener Diagnosen

#### Klinisch ausgeschlossen

#### Genetisch ausgeschlossen

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
