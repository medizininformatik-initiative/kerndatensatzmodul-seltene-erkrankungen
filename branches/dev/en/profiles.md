# Profiles - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **Profiles**

## Profiles

Where possible, the work on the core data set specifications is based on international standards and terminologies. The [International Patient Summary](https://hl7.org/fhir/uv/ips/history.html) deserves particular mention here. Adaptation to the general conditions of the German healthcare system is achieved by using the [German FHIR base profiles](https://simplifier.net/basisprofil-de-r4) of HL7 Germany. In addition, compatibility with the FHIR specifications of the [National Association of Statutory Health Insurance Physicians (KBV)](https://simplifier.net/organization/kassenrztlichebundesvereinigungkbv) and [gematik](https://simplifier.net/organization/gematik) is sought.

All elements of the core data set, adapted to the details and requirements of the use cases of the Medical Informatics Initiative, are described below in the form of FHIR StructureDefinitions. The rationale for adapting the FHIR profiles is explained in textual form beneath the respective profiles.

### Implementation note for disease-specific codes

> **Note:** The technical implementation of profiles for disease-specific codes (including relevant diagnoses, symptoms, procedures, medications, etc.) can, for example, be realized as a project-specific specification and migrated into the Rare Diseases module in the long term. This allows flexible adaptation to the special requirements of individual projects while at the same time aiming at later standardization and integration into the core module.

## Profile groups

### History and diagnostics

This area comprises all FHIR profiles for the structured recording of history and diagnostics in patients with rare diseases. The profiles enable standardized documentation of the diagnostic process from the initial examination through phenotyping to the final diagnosis.

#### Core areas

History and diagnostics are structured into the following main areas:

* **Diagnosis**: structured recording of clinical and genetic diagnoses with specific codings for rare diseases
* **HPO phenotyping**: detailed documentation of phenotypic features using the Human Phenotype Ontology (HPO)
* **Symptoms**: recording of disease-specific symptoms and their course
* **Examinations**: documentation of clinical impressions and examination results

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

* **[Body mass index observation](StructureDefinition-mii-pr-seltene-bodymassindex.md)**: recording of the BMI as an important parameter for metabolic diseases and syndromes with weight changes
* **[Head circumference observation](StructureDefinition-mii-pr-seltene-kopfumfang.md)**: measurement of the occipital-frontal head circumference, relevant for skeletal dysplasias and neurological diseases (LOINC 9843-4)
* **[Waist circumference observation](StructureDefinition-mii-pr-seltene-taillenumfang.md)**: measurement of the abdominal circumference at navel height, relevant for metabolic diseases and skeletal dysplasias (LOINC 8280-0)
* **[Hip circumference observation](StructureDefinition-mii-pr-seltene-hueftumfang.md)**: measurement at the maximal gluteal protuberance, relevant for body proportions and metabolic assessment (LOINC 56063-1)
* **Waist-to-hip ratio**: calculation of the waist-to-hip ratio from waist and hip circumference

##### Laboratory parameters

* **[Blood group observation](StructureDefinition-mii-pr-seltene-blutgruppe.md)**: structured recording of the blood group including the AB0 system and Rhesus factor

These measurement findings complement clinical phenotyping and support the holistic assessment of the health status of patients with rare diseases.

### Family history

The family history is of central importance in rare diseases, since about 80% of these diseases are of genetic origin. The structured recording of the family history makes it possible to recognize inheritance patterns, identify persons at risk and offer targeted genetic counseling.

#### Relevance for rare diseases

* **Inheritance patterns**: identification of autosomal-dominant, autosomal-recessive, X-linked or mitochondrial inheritance
* **Risk stratification**: assessment of the disease risk for family members
* **Genetic counseling**: basis for well-founded counseling of affected families
* **Diagnostics**: support for diagnosis through familial clustering

The FamilyMemberHistory profile records not only the presence of diseases in relatives, but also their degree of kinship, sex and vital status, in order to obtain a complete picture of the familial burden.

### Therapy and research

This area documents therapeutic measures and participation in research projects for patients with rare diseases. The structured recording of therapies and study participation is essential for the quality of care and the further development of treatment options.

#### Therapy

Therapy documentation covers both drug-based and non-drug treatment approaches:

* Structured therapy plans and recommendations
* Documentation of performed therapies according to the NARSE classification
* Recording of off-label medication
* Combination therapies

#### Research and studies

Involvement in research projects is particularly important for rare diseases:

* Documentation of study enrollments
* Recording of willingness to participate in studies
* Structured requests for study enrollment

These profiles support the networking of care and research and contribute to improving the evidence base for rare diseases.

### Therapy (profiles)

The therapy profiles of the Rare Diseases module enable structured documentation of therapy recommendations and plans for patients with rare diseases. The profiles clearly distinguish between drug-based and non-drug therapy approaches.

#### Overview of the therapy profiles

##### Therapy recommendations

**Drug therapies (MedicationRequest-based):**

* [**Therapy recommendation, medicinal**](StructureDefinition-mii-pr-seltene-therapieempfehlung.md) — individual drug therapy recommendations 
* Systemic therapies (chemotherapy, immunotherapy)
* Targeted therapies
* Gene therapies
* Preventive medication
 
* [**Therapy recommendation, combination**](StructureDefinition-mii-pr-seltene-therapieempfehlung-kombination.md) — combination therapies with several drugs 
* Multiple medication
* Sequential therapy schedules
 

**Non-drug therapies (ServiceRequest-based):**

* [**Therapy recommendation, non-medicinal**](StructureDefinition-mii-pr-seltene-therapieempfehlung-nicht-medikamentoes.md) — non-drug interventions 
* Surgical procedures
* Physiotherapy and rehabilitation
* Nutritional therapy
* Psychological care
* Genetic counseling
 

##### Therapy planning

* [**Therapy plan**](StructureDefinition-mii-pr-seltene-therapieplan.md) — overarching treatment plan (CarePlan) 
* Integrates drug-based and non-drug recommendations
* Coordinates different therapy approaches
* Documents treatment goals and course
 

#### Implementation notes

##### Distinguishing the therapy types

The clear separation between drug-based and non-drug therapies is achieved by:

1. **Resource type**:
* Drug-based → `MedicationRequest`
* Non-drug → `ServiceRequest`

1. **Coding**:
* Drugs: ATC, PZN, UNII, INN
* Procedures: OPS, SNOMED CT, LOINC

1. **Integration in the therapy plan**:
* CarePlan.activity with corresponding slices
* References to the respective request resources

##### Workflow

1. **Recommendation**: therapy proposals as "proposal" with status "draft"
1. **Approval**: transition to status "active" and intent "order"
1. **Execution**: documentation via MedicationStatement/Administration or Procedure
1. **Monitoring**: follow-up via Observation and DiagnosticReport

#### Background: Model Project Genome Sequencing

> **Note:** The distinction between **therapy plan** and **therapy recommendation** stems from the requirements of the **Model Project Genome Sequencing** for rare diseases.

In clinical practice for rare diseases, therapy decisions are often made in interdisciplinary case conferences:

* **Therapy recommendations** document the proposals of **consultants** (advising specialist physicians) from the case conference. They represent professional recommendations that have not yet been bindingly implemented.
* **Therapy plans** document the treatment planning by the **attending physicians**, who, taking the recommendations into account, create a concrete treatment plan for the patient.

This separation enables clear traceability of decision-making: which therapies were recommended, which were actually planned and implemented, and what deviations existed between recommendation and implementation.

#### Application examples

##### Marfan syndrome

* Drug-based: ACE inhibitor (losartan) to slow progression
* Non-drug: aortic root replacement in case of dilatation

##### Spinal muscular atrophy (SMA)

* Drug-based: gene therapy (onasemnogene abeparvovec)
* Non-drug: physiotherapy to preserve function

#### Quality assurance

All therapy recommendations should:

* Be linked to diagnoses (`reasonReference`)
* Contain justifications (`note`)
* Specify times (`authoredOn`, `occurrence[x]`)
* Maintain status correctly (draft → active → completed)

### Study

The study profiles of the Rare Diseases module enable structured documentation of study information and study enrollment requests for patients with rare diseases.

#### Demarcation from the Research Study module

> **Note:** Detailed information on medical research projects and studies is represented in the [Research Study module (Modul Medizinische Forschungsvorhaben)](https://www.medizininformatik-initiative.de/Kerndatensatz/Modul_Medizinische_Forschungsvorhaben/IGMIIKDSModulMedizinischeForschungsvorhaben.html) of the Medical Informatics Initiative.However, the **study enrollment request** profile is currently not contained in the Research Study module and is therefore defined here in the Rare Diseases module. This profile is based on the corresponding [study enrollment request profile from the MTB module](https://www.medizininformatik-initiative.de/Kerndatensatz/KDS_Molekulares_Tumorboard/MIIIGModulMolekularesTumorboard-TechnischeImplementierung-FHIRProfile-Behandlungsepisode-Therapieplan-MTB-Beschluss-Studieneinschlussempfehlung-Studieneinschluss-Anfrage-ServiceRequest.html) and was adapted to the requirements of rare diseases.

#### Overview of the study profiles

##### Study information

* **ResearchStudy**: base profile for study information 
* Documents basic study details
* Link to detailed information in the [Research Study module](https://www.medizininformatik-initiative.de/Kerndatensatz/Modul_Medizinische_Forschungsvorhaben/IGMIIKDSModulMedizinischeForschungsvorhaben.html)
 

##### Study enrollment

* [**Study enrollment request**](StructureDefinition-mii-pr-seltene-studieneinschluss-anfrage.md) — ServiceRequest-based profile 
* Recommendation for study participation, though confirmation is not necessarily given
* Request for study enrollment
* Based on the MTB module profile
 

#### Implementation notes

##### Integration with other modules

1. **Research Study module**:
* For comprehensive study documentation
* Detailed protocol information
* Study status and course

1. **Molecular Tumor Board (MTB) module**:
* Template for the study enrollment request based on an MTB decision
* Similar workflow patterns

1. **Rare Diseases module**:
* Specific adaptations for rare diseases
* Represents study participation according to the Model Project Genome Sequencing and NARSE
* Integration into the therapy plan via CarePlan

#### Application examples

##### Rare genetic diseases

* Gene therapy studies
* Registry-based studies

##### Orphan drug development

* Phase I/II studies for rare diseases
* Compassionate use programs
* Expanded access programs

