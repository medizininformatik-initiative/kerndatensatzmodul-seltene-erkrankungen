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

<!-- BEGIN GENERATED: artifact-list (scripts/generate-artifact-lists.py) -->

Das Modul definiert die folgenden Profile. Jeder Eintrag verweist auf die erzeugte Artefaktseite mit Struktur, Constraints, Bindings und Beispielen.

| Titel | Id | Zweck |
|---|---|---|
| MII PR SE Blutgruppe | [`mii-pr-seltene-blutgruppe`](StructureDefinition-mii-pr-seltene-blutgruppe.html) | Observation-Profil für die Erfassung der Blutgruppe (AB0 und Rhesusfaktor) im Kontext seltener Erkrankungen |
| Body Mass Index (BMI) of the patient | [`mii-pr-seltene-bodymassindex`](StructureDefinition-mii-pr-seltene-bodymassindex.html) | Describes the Body Mass Index (BMI) of the patient. |
| MII PR SE Clinical Diagnosis | [`mii-pr-seltene-clinical-diagnosis`](StructureDefinition-mii-pr-seltene-clinical-diagnosis.html) | Profile for clinical diagnosis of rare diseases with HPO phenotype codes. This profile is used for clinically diagnosed rare diseases based on phenotypic presentation. |
| MII Profile SE Clinical Impression | [`mii-pr-seltene-clinical-impression`](StructureDefinition-mii-pr-seltene-clinical-impression.html) | Profile for clinical impressions in the context of rare diseases. This profile captures clinical assessments and suspected diagnoses based on phenotypic findings and symptoms. |
| MII PR SE Consanguinity | [`mii-pr-seltene-consanguinity`](StructureDefinition-mii-pr-seltene-consanguinity.html) | Observation-Profil zur Erfassung der Blutsverwandtschaft der Eltern (Consanguinity) im Kontext seltener Erkrankungen. Insbesondere für autosomal-rezessive genetisch bedingte Erkrankungen ist die Angabe, ob die Eltern blutsverwandt sind, ein relevanter Aspekt der Familienanamnese. Abgeleitet aus RD-CDM v2.0.0 (Element 6.4.4) bzw. dem JARDIN-MDS-Entwurf. |
| MII PR SE Familienanamnese | [`mii-pr-seltene-familienanamnese`](StructureDefinition-mii-pr-seltene-familienanamnese.html) | Dieses Profil beschreibt die Familienanamnese eines Patienten im Kontext von seltenen Erkrankungen, basierend auf dem MolGen Familienanamnese Profil. Für jedes Familienmitglied wird eine separate FamilyMemberHistory-Ressource erstellt. Das Profil unterstützt die Dokumentation von Todesfällen durch seltene Erkrankungen über condition.contributedToDeath. Für den Indexpatienten selbst kann relationship.coding[snomed] = 116154003 \| Patient \| verwendet werden, um den Tod des Patienten durch eine seltene Erkrankung einheitlich zu dokumentieren. |
| MII PR SE Geburtsgewicht | [`mii-pr-seltene-geburtsgewicht`](StructureDefinition-mii-pr-seltene-geburtsgewicht.html) | Gemessenes Geburtsgewicht. Bei seltenen Erkrankungen ein Ausgangswert für die Beurteilung von Gedeihstörungen, Makrosomie und intrauteriner Wachstumsrestriktion. |
| MII PR SE Geburtslänge | [`mii-pr-seltene-geburtslaenge`](StructureDefinition-mii-pr-seltene-geburtslaenge.html) | Gemessene Körperlänge bei Geburt. Zusammen mit Geburtsgewicht und Kopfumfang der anthropometrische Ausgangsbefund, gegen den spätere Wachstumsverläufe bewertet werden. |
| MII PR SE Genetic Diagnosis | [`mii-pr-seltene-genetic-diagnosis`](StructureDefinition-mii-pr-seltene-genetic-diagnosis.html) | Profile for genetically confirmed diagnosis of rare diseases with OMIM codes and links to MolGen variant/diagnostic implication resources. This profile is used when a rare disease diagnosis has been confirmed through genetic testing. |
| MII PR SE Gestationsalter bei Geburt | [`mii-pr-seltene-gestationsalter`](StructureDefinition-mii-pr-seltene-gestationsalter.html) | Gestationsalter bei Geburt (Schwangerschaftsdauer bis zur Entbindung). Bei seltenen Erkrankungen relevant, weil Frühgeburtlichkeit sowohl Folge einer Grunderkrankung als auch Störgröße bei der Bewertung von Wachstums- und Entwicklungsparametern sein kann. |
| MII Profile SE HPO Assessment | [`mii-pr-seltene-hpo-assessment`](StructureDefinition-mii-pr-seltene-hpo-assessment.html) | Profile for HPO-based phenotypic observations in the context of rare diseases. This profile uses the Human Phenotype Ontology (HPO) to describe clinical symptoms and phenotypic abnormalities. |
| MII PR SE Hüftumfang | [`mii-pr-seltene-hueftumfang`](StructureDefinition-mii-pr-seltene-hueftumfang.html) | Profil zur Dokumentation des Hüftumfangs (maximale Gesäßprotuberanz) eines Patienten. Relevant für seltene Erkrankungen mit Auswirkungen auf die Körperproportionen, metabolische Erkrankungen oder Skelettdysplasien. |
| MII PR SE ICF Assessment | [`mii-pr-seltene-icf-assessment`](StructureDefinition-mii-pr-seltene-icf-assessment.html) | Observation profile grading a single ICF category for a patient, as required by the JARDIN MDS draft and the ERDRI-CDS. Observation.code carries the ICF category; the WHO qualifiers are carried as components, because body structures take three of them and activities/participation take two (capacity and performance). |
| MII PR SE Kopfumfang | [`mii-pr-seltene-kopfumfang`](StructureDefinition-mii-pr-seltene-kopfumfang.html) | Profil zur Dokumentation des Kopfumfangs (okzipital-frontal) eines Patienten. Besonders relevant bei seltenen Erkrankungen mit Auswirkungen auf das Schädelwachstum, z.B. Skelettdysplasien, neurologische Erkrankungen. Erbt vom MII ICU Kopfumfang-Profil. |
| MII PR SE Registerteilnahme | [`mii-pr-seltene-registerteilnahme`](StructureDefinition-mii-pr-seltene-registerteilnahme.html) | Teilnahme einer Person an einem Register für seltene Erkrankungen, insbesondere an einem Register eines European Reference Network (ERN). Gedacht für die Dokumentation aus zweiter Hand im Versorgungskontext: festgehalten wird, dass die Person teilnimmt. Nah am Probanden-Profil des MII KDS Moduls Studie, aber bewusst nicht davon abgeleitet, weil dessen Pflichtangabe consent den Sekundärfall ausschließt. |
| MII PR SE Studieneinschluss Anfrage | [`mii-pr-seltene-studieneinschluss-anfrage`](StructureDefinition-mii-pr-seltene-studieneinschluss-anfrage.html) | Anfrage zum Studieneinschluss |
| MII Profile SE Symptom Condition | [`mii-pr-seltene-symptom-condition`](StructureDefinition-mii-pr-seltene-symptom-condition.html) | Profile for symptom-based conditions in the context of rare diseases. This profile captures symptomatic conditions with temporal characteristics, complementing the HPO Assessment Observation profile. |
| MII PR SE Taillenumfang | [`mii-pr-seltene-taillenumfang`](StructureDefinition-mii-pr-seltene-taillenumfang.html) | Profil zur Dokumentation des Taillenumfangs (Bauchumfang auf Nabelhöhe) eines Patienten. Relevant für seltene Erkrankungen mit metabolischen Komponenten oder Skelettdysplasien. |
| MII PR Seltene Erkrankungen Therapie Durchgeführt | [`mii-pr-seltene-therapie-durchgefuehrt`](StructureDefinition-mii-pr-seltene-therapie-durchgefuehrt.html) | Minimales Profil zur Dokumentation durchgeführter Therapien bei Seltenen Erkrankungen gemäß NARSE-Klassifikation. Dieses Profil erfasst Therapien unabhängig vom Durchführungsort (ambulant, stationär, außerhalb des Krankenhauses). |
| MII PR SE Therapieempfehlung Kombinationstherapie | [`mii-pr-seltene-therapieempfehlung-kombination`](StructureDefinition-mii-pr-seltene-therapieempfehlung-kombination.html) | Therapieempfehlung für eine medikamentöse Kombinationstherapie |
| MII PR SE Therapieempfehlung Nicht-Medikamentös | [`mii-pr-seltene-therapieempfehlung-nicht-medikamentoes`](StructureDefinition-mii-pr-seltene-therapieempfehlung-nicht-medikamentoes.html) | Therapieempfehlung für nicht-medikamentöse Interventionen bei seltenen Erkrankungen (z.B. Ernährungstherapie, Gentherapie, Prophylaxe, Früherkennung) |
| MII PR SE Therapieempfehlung Systemische Therapie | [`mii-pr-seltene-therapieempfehlung`](StructureDefinition-mii-pr-seltene-therapieempfehlung.html) | Therapieempfehlung für eine medikamentöse Systemische Therapie |
| MII PR SE Therapieplan | [`mii-pr-seltene-therapieplan`](StructureDefinition-mii-pr-seltene-therapieplan.html) | Therapieplan |

<!-- END GENERATED: artifact-list -->
