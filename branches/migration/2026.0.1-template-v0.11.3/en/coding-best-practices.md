# Coding Best Practices - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Guidance**](guidance.md)
* **Coding Best Practices**

## Coding Best Practices

### Avoiding redundancy

#### Problem

Not every diagnosis needs every available coding system. Excessive multiple coding can lead to:

* Redundancy and data bloat
* Inconsistencies between different coding systems
* Reduced maintainability

#### Solution: targeted coding

### Recommended coding strategy

#### 1. Primary coding systems by diagnosis type

##### For CLINICAL diagnoses

* **ICD-10-GM:** mandatory (billing/statistics in the German healthcare system)
* **Orpha codes:** mandatory for rare diseases
* **HPO codes:** recommended for phenotypic description

##### For GENETIC diagnoses

* **Orpha codes:** mandatory for rare diseases
* **OMIM codes:** strongly recommended for genetic entities
* **ICD-10-GM:** optional (often unspecific for genetic variants)

#### 2. Context-dependent coding systems

##### HPO codes

* **Use for:** clinical diagnoses (`MII_PR_SE_ClinicalDiagnosis`)
* **Purpose:** phenotypic description
* **Optional for:** genetic diagnoses (if the phenotype is relevant)

##### OMIM codes

* **Use for:** genetic diagnoses (`MII_PR_SE_GeneticDiagnosis`)
* **Purpose:** genetic disease entity
* **Do not use for:** purely clinical diagnoses without genetic confirmation

##### SNOMED CT

* **Use when:** 
* No more specific coding is available
* International interoperability is required
* Complex clinical concepts need to be represented
 
* **Avoid when:** Orpha/OMIM are sufficient

### Decision matrix

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| Clinical RD diagnosis | ✅ Mandatory | ✅ Mandatory | ✅ Recommended | ❌ Do not use | ⚠️ Optional |
| Genetic RD diagnosis | ⚠️ Optional | ✅ Mandatory | ⚠️ Optional | ✅ Strongly recommended | ⚠️ Optional |
| Suspected diagnosis | ✅ Mandatory | ⚠️ If possible | ✅ For symptoms | ❌ Do not use | ⚠️ Optional |

### Practical examples

#### ✅ CORRECT: focused coding

##### Clinical diagnosis (ICD-10-GM required)

```
Instance: marfan-clinical-focused
InstanceOf: MII_PR_SE_ClinicalDiagnosis
* code.coding[icd10-gm] = $ICD10GM#Q87.4 "Marfan-Syndrom"
* code.coding[orphanet] = http://www.orpha.net#558 "Marfan syndrome"
* code.coding[omim] = http://omim.org#154700 "Marfan syndrome"
// OMIM used for genetic coding

```

##### Genetic diagnosis (ICD-10-GM optional)

```
Instance: sma-genetic-focused
InstanceOf: MII_PR_SE_GeneticDiagnosis
* code.coding[orphanet] = http://www.orpha.net#83330 "SMA type 1"
* code.coding[omim] = http://omim.org#253300 "Spinal muscular atrophy, type I"
// ICD-10-GM can be omitted for a purely genetic diagnosis
// HPO optional, only if the phenotype is to be documented

```

##### Genetic diagnosis with ICD-10 (if clinically relevant)

```
Instance: cf-genetic-with-clinical
InstanceOf: MII_PR_SE_GeneticDiagnosis
* code.coding[icd10-gm] = $ICD10GM#E84.0 "Zystische Fibrose mit Lungenmanifestationen"
* code.coding[orphanet] = http://www.orpha.net#586 "Cystic fibrosis"
* code.coding[omim] = http://omim.org#219700 "Cystic fibrosis"
// ICD-10 useful here because the clinical manifestation is specified

```

#### ❌ WRONG: excessive coding

```
Instance: overencoded-diagnosis
InstanceOf: Condition
* code.coding[0] = $ICD10GM#Q87.4 "Marfan-Syndrom"
* code.coding[1] = http://www.orpha.net#558 "Marfan syndrome"
* code.coding[2] = $SCT#19346006 "Marfan syndrome"
* code.coding[3] = http://omim.org#154700 "Marfan syndrome"
* code.coding[4] = $UMLS#C0024796 "Marfan Syndrome"
* code.coding[5] = $MeSH#D008382 "Marfan Syndrome"
// Too many redundant codes!

```

### Special scenarios

#### Diagnosis progression

When modeling diagnostic courses:

1. **Suspicion**(screening)
* ICD-10-GM: mandatory
* Orpha: if a specific RD is suspected
* HPO: for symptom description
* OMIM: do not use

1. **Clinical diagnosis**
* ICD-10-GM: mandatory
* Orpha: mandatory
* HPO: recommended
* OMIM: do not use

1. **Genetically confirmed**
* ICD-10-GM: optional (only if clinically relevant)
* Orpha: mandatory
* HPO: optional (if phenotypically relevant)
* OMIM: strongly recommended

#### Purely genetic vs. clinical-genetic diagnoses

##### Purely genetic findings

```
// Example: carrier status without symptoms
Instance: carrier-status-sma
InstanceOf: MII_PR_SE_GeneticDiagnosis
* code.coding[orphanet] = http://www.orpha.net#83330 "SMA"
* code.coding[omim] = http://omim.org#253300 "SMA type I"
* code.text = "Heterozygote SMN1-Mutation (Anlageträger)"
// No ICD-10, since no clinical manifestation

```

##### Clinical-genetic diagnosis

```
// Example: symptomatic patient with genetic confirmation
Instance: symptomatic-genetic-diagnosis
InstanceOf: MII_PR_SE_GeneticDiagnosis
* code.coding[icd10-gm] = $ICD10GM#G12.0 "Infantile spinale Muskelatrophie"
* code.coding[orphanet] = http://www.orpha.net#83330 "SMA type 1"
* code.coding[omim] = http://omim.org#253300 "SMA type I"
// ICD-10 useful, since a clinical manifestation is present

```

### Quality criteria

#### Minimal requirements

##### Clinical diagnosis

* ICD-10-GM code present
* Orpha code for the rare disease
* Appropriate verificationStatus

##### Genetic diagnosis

* Orpha code for the rare disease
* OMIM code (if available)
* Evidence link to MolGen resources
* Appropriate verificationStatus (usually "confirmed")

#### Optimal coding

* No redundant codes
* Context-appropriate use of HPO/OMIM
* Clear separation between clinical and genetic diagnosis
* Evidence linking appropriate to the diagnosis type

### When to use ICD-10-GM for genetic diagnoses?

#### ✅ ICD-10-GM useful for:

* Symptomatic patients
* Clinically manifest diseases
* When specific clinical subtypes are coded (e.g. CF with pulmonary manifestations)
* Diagnoses relevant to billing

#### ❌ Omit ICD-10-GM for:

* Pure carriers without symptoms
* Predictive genetic tests
* Genetic variants of unclear significance (VUS)
* When ICD-10 offers no adequate specificity

### Important note: excluded diagnoses

#### ⚠️ MANDATORY: documentation of excluded diagnoses

**Excluded diagnoses (refuted) MUST also be coded and documented!**

This applies in particular to:

* Suspected diagnoses that were refuted
* Differential diagnoses that were excluded
* Negative genetic test results for suspected diseases

##### Coding excluded diagnoses

```
* verificationStatus = #refuted
* clinicalStatus = #inactive
* code.coding[orphanet] = // Orpha code of the excluded disease
* note.text = // justification of the exclusion

```

##### Why is this important?

* **Avoiding redundant diagnostics**: tests already performed are not repeated
* **Complete documentation**: the diagnostic process remains traceable
* **Research**: important for epidemiology and differential diagnostics
* **Patient safety**: prevents unnecessary examinations

### Summary

**Basic principle:** as much as necessary, as little as possible

1. **Clinical diagnosis:**ICD-10-GM + Orpha + HPO
1. **Genetic diagnosis:**Orpha + OMIM (ICD-10-GM only if clinically relevant)
1. **Excluded diagnosis:**same coding + verificationStatus = refuted
1. **SNOMED CT:**only if it adds value
1. **Other systems:**only in justified exceptional cases

The choice of coding systems should take into account the context of the diagnosis (clinical vs. genetic) and the purpose (billing, research, registration).

