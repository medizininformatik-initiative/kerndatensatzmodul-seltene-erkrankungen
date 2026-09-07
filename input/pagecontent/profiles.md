<!-- TODO:REVIEW machine translation of source pages profiles-overview.md + 7 family index pages (de) — Migration 2026-08-28, page-map.tsv -->
Where possible, the work on the core data set specifications is based on international standards and terminologies. The <a href="https://hl7.org/fhir/uv/ips/history.html" target="_blank">International Patient Summary</a> deserves particular mention here. Adaptation to the general conditions of the German healthcare system is achieved by using the <a href="https://simplifier.net/basisprofil-de-r4" target="_blank">German FHIR base profiles</a> of HL7 Germany. In addition, compatibility with the FHIR specifications of the <a href="https://simplifier.net/organization/kassenrztlichebundesvereinigungkbv" target="_blank">National Association of Statutory Health Insurance Physicians (KBV)</a> and <a href="https://simplifier.net/organization/gematik" target="_blank">gematik</a> is sought.

All elements of the core data set, adapted to the details and requirements of the use cases of the Medical Informatics Initiative, are described below in the form of FHIR StructureDefinitions. The rationale for adapting the FHIR profiles is explained in textual form beneath the respective profiles.

### Implementation note for disease-specific codes

> **Note:** The technical implementation of profiles for disease-specific codes (including relevant diagnoses, symptoms, procedures, medications, etc.) can, for example, be realized as a project-specific specification and migrated into the Rare Diseases module in the long term. This allows flexible adaptation to the special requirements of individual projects while at the same time aiming at later standardization and integration into the core module.

### Laboratory parameters: inherit, do not redefine

> **Rule (decided 2026-09-04).** This module defines **no** laboratory profiles,
> and the case examples therefore carry plain `Observation` resources with
> `category = laboratory`. Should laboratory parameters become part of the module
> in future, they **inherit from the MII module Laborbefund** rather than being
> profiled here from `Observation`. Adding
> `de.medizininformatikinitiative.kerndatensatz.laborbefund` as a dependency is
> then the first step. The same division of labour holds for variant findings,
> which belong to **Molekulargenetischer Befund** — that module *is* already a
> dependency and its profiles are referenced, not copied.
{: .ig-highlight .ig-highlight-blue}

## Profile groups

### History and diagnostics

This area comprises all FHIR profiles for the structured recording of history and diagnostics in patients with rare diseases. The profiles enable standardized documentation of the diagnostic process from the initial examination through phenotyping to the final diagnosis.

#### Core areas

History and diagnostics are structured into the following main areas:

- **Diagnosis**: structured recording of clinical and genetic diagnoses with specific codings for rare diseases
- **HPO phenotyping**: detailed documentation of phenotypic features using the Human Phenotype Ontology (HPO)
- **Symptoms**: recording of disease-specific symptoms and their course
- **Examinations**: documentation of clinical impressions and examination results

These profiles form the basis for comprehensive and interoperable documentation of the diagnostic path in rare diseases.

### Diagnosis

The diagnosis of rare diseases is made in two complementary dimensions, represented by separate FHIR profiles:

#### Clinical diagnosis

The clinical diagnosis is based on the observation and assessment of phenotypic features, clinical symptoms and examination findings. It is coded using standardized terminologies such as ICD-10-GM, ORPHAcodes and the Alpha-ID-SE file.

#### Genetic diagnosis

The genetic diagnosis documents the molecular genetic findings and identified gene variants. It complements the clinical diagnosis with the genetic component and enables a precise etiological classification of the disease.

Both diagnosis types are essential for the complete understanding and optimal care of patients with rare diseases.

### Measurement findings

The recording of measurement findings plays an important role in the diagnostics and follow-up of rare diseases. These profiles enable the standardized documentation of various physical measurement parameters relevant for assessment and monitoring.

#### Available measurement profiles

##### Anthropometric measurements

- **[Body mass index observation](StructureDefinition-mii-pr-seltene-bodymassindex.html)**: recording of the BMI as an important parameter for metabolic diseases and syndromes with weight changes
- **[Head circumference observation](StructureDefinition-mii-pr-seltene-kopfumfang.html)**: measurement of the occipital-frontal head circumference, relevant for skeletal dysplasias and neurological diseases (LOINC 9843-4)
- **[Waist circumference observation](StructureDefinition-mii-pr-seltene-taillenumfang.html)**: measurement of the abdominal circumference at navel height, relevant for metabolic diseases and skeletal dysplasias (LOINC 8280-0)
- **[Hip circumference observation](StructureDefinition-mii-pr-seltene-hueftumfang.html)**: measurement at the maximal gluteal protuberance, relevant for body proportions and metabolic assessment (LOINC 56063-1)
- **Waist-to-hip ratio**: calculation of the waist-to-hip ratio from waist and hip circumference

##### Laboratory parameters

- **[Blood group observation](StructureDefinition-mii-pr-seltene-blutgruppe.html)**: structured recording of the blood group including the AB0 system and Rhesus factor

These measurement findings complement clinical phenotyping and support the holistic assessment of the health status of patients with rare diseases.

### Family history

The family history is of central importance in rare diseases, since about 80% of these diseases are of genetic origin. The structured recording of the family history makes it possible to recognize inheritance patterns, identify persons at risk and offer targeted genetic counseling.

#### Relevance for rare diseases

- **Inheritance patterns**: identification of autosomal-dominant, autosomal-recessive, X-linked or mitochondrial inheritance
- **Risk stratification**: assessment of the disease risk for family members
- **Genetic counseling**: basis for well-founded counseling of affected families
- **Diagnostics**: support for diagnosis through familial clustering

The FamilyMemberHistory profile records not only the presence of diseases in relatives, but also their degree of kinship, sex and vital status, in order to obtain a complete picture of the familial burden.

### Therapy and research

This area documents therapeutic measures and participation in research projects for patients with rare diseases. The structured recording of therapies and study participation is essential for the quality of care and the further development of treatment options.

#### Therapy

Therapy documentation covers both drug-based and non-drug treatment approaches:
- Structured therapy plans and recommendations
- Documentation of performed therapies according to the NARSE classification
- Recording of off-label medication
- Combination therapies

#### Research and studies

Involvement in research projects is particularly important for rare diseases:
- Documentation of study enrollments
- Recording of willingness to participate in studies
- Structured requests for study enrollment

These profiles support the networking of care and research and contribute to improving the evidence base for rare diseases.

### Therapy (profiles)

The therapy profiles of the Rare Diseases module enable structured documentation of therapy recommendations and plans for patients with rare diseases. The profiles clearly distinguish between drug-based and non-drug therapy approaches.

#### Overview of the therapy profiles

##### Therapy recommendations

**Drug therapies (MedicationRequest-based):**
- [**Therapy recommendation, medicinal**](StructureDefinition-mii-pr-seltene-therapieempfehlung.html) — individual drug therapy recommendations
  - Systemic therapies (chemotherapy, immunotherapy)
  - Targeted therapies
  - Gene therapies
  - Preventive medication

- [**Therapy recommendation, combination**](StructureDefinition-mii-pr-seltene-therapieempfehlung-kombination.html) — combination therapies with several drugs
  - Multiple medication
  - Sequential therapy schedules

**Non-drug therapies (ServiceRequest-based):**
- [**Therapy recommendation, non-medicinal**](StructureDefinition-mii-pr-seltene-therapieempfehlung-nicht-medikamentoes.html) — non-drug interventions
  - Surgical procedures
  - Physiotherapy and rehabilitation
  - Nutritional therapy
  - Psychological care
  - Genetic counseling

##### Therapy planning

- [**Therapy plan**](StructureDefinition-mii-pr-seltene-therapieplan.html) — overarching treatment plan (CarePlan)
  - Integrates drug-based and non-drug recommendations
  - Coordinates different therapy approaches
  - Documents treatment goals and course

#### Implementation notes

##### Distinguishing the therapy types

The clear separation between drug-based and non-drug therapies is achieved by:

1. **Resource type**:
   - Drug-based → `MedicationRequest`
   - Non-drug → `ServiceRequest`

2. **Coding**:
   - Drugs: ATC, PZN, UNII, INN
   - Procedures: OPS, SNOMED CT, LOINC

3. **Integration in the therapy plan**:
   - CarePlan.activity with corresponding slices
   - References to the respective request resources

##### Workflow

1. **Recommendation**: therapy proposals as "proposal" with status "draft"
2. **Approval**: transition to status "active" and intent "order"
3. **Execution**: documentation via MedicationStatement/Administration or Procedure
4. **Monitoring**: follow-up via Observation and DiagnosticReport

#### Background: Model Project Genome Sequencing

> **Note:** The distinction between **therapy plan** and **therapy recommendation** stems from the requirements of the **Model Project Genome Sequencing** for rare diseases.

In clinical practice for rare diseases, therapy decisions are often made in interdisciplinary case conferences:

- **Therapy recommendations** document the proposals of **consultants** (advising specialist physicians) from the case conference. They represent professional recommendations that have not yet been bindingly implemented.

- **Therapy plans** document the treatment planning by the **attending physicians**, who, taking the recommendations into account, create a concrete treatment plan for the patient.

This separation enables clear traceability of decision-making: which therapies were recommended, which were actually planned and implemented, and what deviations existed between recommendation and implementation.

#### Application examples

##### Marfan syndrome
- Drug-based: ACE inhibitor (losartan) to slow progression
- Non-drug: aortic root replacement in case of dilatation

##### Spinal muscular atrophy (SMA)
- Drug-based: gene therapy (onasemnogene abeparvovec)
- Non-drug: physiotherapy to preserve function

#### Quality assurance

All therapy recommendations should:
- Be linked to diagnoses (`reasonReference`)
- Contain justifications (`note`)
- Specify times (`authoredOn`, `occurrence[x]`)
- Maintain status correctly (draft → active → completed)

### Study

The study profiles of the Rare Diseases module enable structured documentation of study information and study enrollment requests for patients with rare diseases.

#### Demarcation from the Research Study module

> **Note:** Detailed information on medical research projects and studies is represented in the [Research Study module (Modul Medizinische Forschungsvorhaben)](https://www.medizininformatik-initiative.de/Kerndatensatz/Modul_Medizinische_Forschungsvorhaben/IGMIIKDSModulMedizinischeForschungsvorhaben.html) of the Medical Informatics Initiative.
>
> However, the **study enrollment request** profile is currently not contained in the Research Study module and is therefore defined here in the Rare Diseases module. This profile is based on the corresponding [study enrollment request profile from the MTB module](https://www.medizininformatik-initiative.de/Kerndatensatz/KDS_Molekulares_Tumorboard/MIIIGModulMolekularesTumorboard-TechnischeImplementierung-FHIRProfile-Behandlungsepisode-Therapieplan-MTB-Beschluss-Studieneinschlussempfehlung-Studieneinschluss-Anfrage-ServiceRequest.html) and was adapted to the requirements of rare diseases.

#### Overview of the study profiles

##### Study information
- **ResearchStudy**: base profile for study information
  - Documents basic study details
  - Link to detailed information in the [Research Study module](https://www.medizininformatik-initiative.de/Kerndatensatz/Modul_Medizinische_Forschungsvorhaben/IGMIIKDSModulMedizinischeForschungsvorhaben.html)

##### Study enrollment
- [**Study enrollment request**](StructureDefinition-mii-pr-seltene-studieneinschluss-anfrage.html) — ServiceRequest-based profile
  - Recommendation for study participation, though confirmation is not necessarily given
  - Request for study enrollment
  - Based on the MTB module profile

#### Implementation notes

##### Integration with other modules
1. **Research Study module**:
   - For comprehensive study documentation
   - Detailed protocol information
   - Study status and course

2. **Molecular Tumor Board (MTB) module**:
   - Template for the study enrollment request based on an MTB decision
   - Similar workflow patterns

3. **Rare Diseases module**:
   - Specific adaptations for rare diseases
   - Represents study participation according to the Model Project Genome Sequencing and NARSE
   - Integration into the therapy plan via CarePlan

#### Application examples

##### Rare genetic diseases
- Gene therapy studies
- Registry-based studies

##### Orphan drug development
- Phase I/II studies for rare diseases
- Compassionate use programs
- Expanded access programs

<!-- BEGIN GENERATED: artifact-list (scripts/generate-artifact-lists.py) -->

The module defines the following profiles. Each entry links to the generated artefact page with structure, constraints, bindings and examples.

| Title | Id | Purpose |
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
