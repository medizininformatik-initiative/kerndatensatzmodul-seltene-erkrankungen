<!-- TODO:REVIEW machine translation of source page clinical-genetic-diagnosis-guide.md (de) — Migration 2026-08-28, page-map.tsv -->
### Overview

In the modeling of rare diseases we distinguish between two kinds of diagnosis:

1. **Clinical diagnosis** (`MII_PR_SE_ClinicalDiagnosis`) — based on phenotypic features
2. **Genetic diagnosis** (`MII_PR_SE_GeneticDiagnosis`) — molecularly confirmed

This distinction is important because many rare diseases are first suspected clinically and later confirmed genetically.

### Clinical diagnosis

#### Usage

The clinical diagnosis is used when:
- The diagnosis is based on clinical findings and symptoms
- Genetic testing is still pending or not available
- The diagnosis is made phenotypically (e.g. for characteristic syndromes)

#### Specifics

- **HPO codes**: additional slice for Human Phenotype Ontology codes
- **Phenotypic evidence**: evidence.detail references HPO-coded symptom observations
- **Verification status**: typically "provisional" or "differential"
- **Category**: optional specific categorization (e.g. "Syndrome", "Rare disease")

#### FSH example

```fsh
Instance: marfan-clinical-diagnosis
InstanceOf: MII_PR_SE_ClinicalDiagnosis
* verificationStatus = $condition-ver-status#provisional
* category[+] = $condition-category#encounter-diagnosis
* category[clinical] = $SCT#47367009 "Syndrome"
* code.coding[icd10-gm] = $ICD10GM#Q87.4 "Marfan-Syndrom"
* code.coding[orphanet] = http://www.orpha.net#558 "Marfan syndrome"
* code.coding[omim] = http://omim.org#154700 "Marfan syndrome"
* evidence[+].detail = Reference(observation-aortic-dilatation)  // HPO: HP:0002616
* evidence[+].detail = Reference(observation-lens-dislocation)   // HPO: HP:0001083
* evidence[+].detail = Reference(observation-tall-stature)       // HPO: HP:0000098
* extension[ageOfOnset].valueCodeableConcept = http://hpo.jax.org/app/#HP:0003577 "Congenital onset"
* extension[inheritancePattern].valueCodeableConcept = http://hpo.jax.org/app/#HP:0000006 "Autosomal dominant"
```

### Genetic diagnosis

#### Usage

The genetic diagnosis is used when:
- The diagnosis has been confirmed by molecular genetic examination
- Pathogenic variants have been identified
- A definite genetic cause has been demonstrated

#### Specifics

- **OMIM codes**: additional slice for Online Mendelian Inheritance in Man codes
- **MolGen evidence**: evidence.detail MUST reference MolGen resources:
  - `MII_PR_MolGen_Variante` for individual variants
  - `MII_PR_MolGen_DiagnostischeImplikation` for comprehensive genetic reports
- **Verification status**: typically "confirmed"
- **Additional genetic information**: penetrance, genetic basis
- **Category**: MANDATORY: `782964007 | Genetic disease |` for unambiguous labeling

#### FSH example

```fsh
Instance: sma-genetic-diagnosis
InstanceOf: MII_PR_SE_GeneticDiagnosis
* verificationStatus = $condition-ver-status#confirmed
* category[+] = $condition-category#encounter-diagnosis
* category[genetic] = $SCT#782964007 "Genetic disease"
* code.coding[icd10-gm] = $ICD10GM#G12.0 "Infantile spinale Muskelatrophie, Typ I"
* code.coding[orphanet] = http://www.orpha.net#83330 "SMA type 1"
* code.coding[omim] = http://omim.org#253300 "Spinal muscular atrophy, type I"
* evidence[+].code = $SCT#106221001 "Genetic finding"
* evidence[=].detail = Reference(variant-smn1-deletion)  // MolGen Variante
* evidence[+].detail = Reference(diagnostic-report-sma)   // MolGen DiagnostischeImplikation
* extension[geneticBasis].valueCodeableConcept = $SCT#264530000 "Single gene disorder"
* extension[inheritancePattern].valueCodeableConcept = http://hpo.jax.org/app/#HP:0000007 "Autosomal recessive"
* extension[penetrance].valueCodeableConcept = http://hpo.jax.org/app/#HP:0025169 "Complete penetrance"
```

### Parallel diagnosis model

In rare diseases, clinical and genetic diagnoses exist **in parallel**:

#### 1. Suspected diagnosis (screening/initial)

```fsh
* verificationStatus = #provisional
* category = #encounter-diagnosis
```

#### 2. Clinical diagnosis

```fsh
* verificationStatus = #confirmed
* category[clinical] = "clinical"
```

#### 3. Genetic diagnosis (parallel to the clinical one)

```fsh
* verificationStatus = #confirmed
* category[genetic] = $SCT#782964007 "Genetic disease"
```

**Important:** The genetic diagnosis does NOT replace the clinical diagnosis. Both exist in parallel and complement each other.

### Decision tree

The decision flow (rare disease suspected → ClinicalImpression → examinations → phenotypic analysis leading to `MII_PR_SE_ClinicalDiagnosis` with HPO codes and linked HPO symptoms, and/or genetic analysis leading to `MII_PR_SE_GeneticDiagnosis` with OMIM code, linked MolGen variant and diagnostic implication — each ending in status "confirmed") is visualized in the German version of this page as a PlantUML source. The ClinicalImpression links: problem → suspected diagnosis, finding → clinical diagnosis, finding → genetic diagnosis, investigation → examinations. Clinical and genetic diagnoses exist **in parallel** and complement each other.

### Practical notes

#### When to use which profile?

| Situation | Profile | Verification status |
|-----------|--------|-------------------|
| Newborn screening positive | ClinicalDiagnosis | unconfirmed |
| Clinically unambiguous syndrome | ClinicalDiagnosis | provisional |
| Genetically confirmed | GeneticDiagnosis | confirmed |
| Clinically + genetically confirmed | **Both profiles in parallel** | confirmed |
| **Excluded diagnosis** | Corresponding profile | **refuted** |
| Differential diagnosis | ClinicalDiagnosis | differential |

#### Linking diagnoses via ClinicalImpression

The **ClinicalImpression** links the different diagnostic stages:

1. **problem**: reference to the suspected diagnosis (reason for the examination)
2. **finding**: references to the confirmed diagnoses (clinical AND genetic)
3. **investigation**: references to the examinations performed

```fsh
Instance: clinical-impression-se
InstanceOf: ClinicalImpression
* problem[+] = Reference(condition-verdacht)  // starting point
* finding[+].itemReference = Reference(condition-klinisch)  // result
* finding[+].itemReference = Reference(condition-genetisch) // result
* investigation[+].item = Reference(observation-hpo-symptom)
* investigation[+].item = Reference(observation-genetic-variant)
```

Both diagnoses remain as independent resources and document different aspects of the same disease.

#### Evidence linking

**Clinical diagnosis:**
- Evidence → Observation with HPO-coded symptoms
- Evidence → DiagnosticReport with clinical findings
- Evidence → ClinicalImpression with clinical assessment

**Genetic diagnosis:**
- Evidence → MolGen variant (Observation)
- Evidence → MolGen diagnostic implication (DiagnosticReport)
- Evidence → MolGen examined region (Observation)

### Validation

#### Mandatory fields, clinical diagnosis
- [ ] At least one HPO code in the code.coding slice
- [ ] Evidence.detail with reference to phenotypic observations
- [ ] Appropriate verificationStatus

#### Mandatory fields, genetic diagnosis
- [ ] OMIM code if available
- [ ] At least one evidence.detail to a MolGen resource
- [ ] verificationStatus = confirmed (for a confirmed diagnosis)
- [ ] evidence.code with "Genetic finding"

### Excluded diagnoses

#### Important note

**Excluded diagnoses (refuted) MUST also be documented!**

For rare diseases, the documentation of excluded diagnoses is essential for:
- Avoiding redundant diagnostics
- Documenting the diagnostic process
- Supporting differential diagnoses
- Research and registry data

#### Modeling excluded diagnoses

##### Clinically excluded

```fsh
Instance: marfan-excluded-clinical
InstanceOf: MII_PR_SE_ClinicalDiagnosis
* verificationStatus = $condition-ver-status#refuted
* clinicalStatus = $condition-clinical#inactive
* category[clinical] = $SCT#47367009 "Syndrome"
* code.coding[icd10-gm] = $ICD10GM#Q87.4 "Marfan-Syndrom"
* code.coding[orphanet] = http://www.orpha.net#558 "Marfan syndrome"
* note.text = "Marfan-Syndrom klinisch ausgeschlossen. Ghent-Kriterien nicht erfüllt."
```

##### Genetically excluded

```fsh
Instance: sma-excluded-genetic
InstanceOf: MII_PR_SE_GeneticDiagnosis
* verificationStatus = $condition-ver-status#refuted
* clinicalStatus = $condition-clinical#inactive
* category[genetic] = $SCT#782964007 "Genetic disease"
* code.coding[orphanet] = http://www.orpha.net#83330 "SMA"
* code.coding[omim] = http://omim.org#253300 "SMA type I"
* evidence[+].code = $SCT#106221001 "Genetic finding"
* evidence[=].detail = Reference(molgen-smn1-normal)
* note.text = "SMN1-Gen normal (2 Kopien). SMA ausgeschlossen."
```

#### Best practices for excluded diagnoses

1. **Always document when:**
   - A suspected diagnosis has been refuted
   - Genetic tests are negative
   - Differential diagnoses are excluded

2. **Mandatory information:**
   - `verificationStatus = refuted`
   - `clinicalStatus = inactive`
   - Justification in `note.text`
   - Evidence if available

3. **Temporal documentation:**
   - `recordedDate`: when it was excluded
   - `abatementDateTime`: time of exclusion

### Examples

Complete examples can be found in:
- [SMA case example](sma-example-annotations.html) — diagnostic course from screening to genetic confirmation
- [Marfan case example](marfan-example-annotations.html) — clinical diagnosis with phenotypic features
