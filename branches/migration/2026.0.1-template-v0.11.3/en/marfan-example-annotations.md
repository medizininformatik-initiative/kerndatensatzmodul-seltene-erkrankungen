# Case Example Marfan Syndrome - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **Case Example Marfan Syndrome**

## Case Example Marfan Syndrome

### Overview

This document contains the semantic annotations for a case example of Marfan syndrome in a 19-year-old male patient.

### Timeline

#### 1. Ophthalmological presentation (2024-10-15)

* **Reason**: cataract consultation
* **Finding**: bilateral cataract
* **Setting**: outpatient
* **Further procedure**: surgery planning

#### 2. Cataract surgery (2024-11-12)

* **Procedure**: phacoemulsification with lens implantation
* **Setting**: outpatient/day clinic
* **Complications**: none
* **Finding**: successful lens implantation

#### 3. First cardiological presentation (2024-12-15)

* **Reason for referral**: chest pain, suspected Marfan syndrome
* **Diagnosis**: Marfan syndrome confirmed
* **Findings**: 
* Aortic root dilatation (48 mm)
* Aortic valve regurgitation grade II
* Mitral valve regurgitation grade I
 
* **Therapy**: losartan 50 mg once daily initiated

#### 4. Planned aortic root replacement surgery (2025-03-15)

* **Procedure**: composite graft implantation (David procedure)
* **Setting**: inpatient, planned
* **Indication**: progressive aortic root dilatation in Marfan syndrome

### Semantic annotations

#### Patient

* **Sex**: male
* **Date of birth**: ~2005 (19 years old)
* **Body height**: 2.13 m (pathologically increased)
* **Characteristics**: 
* Leg length discrepancy (right shortened)
* Marfanoid habitus
 

#### Phenotypic features

##### Skeletal manifestations

1. **Tall stature**:
* **HPO**: HP:0000098 "Tall stature"
* **Value**: 2.13 m
* **Percentile**: >99th percentile

1. **Leg length discrepancy**:
* **HPO**: HP:0100559 "Lower limb asymmetry"
* **Description**: right leg shortened
* **SNOMED CT**: 707738004 "Leg length discrepancy"

##### Cardiovascular manifestations

1. **Chest pain**:
* **HPO**: HP:0100749 "Chest pain"
* **SNOMED CT**: 29857009 "Chest pain"
* **Onset**: acute

1. **Aortic root dilatation**:
* **HPO**: HP:0002616 "Aortic root aneurysm"
* **SNOMED CT**: 251036003 "Aortic root dilatation"
* **Measurement**: 48 mm (pathologically dilated)

1. **Aortic valve regurgitation**:
* **HPO**: HP:0001659 "Aortic regurgitation"
* **SNOMED CT**: 60234000 "Aortic valve regurgitation"
* **Severity**: grade II (moderate)

1. **Mitral valve regurgitation**:
* **HPO**: HP:0001653 "Mitral regurgitation"
* **SNOMED CT**: 48724000 "Mitral valve regurgitation"
* **Severity**: grade I (mild)

##### Ophthalmological manifestations

1. **Cataract**:
* **HPO**: HP:0000518 "Cataract"
* **ICD-10-GM**: H26.9 "Cataract, unspecified"
* **SNOMED CT**: 193570009 "Cataract"
* **Localization**: bilateral

#### Diagnoses

1. **Main diagnosis**:
* **Name**: Marfan syndrome
* **ICD-10-GM**: Q87.4 "Marfan syndrome"
* **Orpha**: 558 "Marfan syndrome"
* **SNOMED CT**: 19346006 "Marfan syndrome"
* **OMIM**: 154700
* **Status**: clinically confirmed
* **Date of determination**: 2024-12-15

1. **Secondary diagnosis**:
* **Name**: cataract
* **ICD-10-GM**: H26.9 "Cataract, unspecified"
* **Status**: surgically treated

#### Procedures

1. **Cataract surgery**:
* **OPS code**: 5-144.5a "Extracapsular extraction of the lens [ECCE]: phacoemulsification: with insertion of a capsule-fixated posterior chamber lens, monofocal intraocular lens"
* **SNOMED CT**: 54885007 "Phacoemulsification of cataract with intraocular lens implantation"
* **Date**: 2024-11-12
* **Status**: completed

1. **Planned aortic root replacement surgery**:
* **OPS code**: 5-354.0a "Other operations on heart valves: aortic valve: valve reconstruction"
* **SNOMED CT**: 119564002 "Aortic root replacement"
* **Planned date**: 2025-03-15
* **Status**: planned
* **Technique**: David procedure (valve-sparing root replacement)

#### Medication

1. **Losartan**:
* **ATC code**: C09CA01
* **Dose**: 50 mg
* **Frequency**: once daily
* **Indication**: slowing the progression of aortic root dilatation
* **Start date**: 2024-12-15
* **SNOMED CT**: 387069000 "Losartan"

#### Diagnostic examinations

##### Echocardiography (2024-12-15)

1. **Aortic root diameter**:
* **LOINC**: 79992-2 "Aortic root diameter by US"
* **Value**: 48 mm
* **Interpretation**: pathologically dilated

1. **Aortic valve regurgitation grade**:
* **LOINC**: 80140-5 "Aortic valve regurgitation severity by US"
* **Value**: grade II
* **Interpretation**: moderate

1. **Mitral valve regurgitation grade**:
* **LOINC**: 80186-8 "Mitral valve regurgitation severity by US"
* **Value**: grade I
* **Interpretation**: mild

#### Treatment plan

* **Cardiological monitoring**: echocardiography every 6 months
* **Drug therapy**: continuation of losartan
* **Surgical therapy**: elective aortic root replacement surgery on 2025-03-15
* **Genetic counseling**: recommended for family planning
* **Ophthalmological follow-up**: post-operative check-ups

### FHIR mapping

#### Profiles used

* **Patient**: MII KDS Patient
* **Diagnosis**: MII PR SE Diagnose
* **Symptom/phenotype**: MII PR SE Symptom
* **Procedure**: MII PR Prozedur
* **MedicationStatement**: MII PR Medikation MedicationStatement
* **Observation**: MII PR Labor Observation
* **Encounter**: MII PR Encounter
* **ClinicalImpression**: MII PR SE ClinicalImpression

#### Resource overview

##### Patient and phenotype

| Resource ID | Type | Description | Date | Status/details | |————–|—–|————–|——-|—————-| | `mii-exa-seltene-patient-marfan-001` | Patient | 19-year-old man | Birth: ~2005 | ID: MRF-2024-001 | | `mii-exa-seltene-observation-height-001` | Observation | Body height | 2024-12-15 | 2.13 m (HPO:0000098) | | `mii-exa-seltene-observation-leg-asymmetry` | Observation | Leg length discrepancy | 2024-12-15 | Right shortened (HPO:0100559) |

##### Symptoms and findings

| Resource ID | Type | Description | Date | HPO code | Severity | |————–|—–|————–|——-|———-|————-| | `mii-exa-seltene-symptom-chest-pain` | Observation | Chest pain | 2024-12-15 | HP:0100749 | Acute | | `mii-exa-seltene-symptom-aortic-root` | Observation | Aortic root dilatation | 2024-12-15 | HP:0002616 | 48 mm | | `mii-exa-seltene-symptom-aortic-regurg` | Observation | Aortic valve regurgitation | 2024-12-15 | HP:0001659 | Grade II | | `mii-exa-seltene-symptom-mitral-regurg` | Observation | Mitral valve regurgitation | 2024-12-15 | HP:0001653 | Grade I | | `mii-exa-seltene-symptom-cataract` | Observation | Bilateral cataract | 2024-10-15 | HP:0000518 | Bilateral |

##### Diagnoses

| Resource ID | Type | Description | Date of determination | ICD-10 | Orpha | |————–|—–|————–|——————-|———|——-| | `condition-marfan-confirmed` | Condition | Marfan syndrome | 2024-12-15 | Q87.4 | 558 | | `mii-exa-seltene-condition-cataract` | Condition | Bilateral cataract | 2024-10-15 | H26.9 | - |

##### Procedures

| Resource ID | Type | Description | Date | OPS code | Status | |————–|—–|————–|——-|———-|———| | `mii-exa-seltene-procedure-cataract-surgery` | Procedure | Phacoemulsification with IOL | 2024-11-12 | 5-144.5a | Completed | | `mii-exa-seltene-procedure-aortic-planned` | Procedure | Aortic root replacement (David procedure) | 2025-03-15 | 5-354.0a | Planned |

##### Medication

| Resource ID | Type | Drug | Dose | Start | Indication | |————–|—–|————|———–|——-|————| | `mii-exa-seltene-medication-losartan` | MedicationStatement | Losartan | 50 mg once daily | 2024-12-15 | Aortic protection |

##### Diagnostics

| Resource ID | Type | Examination | Date | Key findings | |————–|—–|————–|——-|——————| | `mii-exa-seltene-observation-echo-aortic` | Observation | Aortic root echo | 2024-12-15 | 48 mm (pathological) | | `mii-exa-seltene-observation-echo-av` | Observation | AV regurgitation echo | 2024-12-15 | Grade II | | `mii-exa-seltene-observation-echo-mv` | Observation | MV regurgitation echo | 2024-12-15 | Grade I |

##### Encounters

| Resource ID | Type | Description | Date | Setting | Specialty | |————–|—–|————–|——-|———|————-| | `mii-exa-seltene-encounter-ophthalmology` | Encounter | Ophthalmological consultation | 2024-10-15 | Outpatient | Ophthalmology | | `mii-exa-seltene-encounter-cataract-surgery` | Encounter | Cataract surgery | 2024-11-12 | Day clinic | Ophthalmology | | `mii-exa-seltene-encounter-cardiology` | Encounter | First cardiological presentation | 2024-12-15 | Outpatient | Cardiology | | `mii-exa-seltene-encounter-surgery-planned` | Encounter | Planned cardiac surgery | 2025-03-15 | Inpatient | Cardiac surgery |

##### Clinical assessments

| Resource ID | Type | Description | Date | Key aspects | |————–|—–|————–|——-|——————| | `clinical-impression-cardiology` | ClinicalImpression | Cardiological assessment | 2024-12-15 | Marfan confirmed, indication for surgery |

#### Bundle

| Resource ID | Type | Description | Number of entries | |————–|—–|————–|—————–| | `mii-exa-seltene-bundle-marfan-complete` | Bundle | Transaction bundle with all resources | 20 resources |

### Resource diagrams

#### Overall view of all resources and their relationships

![](Marfan_Case_Resources_Diagram.svg)

#### Timeline

![](Marfan_Case_Timeline_Diagram.svg)

### Implementation

The complete FHIR resources are defined in the FSH sources of this module (`input/fsh/Beispiel_Marfan/`), including the transaction bundle.

