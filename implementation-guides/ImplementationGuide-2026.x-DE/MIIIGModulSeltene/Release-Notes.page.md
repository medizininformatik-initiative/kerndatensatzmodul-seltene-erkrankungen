## {{page-title}}
Auf dieser Seite werden die Unterschiede zwischen den Versionen nachgehalten, beginnend mit den Unterschieden zwischen der Ballotierungs- und der finalen Version 2026.

---

## Änderungen Version v2026.0.0-rc.1 (Release Candidate 1)

### Neue Funktionen

- `feat` MetaProfile RuleSet für alle Beispiel-Instanzen mit versionierter Profil-URL hinzugefügt
- `feat` Therapietyp-Kategorie (kausal/symptomatisch) für Therapieempfehlungen hinzugefügt

### Dokumentationsverbesserungen

- `docs` HPO-Phänotypisierung Dokumentation aktualisiert entsprechend HL7 Phenomics IG Pattern (HDB-755, HDB-737)
- `docs` Klarstellung: Eine FamilyMemberHistory-Ressource pro Familienmitglied (HDB-750)
- `docs` Seltene Erkrankungen Definitionen im Modulbeschreibung aktualisiert (HDB-757)
- `docs` Orpha-Kodierung → ORPHAcode-Kodierung Terminologie korrigiert (HDB-764)
- `docs` HPO vs Symptom Unterscheidung mit Marfan-Beispiel dokumentiert (HDB-738)
- `docs` Dokumentationsklarstellungen (HDB-741, HDB-739)

### Fehlerbehebungen

- `fix` Inkorrekte oBDS-Mappings aus Therapieplan-Seite entfernt (HDB-751)
- `fix` Inkorrekte oBDS-Mappings aus Messbefunde-Profilen entfernt (HDB-751)
- `fix` Tod-durch-SE Extension durch Standard contributedToDeath Element ersetzt
- `fix` Körpermaße-Profile hinzugefügt und Validierungsfehler behoben
- `fix` 21 SUSHI-Kompilierungsfehler behoben und HPO-Profil-Design verbessert
- `fix` 21 Validierungsfehler mit Terminologie- und Beispielkorrekturen behoben
- `fix` HPO Assessment-Profil nach HL7 Phenomics IG Pattern refaktoriert

### Validierung und Qualitätsverbesserungen (aus Ballot-Feedback)

- `fix` SNOMED CT-basiertes ValueSet für "Von SE betroffen" erstellt mit Codes 373066001 "Yes", 373067005 "No", 261665006 "Unknown". HL7 v2 Codes für Rückwärtskompatibilität beibehalten.
- `fix` Kombiniertes Symptom Change Status ValueSet erstellt: MVGenomSeq Codes (newly-added, improved, degraded, no-longer-observed, unchanged) mit SNOMED CT Mapping (385425000 Improved, 231877006 Worse, 385630006 Maintained, 2667000 Absent)
- `fix` FamilyMemberHistory Beispiele korrigiert: ICD-10-GM Version 2004→2009, Display-Namen (Natural Mother→Natural mother), ungültiger Code E11.X→E11.9
- `fix` Ungültiger LOINC Code 79992-2 durch 78176-5 "Aorta root Diameter by US 2D" ersetzt
- `fix` Ungültigen SNOMED Code 249374003 "Anteverted nares" aus HPO Observation Beispiel entfernt (HPO Code HP:0000463 beibehalten)
- `fix` Patient Identifier von `http://example.org` auf `http://test-krankenhaus.de/fhir/sid/patienten` geändert 