# Änderungshistorie - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* **Änderungshistorie**

## Änderungshistorie

Auf dieser Seite werden die Unterschiede zwischen den Versionen nachgehalten, beginnend mit den Unterschieden zwischen der Ballotierungs- und der finalen Version 2026.

-------

## Version 2027.0.0-ballot

### Neue Funktionen

* `feat` **JARDIN-Datenpunkte** aus der Gegenüberstellung des europäischen Minimaldatensatzes mit dem Modul (Issues #35, #36, #38). Alle drei sind konkrete Datenbedarfe eines europäischen Referenznetzwerks, keiner davon ist auf seltene Erkrankungen beschränkt — die Profile sagen das im Kopfkommentar auch selbst 
* `feat` prä-/perinatale Angaben: `mii-pr-seltene-gestationsalter`, `mii-pr-seltene-geburtsgewicht`, `mii-pr-seltene-geburtslaenge`. Kein angebundenes MII-Modul deckte sie ab; Mehrlingsschwangerschaften und pränatal diagnostizierte Fehlbildungen wurden bewusst **nicht** profiliert, weil `Patient.multipleBirth[x]` und die bestehenden Condition-Profile mit HPO-Onset das leisten
* `feat` `mii-pr-seltene-icf-assessment` mit CodeSystem und ValueSets für die Beurteilungsmerkmale. Die WHO-Qualifier liegen in `component`, nicht in `value[x]`, weil ihre Zahl je ICF-Kapitel verschieden ist — Körperstrukturen tragen drei, Aktivitäten und Partizipation zwei (Leistungsfähigkeit **und** Leistung). Fünf Invarianten erzwingen die Kapitelkohärenz
* `feat` `mii-pr-seltene-registerteilnahme` für die Teilnahme an ERN-Registern, abgeleitet von `ResearchSubject`
 
* `feat` **Consanguinity** (`mii-pr-seltene-consanguinity`) mit ValueSet — Blutsverwandtschaft der Eltern nach RD-CDM v2.0.0 §6.4.4 (Issue #37)
* `feat` **Neugeborenenscreening**: sieben ValueSets, davon fünf aus der LOINC-SNOMED-Ontologie per ECL abgeleitet, eines kuratiert nach G-BA-Kinder-Richtlinie und eines intensional über die LOINC-Eigenschaft `SYSTEM` (608 Trockenblut-Codes), dazu eine eigene Terminologieseite
* `feat` Logical Model `mii-lm-seltene` wieder im Build und auf der Datensatzseite vollständig als Tabelle gerendert
* `feat` 13 neue Beispielinstanzen, angebunden an das bestehende SMA-Fallbeispiel

### Breaking Changes

* `remove` Extension `mii-ex-seltene-empfehlung-evidenzgraduierung` entfernt, samt ihrer Verwendung in den drei Therapieempfehlungs-Profilen. Sie war eine Kopie aus dem MTB-Modul, deren `system`-Discriminator nie einen Wert trug — der Pflicht-Slice `Evidenzgrad 1..1` war von keiner Instanz erfüllbar. Publiziert, aber unbenutzbar, und von keinem Beispiel verwendet. Die Skalenfrage verhandelt Ballot-Ticket HDB-543 und ist onkologisch geprägt; für seltene Erkrankungen wurde sie nie beantwortet
* `remove` sechs Extensions entfernt, die **nie an ein Profil angeschlossen waren**: `mii-ex-seltene-age-of-onset`, `mii-ex-seltene-genetic-basis`, `mii-ex-seltene-inheritance-pattern`, `mii-ext-seltene-onset-age`, `mii-ext-seltene-phenotypic-pattern`, `mii-ext-seltene-syndrome-category`. Die Git-Historie kennt keinen Commit, der eine von ihnen per `named` in ein Profil aufgenommen hätte; publiziert waren sie dennoch seit 2026.0.1. `age-of-onset` und `onset-age` waren zudem dasselbe Konzept unter zwei IDs — angelegt am 31.07. und 07.08.2025, eine Woche auseinander, wobei die zweite Gruppe die erste unter der Konvention `mii-ex-` neu anlegte, ohne die erste zu entfernen. Von elf Extensions bleiben fünf, und die sind alle in Gebrauch. Die zugehörigen ValueSets bleiben bestehen, sie sind auch eigenständig brauchbar
* `change` Elementnamen des Logical Models auf lowerCamelCase. PascalCase verstößt gegen die FHIR-Regel `eld-20` und erzeugte 195 Warnungen. 62 Segmentnamen umbenannt, Akronyme korrekt behandelt (`HPOTerm` → `hpoTerm`, `BMI` → `bmi`), die 90 Mapping-Ziele in 11 Profilen mitgezogen. **Die Elementpfade ändern sich damit**
* `change` Codes von `mii-pr-seltene-taillenumfang` (LOINC `8280-0` → SNOMED `276361009`) und `mii-pr-seltene-hueftumfang` (LOINC `56063-1` → SNOMED `284472007`). **Abfragen auf die alten Codes greifen nicht mehr**
* `change` Extension `von-seltene-betroffen` umbenannt in `mii-ex-von-se-betroffen`. Sie war die einzige Extension ohne Präfix und folgte keiner der beiden im Modul vorhandenen Konventionen. Da kein `^url` gesetzt war, leitet SUSHI den Canonical aus der Id ab — **er ändert sich damit mit**. Das zugehörige ValueSet behält vorerst `von-seltene-betroffen-vs`, weil es einen eigenen `^url` trägt
* `change` Beispielinstanz `example` umbenannt in `mii-exa-seltene-patient`, profiliert auf `MII_PR_Person_Patient`

### Fehlerbehebungen

* `fix` **das Taillenumfang-Profil trug den Code des Bauchumfangs.** LOINC bietet den Taillenumfang ausschließlich auf Nabelhöhe an (`8280-0`, `8281-8`) — die Landmarke des Bauchumfangs, nicht der Taille, die an der schmalsten Stelle beziehungsweise am Mittelpunkt zwischen unterster Rippe und Beckenkamm definiert ist. Das Profil sagte damit etwas anderes, als es hieß. SNOMED trennt beides; `1162535003` und `1162536002` bleiben für die landmarkengenaue Angabe verfügbar. Relevant, weil das Modul ein Taille-Hüfte-Verhältnis führt: mit dem Bauchumfang als Zähler ergibt sich ein falsches Verhältnis
* `fix` das Logical Model hat ein `taillenumfang` erhalten. Es kannte nur `bauchumfang`, wodurch das Taillenumfang-Profil auf den Bauchumfang mappte
* `fix` das (auskommentierte) Profil `mii-pr-seltene-waist-to-hip-ratio` trug mit LOINC `8280-0` einen doppelt falschen Code — den Umfang statt des Verhältnisses, und denselben wie das Taillenumfang-Profil. Korrigiert auf SNOMED `248367009 |Waist/hip ratio|`. Das Profil ist weiterhin inaktiv; dass ausgerechnet das Verhältnis auskommentiert ist, erklärt, warum die Verwechslung so lange unauffällig blieb
* `fix` ValueSet `mii-vs-seltene-clinical-diagnosis-category` korrigiert und **erstmals gebunden**. Vier der acht Codes waren falsch oder existierten nicht: `363358000` stand als „Clinical finding" und ist **Malignant neoplasm of lung**, `47367009` stand als „Syndrome" und ist **Exocrine pancreatic insufficiency**, `84757009` stand als „Rare disease" und ist **Epilepsy**, `381406004` existiert nicht. Zwei wurden ersetzt (`404684003` Clinical finding, `66091009` Congenital disease); für „Syndrome" und „Rare disease" gibt es in SNOMED CT kein generisches Konzept, sie entfielen daher ersatzlos statt auf etwas Ähnliches umgebogen zu werden. Das ValueSet bestand seit dem 07.08.2025 und war **nie an ein Profil gebunden**, obwohl der Leitfaden die Kategorisierung seit einem Jahr beschreibt; `mii-pr-seltene-clinical-diagnosis.category` bindet es jetzt `extensible`
* `fix` ValueSet `mii-vs-seltene-penetrance` korrigiert — drei von vier Codes waren falsch (Issue #31). `HP:0025169`, publiziert als „Complete penetrance", ist **Left ventricular systolic dysfunction**; `HP:0003828`, publiziert als „Variable penetrance", ist **Variable expressivity**. Alle Codes gegen die HPO-API geprüft. Zu beachten: die abgestuften Terme sind Untertypen der **unvollständigen** Penetranz
* `fix` Slicing-Discriminatoren auf `mii-pr-seltene-blutgruppe` sowie auf `category` in beiden Therapieempfehlungs-Profilen. Die Slices unterschieden sich nur durch `.system` beziehungsweise ein required-Binding — beides kann der jeweils gesetzte Discriminator nicht auswerten
* `fix` Logical Model reaktiviert; sein Canonical ist das Ziel des Mappings jedes Profils, womit 22 unauflösbare Links verschwinden
* `fix` 31 Mapping-Ziele zeigten auf nicht existierende Elemente, und die Ziele für `valueQuantity.value` und `effectiveDateTime` auf das BackboneElement statt auf Wert oder Datum. Alle 102 lösen jetzt auf
* `fix` das Logical Model hat `familienanamnese.todDurchSE` und `familienanamnese.dokumentationsdatum` erhalten — beide Datenpunkte führt das Familienanamnese-Profil, das Modell kannte sie nicht
* `fix` fünf Verweise auf `Patient/example-patient`, eine nie definierte Instanz

### Dokumentation

* `docs` der Leitfaden zu klinischer und genetischer Diagnose zeigt statt FSH-Blöcken drei Diagramme (Strukturvergleich, Parallelmodell, Entscheidungsbaum). Der bisherige `plantuml`-Block wurde nie gerendert und war zudem syntaktisch defekt; der englischen Fassung fehlte der Entscheidungsbaum ganz
* `docs` die Datensatzseite rendert das Logical Model als Tabelle mit 71 Datenelementen, erzeugt durch `scripts/generate-lm-table.py`
* `docs` neue Seite zum Neugeborenenscreening

### Governance

* `chore` Lizenz auf IG-Ebene als `CC-BY-4.0` deklariert (Gate-A-Entscheidung). Das Modul deklarierte zuvor weder in `sushi-config.yaml` noch in `package.json` noch als LICENSE-Datei eine Lizenz; auf Artefakt-Ebene war CC-BY-4.0 über `LicenseCodeableCCBY40` bereits in Gebrauch

-------

## Version 2026.0.1 (Patch-Release)

### Abhängigkeiten

* `chore` Abhängigkeit auf Modul Studie von `2026.0.0-ballot` auf `2026.0.2` aktualisiert
* `chore` Abhängigkeit auf Modul ICU auf `2026.0.x` (resolved: `2026.0.2`) aktualisiert

### Fehlerbehebungen

* `fix` ICU-Kopfumfang-Alias auf umbenanntes Profil `mii-pr-icu-muv-kopfumfang` aktualisiert
* `fix` Korrekter SNOMED-Code für Kopfumfang (363812007 statt 363811000)
* `fix` SNOMED Display auf englisch (Head circumference) für Validator-Kompatibilität
* `fix` FamilyMemberHistory.condition zum Penetrance-Extension-Context hinzugefügt
* `fix` CPS Version über RuleSet statt Hardcoding, SupportProfile ohne Version-Suffix

### CI/CD und Tooling

* `feat` Validierungsregeln (qc/custom.rules.yaml) für Ressourcenvalidierung hinzugefügt
* `feat` Zentralisiertes `/build-package` Kommando hinzugefügt
* `feat` FHIR Restore-Schritt zum Build-Prozess hinzugefügt
* `feat` mii-shared Submodul und fix-ig-export-links Skill hinzugefügt
* `refactor` IG-Seiten auf Tabs-Format umgestellt und lokales Studie-Profil entfernt
* `fix` Terminologie-Codes und Display-Namen in Therapiebeispielen korrigiert
* `fix` MII IG Namenskonventionen für 2026-Release angewandt
* `fix` 'Erweiterungsmodul' durch 'KDS-Modul' gemäß MII-Richtlinien ersetzt

-------

## Version 2026.0.0 (Finale Version)

Diese Version ist die finale Veröffentlichung des MII Moduls Seltene Erkrankungen nach erfolgreichem Ballot-Verfahren.

### Änderungen seit v2026.0.0-rc.1

* `chore` Alle Ressourcen auf Status "active" gesetzt
* `refactor` Diagnose-Abhängigkeit durch Base-Modul ersetzt für bessere Modularität
* `chore` Bake-Quellpfad für Package-Builds korrigiert

-------

## Änderungen Version v2026.0.0-rc.1 (Release Candidate 1)

### Neue Funktionen

* `feat` MetaProfile RuleSet für alle Beispiel-Instanzen mit versionierter Profil-URL hinzugefügt
* `feat` Therapietyp-Kategorie (kausal/symptomatisch) für Therapieempfehlungen hinzugefügt

### Dokumentationsverbesserungen

* `docs` HPO-Phänotypisierung Dokumentation aktualisiert entsprechend HL7 Phenomics IG Pattern (HDB-755, HDB-737)
* `docs` Klarstellung: Eine FamilyMemberHistory-Ressource pro Familienmitglied (HDB-750)
* `docs` Seltene Erkrankungen Definitionen im Modulbeschreibung aktualisiert (HDB-757)
* `docs` Orpha-Kodierung → ORPHAcode-Kodierung Terminologie korrigiert (HDB-764)
* `docs` HPO vs Symptom Unterscheidung mit Marfan-Beispiel dokumentiert (HDB-738)
* `docs` Dokumentationsklarstellungen (HDB-741, HDB-739)

### Fehlerbehebungen

* `fix` Inkorrekte oBDS-Mappings aus Therapieplan-Seite entfernt (HDB-751)
* `fix` Inkorrekte oBDS-Mappings aus Messbefunde-Profilen entfernt (HDB-751)
* `fix` Tod-durch-SE Extension durch Standard contributedToDeath Element ersetzt
* `fix` Körpermaße-Profile hinzugefügt und Validierungsfehler behoben
* `fix` 21 SUSHI-Kompilierungsfehler behoben und HPO-Profil-Design verbessert
* `fix` 21 Validierungsfehler mit Terminologie- und Beispielkorrekturen behoben
* `fix` HPO Assessment-Profil nach HL7 Phenomics IG Pattern refaktoriert

### Validierung und Qualitätsverbesserungen (aus Ballot-Feedback)

* `fix` SNOMED CT-basiertes ValueSet für "Von SE betroffen" erstellt mit Codes 373066001 "Yes", 373067005 "No", 261665006 "Unknown". HL7 v2 Codes für Rückwärtskompatibilität beibehalten.
* `fix` Kombiniertes Symptom Change Status ValueSet erstellt: MVGenomSeq Codes (newly-added, improved, degraded, no-longer-observed, unchanged) mit SNOMED CT Mapping (385425000 Improved, 231877006 Worse, 385630006 Maintained, 2667000 Absent)
* `fix` FamilyMemberHistory Beispiele korrigiert: ICD-10-GM Version 2004→2009, Display-Namen (Natural Mother→Natural mother), ungültiger Code E11.X→E11.9
* `fix` Ungültiger LOINC Code 79992-2 durch 78176-5 "Aorta root Diameter by US 2D" ersetzt
* `fix` Ungültigen SNOMED Code 249374003 "Anteverted nares" aus HPO Observation Beispiel entfernt (HPO Code HP:0000463 beibehalten)
* `fix` Patient Identifier von `http://example.org` auf `http://test-krankenhaus.de/fhir/sid/patienten` geändert

