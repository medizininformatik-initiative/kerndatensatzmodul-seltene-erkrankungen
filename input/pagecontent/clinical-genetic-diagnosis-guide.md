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

![Clinical versus genetic diagnosis — structural comparison](diagnose-klinisch-vs-genetisch.svg)

The spelled-out instances live with the profiles themselves; what matters here is the difference, not the syntax.

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

### Parallel diagnosis model

In rare diseases, clinical and genetic diagnoses exist **in parallel**:

#### 1. Suspected diagnosis (screening/initial)

![Parallel diagnosis model](diagnose-parallelmodell.svg)

#### 2. Clinical diagnosis

#### 3. Genetic diagnosis (parallel to the clinical one)

**Important:** The genetic diagnosis does NOT replace the clinical diagnosis. Both exist in parallel and complement each other.

### Decision tree

![Decision tree: which diagnosis profile when](diagnose-entscheidungsbaum.svg)

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

##### Genetically excluded

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
