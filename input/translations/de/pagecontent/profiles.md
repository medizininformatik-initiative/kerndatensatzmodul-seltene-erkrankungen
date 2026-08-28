<!-- DE-Uebersetzungsseite; Quelle(n): profiles-overview.md + 7 Familien-Index-Seiten (Baum) — Migration 2026-08-28, page-map.tsv -->
Die Arbeiten der Kerndatensatzspezifikationen basieren, falls möglich, auf internationalen Standards und Terminologien. Insbesondere sei hier die <a href="https://hl7.org/fhir/uv/ips/history.html" target="_blank">International Patient Summary</a> hervorgehoben. Eine Anpassung an die allgemeinen Gegebenheiten des deutschen Gesundheitswesens erfolgt durch die Verwendung der <a href="https://simplifier.net/basisprofil-de-r4" target="_blank">Deutschen FHIR Basisprofile</a> von HL7 Deutschland. Außerdem wird Kompatibilität zu den FHIR-Spezifikationen der <a href="https://simplifier.net/organization/kassenrztlichebundesvereinigungkbv" target="_blank">Kassenärztlichen Bundesvereinigung (KBV)</a> und der <a href="https://simplifier.net/organization/gematik" target="_blank">Gematik</a> angestrebt.

Alle Elemente des Kerndatensatzes, angepasst an die Details und Anforderungen für die Use Cases der Medizininformatik-Initative, werden nachfolgend in Form von FHIR StructureDefinitions beschrieben. Die Notwendigkeit der Anpassung der FHIR-Profile wird in textueller Form unterhalb der jeweiligen Profile erläutert.

### Implementierungshinweis für krankheitsspezifische Codes

> **Hinweis:** Die technische Implementierung von Profilen für krankheitsspezifische Codes (inkl. relevanter Diagnosen, Symptome, Prozeduren, Medikationen etc.) kann beispielsweise als projektspezifische Spezifikation erfolgen und langfristig ins Modul Seltene Erkrankungen migriert werden. Dies ermöglicht eine flexible Anpassung an spezielle Anforderungen einzelner Projekte, während gleichzeitig eine spätere Standardisierung und Integration in das Kernmodul angestrebt wird.


## Profilgruppen


### Anamnese und Diagnostik

Dieser Bereich umfasst alle FHIR-Profile zur strukturierten Erfassung von Anamnese und Diagnostik bei Patienten mit Seltenen Erkrankungen. Die Profile ermöglichen eine standardisierte Dokumentation des diagnostischen Prozesses von der initialen Untersuchung über die Phänotypisierung bis zur finalen Diagnosestellung.

#### Kernbereiche

Die Anamnese und Diagnostik gliedert sich in folgende Hauptbereiche:

- **Diagnose**: Strukturierte Erfassung klinischer und genetischer Diagnosen mit spezifischen Kodierungen für Seltene Erkrankungen
- **HPO-Phänotypisierung**: Detaillierte Dokumentation phänotypischer Merkmale mittels Human Phenotype Ontology (HPO)
- **Symptome**: Erfassung krankheitsspezifischer Symptome und deren Verlauf
- **Untersuchungen**: Dokumentation klinischer Eindrücke und Untersuchungsergebnisse

Diese Profile bilden die Grundlage für eine umfassende und interoperable Dokumentation des diagnostischen Pfades bei Seltenen Erkrankungen.


### Diagnose

Die Diagnosestellung bei Seltenen Erkrankungen erfolgt in zwei komplementären Dimensionen, die durch separate FHIR-Profile abgebildet werden:

#### Klinische Diagnose
Die klinische Diagnose basiert auf der Beobachtung und Bewertung phänotypischer Merkmale, klinischer Symptome und Untersuchungsbefunde. Sie wird mittels standardisierter Terminologien wie ICD-10-GM, ORPHAcodes und Datei Alpha-ID-SE kodiert.

#### Genetische Diagnose
Die genetische Diagnose dokumentiert die molekulargenetischen Befunde und identifizierten Genvarianten. Sie ergänzt die klinische Diagnose um die genetische Komponente und ermöglicht eine präzise ätiologische Zuordnung der Erkrankung.

Beide Diagnosetypen sind essentiell für das vollständige Verständnis und die optimale Versorgung von Patienten mit Seltenen Erkrankungen.


### Messbefunde

Die Erfassung von Messbefunden spielt bei der Diagnostik und Verlaufskontrolle von Seltenen Erkrankungen eine wichtige Rolle. Diese Profile ermöglichen die standardisierte Dokumentation verschiedener körperlicher Messparameter, die für die Beurteilung und Überwachung relevant sind.

#### Verfügbare Messbefund-Profile

##### Anthropometrische Messungen

- **[Body-Mass-Index-Observation](StructureDefinition-mii-pr-seltene-bodymassindex.html)**: Erfassung des BMI als wichtiger Parameter für Stoffwechselerkrankungen und Syndrome mit Gewichtsveränderungen
- **[Kopfumfang-Observation](StructureDefinition-mii-pr-seltene-kopfumfang.html)**: Messung des okzipital-frontalen Kopfumfangs, relevant bei Skelettdysplasien und neurologischen Erkrankungen (LOINC 9843-4)
- **[Taillenumfang-Observation](StructureDefinition-mii-pr-seltene-taillenumfang.html)**: Messung des Bauchumfangs auf Nabelhöhe, relevant für metabolische Erkrankungen und Skelettdysplasien (LOINC 8280-0)
- **[Hueftumfang-Observation](StructureDefinition-mii-pr-seltene-hueftumfang.html)**: Messung an der maximalen Gesäßprotuberanz, relevant für Körperproportionen und metabolische Beurteilung (LOINC 56063-1)
- **Waist-to-Hip-Ratio**: Berechnung des Waist-to-Hip Ratio aus Taillen- und Hüftumfang

##### Laborparameter

- **[Blutgruppe-Observation](StructureDefinition-mii-pr-seltene-blutgruppe.html)**: Strukturierte Erfassung der Blutgruppe einschließlich AB0-System und Rhesusfaktor

Diese Messbefunde ergänzen die klinische Phänotypisierung und unterstützen die ganzheitliche Beurteilung des Gesundheitszustands bei Patienten mit Seltenen Erkrankungen.


### Familienanamnese

Die Familienanamnese ist bei Seltenen Erkrankungen von zentraler Bedeutung, da etwa 80% dieser Erkrankungen genetisch bedingt sind. Die strukturierte Erfassung der Familiengeschichte ermöglicht es, Vererbungsmuster zu erkennen, Risikopersonen zu identifizieren und gezielte genetische Beratung anzubieten.

#### Bedeutung für Seltene Erkrankungen

- **Vererbungsmuster**: Identifikation autosomal-dominanter, autosomal-rezessiver, X-chromosomaler oder mitochondrialer Vererbung
- **Risikostratifizierung**: Einschätzung des Erkrankungsrisikos für Familienmitglieder
- **Genetische Beratung**: Grundlage für fundierte Beratung betroffener Familien
- **Diagnostik**: Unterstützung bei der Diagnosestellung durch familiäre Häufungen

Das FamilyMemberHistory-Profil erfasst dabei nicht nur das Vorhandensein von Erkrankungen bei Verwandten, sondern auch deren Verwandtschaftsgrad, Geschlecht und Vitalstatus, um ein vollständiges Bild der familiären Belastung zu erhalten.


### Therapie und Forschung

Dieser Bereich dokumentiert therapeutische Maßnahmen und die Teilnahme an Forschungsprojekten für Patienten mit Seltenen Erkrankungen. Die strukturierte Erfassung von Therapien und Studienteilnahmen ist essentiell für die Versorgungsqualität und die Weiterentwicklung der Behandlungsmöglichkeiten.

#### Therapie

Die Therapiedokumentation umfasst sowohl medikamentöse als auch nicht-medikamentöse Behandlungsansätze:
- Strukturierte Therapiepläne und -empfehlungen
- Dokumentation durchgeführter Therapien gemäß NARSE-Klassifikation
- Erfassung von Off-Label-Medikationen
- Kombinationstherapien

#### Forschung und Studien

Die Einbindung in Forschungsprojekte ist bei Seltenen Erkrankungen besonders wichtig:
- Dokumentation von Studieneinschlüssen
- Erfassung der Bereitschaft zur Studienteilnahme
- Strukturierte Anfragen für Studieneinschlüsse

Diese Profile unterstützen die Vernetzung von Versorgung und Forschung und tragen zur Verbesserung der Evidenzlage bei Seltenen Erkrankungen bei.


### Therapie (Profile)

Die Therapie-Profile des Moduls Seltene Erkrankungen ermöglichen die strukturierte Dokumentation von Therapieempfehlungen und -plänen für Patienten mit seltenen Erkrankungen. Die Profile unterscheiden klar zwischen medikamentösen und nicht-medikamentösen Therapieansätzen.

#### Übersicht der Therapie-Profile

##### Therapieempfehlungen

**Medikamentöse Therapien (MedicationRequest-basiert):**
- [**Therapieempfehlung-Medikamentös**](StructureDefinition-mii-pr-seltene-therapieempfehlung.html) - Einzelne medikamentöse Therapieempfehlungen
  - Systemische Therapien (Chemotherapie, Immuntherapie)
  - Gezielte Therapien (Targeted Therapy)
  - Gentherapien
  - Präventive Medikation
  
- [**Therapieempfehlung-Kombination**](StructureDefinition-mii-pr-seltene-therapieempfehlung-kombination.html) - Kombinationstherapien mit mehreren Medikamenten
  - Mehrfach-Medikation
  - Sequenzielle Therapieschemata

**Nicht-medikamentöse Therapien (ServiceRequest-basiert):**
- [**Therapieempfehlung-Nicht-Medikamentös**](StructureDefinition-mii-pr-seltene-therapieempfehlung-nicht-medikamentoes.html) - Nicht-medikamentöse Interventionen
  - Operative Eingriffe
  - Physiotherapie und Rehabilitation
  - Ernährungstherapie
  - Psychologische Betreuung
  - Genetische Beratung

##### Therapieplanung

- [**Therapieplan**](StructureDefinition-mii-pr-seltene-therapieplan.html) - Übergeordneter Behandlungsplan (CarePlan)
  - Integriert medikamentöse und nicht-medikamentöse Empfehlungen
  - Koordiniert verschiedene Therapieansätze
  - Dokumentiert Behandlungsziele und -verlauf

#### Implementierungshinweise

##### Unterscheidung der Therapietypen

Die klare Trennung zwischen medikamentösen und nicht-medikamentösen Therapien erfolgt durch:

1. **Ressourcentyp**:
   - Medikamentös → `MedicationRequest`
   - Nicht-medikamentös → `ServiceRequest`

2. **Kodierung**:
   - Medikamente: ATC, PZN, UNII, INN
   - Prozeduren: OPS, SNOMED CT, LOINC

3. **Integration im Therapieplan**:
   - CarePlan.activity mit entsprechenden Slices
   - Referenzen auf die jeweiligen Request-Ressourcen

##### Workflow

1. **Empfehlung**: Therapievorschläge als "proposal" mit Status "draft"
2. **Genehmigung**: Übergang zu Status "active" und Intent "order"
3. **Durchführung**: Dokumentation über MedicationStatement/Administration bzw. Procedure
4. **Monitoring**: Verlaufskontrolle über Observation und DiagnosticReport

#### Hintergrund: Modellvorhaben Genomsequenzierung

> **Hinweis:** Die Unterscheidung zwischen **Therapieplan** und **Therapieempfehlung** entstammt den Anforderungen des **Modellvorhabens Genomsequenzierung** für Seltene Erkrankungen.

In der klinischen Praxis bei seltenen Erkrankungen werden Therapieentscheidungen oft in interdisziplinären Fallkonferenzen getroffen:

- **Therapieempfehlungen** dokumentieren die Vorschläge von **Consiliarii** (beratenden Fachärzt:innen) aus der Fallkonferenz. Sie repräsentieren fachliche Empfehlungen, die noch nicht verbindlich umgesetzt wurden.

- **Therapiepläne** dokumentieren die Behandlungsplanung durch die **behandelnden Ärzt:innen**, die unter Berücksichtigung der Empfehlungen einen konkreten Behandlungsplan für den Patienten erstellen.

Diese Trennung ermöglicht eine klare Nachvollziehbarkeit der Entscheidungsfindung: Welche Therapien wurden empfohlen, welche wurden tatsächlich geplant und umgesetzt, und welche Abweichungen gab es zwischen Empfehlung und Umsetzung.

#### Anwendungsbeispiele

##### Marfan-Syndrom
- Medikamentös: ACE-Hemmer (Losartan) zur Progressionshemmung
- Nicht-medikamentös: Aortenwurzelersatz bei Dilatation

##### Spinale Muskelatrophie (SMA)
- Medikamentös: Gentherapie (Onasemnogene abeparvovec)
- Nicht-medikamentös: Physiotherapie zur Funktionserhaltung

#### Qualitätssicherung

Alle Therapieempfehlungen sollten:
- Mit Diagnosen verknüpft sein (`reasonReference`)
- Begründungen enthalten (`note`)
- Zeitangaben spezifizieren (`authoredOn`, `occurrence[x]`)
- Status korrekt pflegen (draft → active → completed)


### Studie

Die Studie-Profile des Moduls Seltene Erkrankungen ermöglichen die strukturierte Dokumentation von Studieninformationen und Studieneinschluss-Anfragen für Patienten mit seltenen Erkrankungen.

#### Abgrenzung zum Modul Medizinische Forschungsvorhaben

> **Hinweis:** Detaillierte Informationen zu medizinischen Forschungsvorhaben und Studien werden im [Modul Medizinische Forschungsvorhaben](https://www.medizininformatik-initiative.de/Kerndatensatz/Modul_Medizinische_Forschungsvorhaben/IGMIIKDSModulMedizinischeForschungsvorhaben.html) der Medizininformatik-Initiative abgebildet. 
>
> Das Profil **Studieneinschluss-Anfrage** ist jedoch derzeit nicht im Modul Medizinische Forschungsvorhaben enthalten und wird daher hier im Modul Seltene Erkrankungen definiert. Dieses Profil basiert auf dem entsprechenden [Studieneinschluss-Anfrage Profil aus dem MTB-Modul](https://www.medizininformatik-initiative.de/Kerndatensatz/KDS_Molekulares_Tumorboard/MIIIGModulMolekularesTumorboard-TechnischeImplementierung-FHIRProfile-Behandlungsepisode-Therapieplan-MTB-Beschluss-Studieneinschlussempfehlung-Studieneinschluss-Anfrage-ServiceRequest.html) und wurde für die Anforderungen bei seltenen Erkrankungen angepasst.

#### Übersicht der Studie-Profile

##### Studieninformationen
- **ResearchStudy**: Basisprofil für Studieninformationen
  - Dokumentiert grundlegende Studiendetails
  - Verknüpfung zu detaillierten Informationen im Modul [Medizinische Forschungsvorhaben] https://www.medizininformatik-initiative.de/Kerndatensatz/Modul_Medizinische_Forschungsvorhaben/IGMIIKDSModulMedizinischeForschungsvorhaben.html

##### Studieneinschluss
- [**Studieneinschluss-Anfrage**](StructureDefinition-mii-pr-seltene-studieneinschluss-anfrage.html) - ServiceRequest-basiertes Profil
  - Empfehlung zur Studienteilnahme, aber Bestätigung nicht zwingenderweise gegeben
  - Anfrage für Studieneinschluss
  - Basiert auf dem MTB-Modul-Profil

#### Implementierungshinweise

##### Integration mit anderen Modulen
1. **Modul Medizinische Forschungsvorhaben**: 
   - Für umfassende Studiendokumentation
   - Detaillierte Protokollinformationen
   - Studienstatus und -verlauf

2. **Modul Molekulares Tumorboard (MTB)**:
   - Vorlage für Studieneinschluss-Anfrage auf Basis eines MTB-Beschlusses
   - Ähnliche Workflow-Patterns

3. **Modul Seltene Erkrankungen**: 
   - Spezifische Anpassungen für seltene Erkrankungen
   - repräsentiert Studienbeteiligungen nach Modellvorhaben Genomsequenzierung und NARSE
   - Integration in Therapieplan über CarePlan

#### Anwendungsbeispiele

##### Seltene genetische Erkrankungen
- Gentherapie-Studien
- Register-basierte Studien

##### Orphan Drug Entwicklung
- Phase I/II Studien für seltene Erkrankungen
- Compassionate Use Programme
- Expanded Access Programme
