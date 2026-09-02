<!-- DE-Uebersetzungsseite; Quelle(n): release-notes.md — Migration 2026-08-28, page-map.tsv -->
Auf dieser Seite werden die Unterschiede zwischen den Versionen nachgehalten, beginnend mit den Unterschieden zwischen der Ballotierungs- und der finalen Version 2026.

---

## Version 2027.0.0-ballot

### Breaking Changes

- `remove` Extension `mii-ex-seltene-empfehlung-evidenzgraduierung` aus diesem Modul entfernt, samt ihrer Verwendung in den drei Therapieempfehlungs-Profilen. Sie war eine Kopie der Extension aus dem MTB-Modul und von Anfang an unfertig: ihr `system`-Discriminator trug nie einen Wert, wodurch der Pflicht-Slice `Evidenzgrad 1..1` von keiner Instanz erfüllbar war — die Extension wurde in 2026.0.1 publiziert, war aber unbenutzbar, und kein Beispiel hat sie je verwendet. Welche Evidenzskala hier gilt, wird im Ballot-Ticket HDB-543 verhandelt und ist onkologisch geprägt (NCT m1A–m4, ESMO, ASCO); für seltene Erkrankungen wurde die Frage nie beantwortet. Statt eine Tumorskala zu importieren, bleibt das Thema beim MTB-Modul. Die Entfernung dürfte daher keine konforme Implementierung betreffen

### Fehlerbehebungen

- `fix` ValueSet `mii-vs-seltene-penetrance` korrigiert — drei von vier Codes waren falsch (Issue #31). `HP:0025169`, publiziert als „Complete penetrance", ist tatsächlich *Left ventricular systolic dysfunction* und wird durch `HP:0034950` ersetzt. `HP:0003828`, publiziert als „Variable penetrance", ist *Variable expressivity* — ein anderes Konzept — und entfällt; die Abstufung leisten nun `HP:4000158/59/60` (hoch/mittel/niedrig). `HP:0003829` trug ein veraltetes Display. Alle Codes gegen die HPO-API geprüft. Zu beachten: die abgestuften Terme sind Untertypen der *unvollständigen* Penetranz, nicht Alternativen zur vollständigen
- `fix` Slicing-Discriminator auf `mii-pr-seltene-blutgruppe` `value[x].coding` von `#pattern`/`$this` auf `#value`/`system` umgestellt (Issue #25). Die Slices unterscheiden sich nur durch ihr Codesystem und setzen dafür `.system` — das erzeugt ein `patternUri` auf dem Kindelement statt eines `patternCoding` auf dem Coding selbst, sodass der Discriminator ins Leere zeigte
- `fix` derselbe Defekt bei `category` in `mii-pr-seltene-therapieempfehlung` und `mii-pr-seltene-therapieempfehlung-nicht-medikamentoes` behoben (durch eine Prüfung gefunden, vorher nicht gemeldet). Beide Slices wurden ausschließlich über ein required-Binding auf verschiedene ValueSets unterschieden, was kein FHIR-R4-Discriminator auswerten kann; `coding.system` ist nun je Slice festgelegt

### Breaking Changes (Fortsetzung)

- `change` Elementnamen des Logical Models `mii-lm-seltene` auf lowerCamelCase umgestellt. Das Modell verwendete durchgehend PascalCase (`Seltene.AnamneseUndDiagnostik.Untersuchungsdatum`), was gegen die FHIR-Regel `eld-20` verstößt — jedes Pfadsegment nach dem ersten muss klein beginnen — und nach der Reaktivierung 195 Warnungen erzeugte. 62 Segmentnamen umbenannt, Akronyme korrekt behandelt (`HPOTerm` → `hpoTerm`, `BMI` → `bmi`, `StudienID` → `studienID`), die 90 Mapping-Ziele in 11 Profilen mitgezogen. **Die Elementpfade ändern sich damit**; das ist ein Bruch am Modell, für eine neue Major-Linie bewusst in Kauf genommen
- `change` Beispielinstanz `example` umbenannt in `mii-exa-seltene-patient` und auf `MII_PR_Person_Patient` aus dem Base-Modul profiliert. Ein generisches `example` ist als publizierte Instanz-ID nicht tragfähig und folgte nicht der Konvention `mii-exa-seltene-*`
- `remove` Code von `mii-pr-seltene-taillenumfang` von LOINC `8280-0` auf SNOMED `276361009 |Waist circumference|` geändert, `mii-pr-seltene-hueftumfang` von LOINC `56063-1` auf SNOMED `284472007 |Hip circumference|`. **Abfragen auf die alten Codes greifen nicht mehr**

### Fehlerbehebungen (Fortsetzung)

- `fix` **das Taillenumfang-Profil trug den Code des Bauchumfangs.** LOINC bietet den Taillenumfang ausschließlich auf Nabelhöhe an (`8280-0`, `8281-8`) — das ist die Landmarke des Bauchumfangs, nicht der Taille, die an der schmalsten Stelle beziehungsweise am Mittelpunkt zwischen unterster Rippe und Beckenkamm definiert ist. Das Profil sagte damit etwas anderes, als es hieß. SNOMED trennt beides; verwendet wird nun der generische `276361009`, damit sich das Profil auf keine Messvorschrift festlegt, `1162535003` und `1162536002` bleiben für die landmarkengenaue Angabe verfügbar. Das ist relevant, weil das Modul ein Taille-Hüfte-Verhältnis führt: mit dem Bauchumfang als Zähler ergibt sich ein anderer, größerer Wert und damit ein falsches Verhältnis
- `fix` das Logical Model hat ein Element `taillenumfang` erhalten. Es kannte nur `bauchumfang`, wodurch das Taillenumfang-Profil auf den Bauchumfang mappte — dieselbe Verwechslung eine Ebene tiefer
- `fix` Logical Model `mii-lm-seltene` reaktiviert. Es lag als `disabled/mii-lm-seltene.fsh.disabled` und baut fehlerfrei; sein Canonical ist das Ziel des Mappings, das jedes Profil trägt, womit 22 unauflösbare Links verschwinden
- `fix` 31 Mapping-Ziele zeigten auf nicht existierende Elemente (`Messbefunde.*` für `koerperlicheUntersuchung`, `Patient` für `persoenlicheInfosIndexpatient`), und die Ziele für `valueQuantity.value` und `effectiveDateTime` zeigten auf das BackboneElement statt auf Wert oder Datum. Alle 102 Mapping-Ziele lösen jetzt auf
- `fix` das Logical Model hat `familienanamnese.todDurchSE` und `familienanamnese.dokumentationsdatum` erhalten. Beide Datenpunkte führt das Familienanamnese-Profil, das Modell kannte sie nicht
- `fix` fünf Verweise auf `Patient/example-patient`, eine nie definierte Instanz

### Dokumentation

- `docs` die Datensatzseite rendert das Logical Model jetzt vollständig als Tabelle (71 Datenelemente, beide Sprachbäume), erzeugt aus dem publizierten Snapshot durch `scripts/generate-lm-table.py`

### Governance

- `chore` Lizenz auf IG-Ebene als `CC-BY-4.0` deklariert (Gate-A-Entscheidung). Das Modul deklarierte zuvor weder in `sushi-config.yaml` noch in `package.json` noch als LICENSE-Datei eine Lizenz; auf Artefakt-Ebene war CC-BY-4.0 über `LicenseCodeableCCBY40` bereits in Gebrauch

---

## Version 2026.0.1 (Patch-Release)

### Abhängigkeiten

- `chore` Abhängigkeit auf Modul Studie von `2026.0.0-ballot` auf `2026.0.2` aktualisiert
- `chore` Abhängigkeit auf Modul ICU auf `2026.0.x` (resolved: `2026.0.2`) aktualisiert

### Fehlerbehebungen

- `fix` ICU-Kopfumfang-Alias auf umbenanntes Profil `mii-pr-icu-muv-kopfumfang` aktualisiert
- `fix` Korrekter SNOMED-Code für Kopfumfang (363812007 statt 363811000)
- `fix` SNOMED Display auf englisch (Head circumference) für Validator-Kompatibilität
- `fix` FamilyMemberHistory.condition zum Penetrance-Extension-Context hinzugefügt
- `fix` CPS Version über RuleSet statt Hardcoding, SupportProfile ohne Version-Suffix

### CI/CD und Tooling

- `feat` Validierungsregeln (qc/custom.rules.yaml) für Ressourcenvalidierung hinzugefügt
- `feat` Zentralisiertes `/build-package` Kommando hinzugefügt
- `feat` FHIR Restore-Schritt zum Build-Prozess hinzugefügt
- `feat` mii-shared Submodul und fix-ig-export-links Skill hinzugefügt
- `refactor` IG-Seiten auf Tabs-Format umgestellt und lokales Studie-Profil entfernt
- `fix` Terminologie-Codes und Display-Namen in Therapiebeispielen korrigiert
- `fix` MII IG Namenskonventionen für 2026-Release angewandt
- `fix` 'Erweiterungsmodul' durch 'KDS-Modul' gemäß MII-Richtlinien ersetzt

---

## Version 2026.0.0 (Finale Version)

Diese Version ist die finale Veröffentlichung des MII Moduls Seltene Erkrankungen nach erfolgreichem Ballot-Verfahren.

### Änderungen seit v2026.0.0-rc.1

- `chore` Alle Ressourcen auf Status "active" gesetzt
- `refactor` Diagnose-Abhängigkeit durch Base-Modul ersetzt für bessere Modularität
- `chore` Bake-Quellpfad für Package-Builds korrigiert

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
