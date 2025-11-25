## {{page-title}}
Auf dieser Seite werden die Unterschiede zwischen den Versionen nachgehalten, beginnend mit den Unterschieden zwischen der Ballotierungs- und der finalen Version 2026.

---

## Änderungen finale Version v2026.0.0 (noch nicht veröffentlicht)

### Validierung und Qualitätsverbesserungen

- `fix` SNOMED CT-basiertes ValueSet für "Von SE betroffen" erstellt mit Codes 373066001 "Yes", 373067005 "No", 261665006 "Unknown". HL7 v2 Codes für Rückwärtskompatibilität beibehalten.
- `fix` Kombiniertes Symptom Change Status ValueSet erstellt: MVGenomSeq Codes (newly-added, improved, degraded, no-longer-observed, unchanged) mit SNOMED CT Mapping (385425000 Improved, 231877006 Worse, 385630006 Maintained, 2667000 Absent)
- `fix` FamilyMemberHistory Beispiele korrigiert: ICD-10-GM Version 2004→2009, Display-Namen (Natural Mother→Natural mother), ungültiger Code E11.X→E11.9
- `fix` Ungültiger LOINC Code 79992-2 durch 78176-5 "Aorta root Diameter by US 2D" ersetzt
- `fix` Ungültigen SNOMED Code 249374003 "Anteverted nares" aus HPO Observation Beispiel entfernt (HPO Code HP:0000463 beibehalten)
- `fix` Patient Identifier von `http://example.org` auf `http://test-krankenhaus.de/fhir/sid/patienten` geändert 