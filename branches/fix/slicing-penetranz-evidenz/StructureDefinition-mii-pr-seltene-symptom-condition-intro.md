<!-- TODO:REVIEW machine translation (en) of intro note; Quelle: MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/AnamneseUndDiagnostik/Symptom-Condition.page.md (Simplifier-Guide 2026.0.1, migriert 2026-08-28, Direktiven gestript) -->
This profile describes symptom-based conditions in the context of rare diseases.
It records symptomatic conditions with temporal characteristics and complements the HPO assessment observation profile.

### Examples of coded symptoms

Different coding systems can be used when recording symptoms of rare diseases:

#### ICD-10-GM codes
- **R04.0** (epistaxis/nosebleed) — a common symptom in von Willebrand syndrome
- **S42.3** (fracture of the humeral shaft) — a typical pathological fracture in osteogenesis imperfecta

#### SNOMED CT codes for laboratory abnormalities
- **409675001** (Partial thromboplastin time increased) — prolonged PTT in coagulation disorders
- **166627004** (Serum alkaline phosphatase above reference range) — elevated alkaline phosphatase in bone metabolism disorders
- **1153490002** (Serum creatine kinase above reference range) — elevated CK in muscular dystrophies

#### HPO codes for physical phenotypes
HPO is ideal for the precise description of physical/phenotypic abnormalities:
- **HP:0000978** (Bruising susceptibility) — tendency to hematomas in von Willebrand syndrome
- **HP:0002659** (Increased susceptibility to fractures) — fracture tendency in osteogenesis imperfecta
- **HP:0000939** (Osteoporosis) — in various skeletal dysplasias
- **HP:0003198** (Myopathy) — in muscular dystrophies
- **HP:0001270** (Motor delay) — delayed motor development in neuromuscular diseases

#### MONDO codes (secondary harmonization ontology)

> **Note:** MONDO is a **secondary harmonization ontology** for improving international interoperability. Primary coding continues to use ICD-10-GM, SNOMED CT or HPO. MONDO codes can be added **optionally**.

MONDO (Monarch Disease Ontology) harmonizes different classifications (SNOMED CT, Orphanet, OMIM, ICD) and enables integration with international standards such as [Phenopackets](https://phenopacket-schema.readthedocs.io/) and GA4GH:
- **MONDO:0007947** (Marfan syndrome) — corresponds to Orpha:558, OMIM:154700
- **MONDO:0001516** (spinal muscular atrophy) — corresponds to Orpha:70
- **MONDO:0009061** (cystic fibrosis) — corresponds to Orpha:586, OMIM:219700

Further information on MONDO can be found under [Terminologies](code-systems.html).

---

### Usage

The symptom condition profile is used for:
- Documenting symptoms as independent conditions
- Recording symptom courses over time
- Linking with HPO-coded observations
- Representing symptom clusters in rare diseases

### Demarcation from other profiles

| Profile | Usage |
|--------|------------|
| **Symptom condition** | Symptoms as independent conditions with a course |
| **HPO assessment** | Individual phenotypic observations |
| **Clinical diagnosis** | Confirmed clinical diagnoses |
| **Genetic diagnosis** | Genetically confirmed diagnoses |

> **Important:** The distinction between the **symptom condition** and the **HPO observation** is clinically significant:
> - **Symptom condition**: documents a **persistent state** over a period (e.g. "the patient has had arachnodactyly since childhood")
> - **HPO observation**: documents a **single examination/assessment** at a specific point in time (e.g. "arachnodactyly was observed on 2024-03-15")

A complete example of this distinction can be found in the **Marfan syndrome example**: [Marfan example](marfan-example-annotations.html)

---

**Search parameters**

The following search parameters are relevant for the Rare Diseases module, also in combination:

1. The search parameter ```_id``` MUST be supported:

    Examples: 

    ```GET [base]/Condition?_id=1234```
    
    Usage notes: Further information on searching for "_id" can be found in the [FHIR base specification, section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter "_profile" MUST be supported:

    Examples:
    
    ```GET [base]/Condition?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-symptom-condition```
    
    Usage notes: Further information on searching for "_profile" can be found in the [FHIR base specification, section "token"](http://hl7.org/fhir/R4/search.html#all).

3. The search parameter "category" MUST be supported:

    Examples:

    ```GET [base]/Condition?category=http://snomed.info/sct|418799008```

    Usage notes: Further information on searching for "category" can be found in the FHIR base specification, section "token".

4. The search parameter "code" MUST be supported:

    Examples:

    ```GET [base]/Condition?code=http://hpo.jax.org/app/|HP:0001324```

    Usage notes: Further information on searching for "code" can be found in the FHIR base specification, section "token".

5. The search parameter "subject" MUST be supported:

    Examples:

    ```GET [base]/Condition?subject=Patient/example```

    Usage notes: Further information on searching for "subject" can be found in the FHIR base specification, section "reference".

6. The search parameter "onset-date" MUST be supported:

    Examples:

    ```GET [base]/Condition?onset-date=2024-02-08```

    Usage notes: Further information on searching for "onset-date" can be found in the FHIR base specification, section "date".

7. The search parameter "severity" MUST be supported:

    Examples:

    ```GET [base]/Condition?severity=http://hpo.jax.org/app/|HP:0012828```

    Usage notes: Further information on searching for "severity" can be found in the FHIR base specification, section "token".

8. The search parameter "evidence" MUST be supported:

    Examples:

    ```GET [base]/Condition?evidence=Observation/example```

    Usage notes: Further information on searching for "evidence" can be found in the FHIR base specification, section "reference".

Example instances are linked in the "Examples" section of the profile page.
