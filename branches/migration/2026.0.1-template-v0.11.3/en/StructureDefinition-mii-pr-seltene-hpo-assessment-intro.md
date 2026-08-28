<!-- TODO:REVIEW machine translation (en) of intro note; Quelle: MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/AnamneseUndDiagnostik/HPO-Phaenotypisierung-Observation.page.md (Simplifier-Guide 2026.0.1, migriert 2026-08-28, Direktiven gestript) -->
This profile describes phenotyping according to the Human Phenotype Ontology (HPO) in the diagnostics of rare diseases.
It enables the structured recording of phenotypic abnormalities and clinical features.

### HL7 Phenomics IG pattern

This profile follows the **HL7 Phenomics Exchange Implementation Guide** pattern for documenting phenotypic features. This means:

- **`value[x]` is not used** — instead, status and severity are recorded in `component` elements
- **`component[status]`** documents whether the phenotype is present (Present) or explicitly excluded (Absent)
- **`component[severity]`** allows specifying a severity (Mild, Moderate, Severe, Profound, Borderline)

This pattern enables more precise and internationally interoperable documentation of phenotypic findings.

### Point-in-time documentation

**Important:** Each HPO observation represents a **specific point in time** of the phenotype assessment. Since phenotypes can change over the course of a disease, it is essential to:

- Document **individual observations** with precise timestamps (`effectiveDateTime`)
- Record **changes over time** via the `component[status].interpretation` element
- Consider **parallel documentation** both as an Observation (point in time) and as a symptom condition (period)

**Note on date recording:** The date (`effectiveDateTime`) is **not** part of the core data sets but **SHOULD** be recorded whenever possible to ensure the temporal traceability of the phenotype development.

This point-in-time recording enables the traceability of disease progression and therapy effects in rare diseases.

### Demarcation from the symptom condition

> **Important:** The distinction between the **HPO observation** and the **symptom condition** is clinically significant:
> - **HPO observation**: documents a **single examination/assessment** at a specific point in time (e.g. "arachnodactyly was observed on 2024-03-15")
> - **Symptom condition**: documents a **persistent state** over a period (e.g. "the patient has had arachnodactyly since childhood")

A complete example of this distinction can be found in the **Marfan syndrome example**: [Marfan example](marfan-example-annotations.html)

There it is shown how:
- Individual HPO observations are recorded at different examination appointments
- These observations serve as evidence for persistent symptom conditions
- Multiple confirmations of the same phenotype increase diagnostic certainty

### Linking with evidence

The `derivedFrom` element enables linking the HPO observation with concrete clinical findings:
- **Laboratory values**: reference to abnormal laboratory results (e.g. elevated CK values in muscular dystrophy)
- **Imaging**: reference to radiological or other imaging findings
- **Other observations**: linking with further clinical assessments

This referencing creates transparency about the basis of the phenotypic assessment.

### Phenotype status (Present/Absent)

The `component[status]` element documents whether a phenotype is present or explicitly excluded. This enables the precise documentation of "negative" findings (the phenotype was checked and is not present).

```json
{
  "component": [{
    "code": {
      "coding": [{
        "system": "http://snomed.info/sct",
        "code": "260411009",
        "display": "Presence findings"
      }]
    },
    "valueCodeableConcept": {
      "coding": [{
        "system": "http://loinc.org",
        "code": "LA9633-4",
        "display": "Present"
      }]
    }
  }]
}
```

#### Available status codes

| LOINC code | Display | Description |
|------------|---------|--------------|
| LA9633-4 | Present | The phenotype is present |
| LA9634-2 | Absent | The phenotype is explicitly excluded |

### Severity

The optional `component[severity]` element enables documenting the severity of a phenotype according to the HPO severity ontology:

```json
{
  "component": [{
    "code": {
      "coding": [{
        "system": "http://purl.obolibrary.org/obo/hp.owl",
        "code": "HP:0012824",
        "display": "Severity"
      }]
    },
    "valueCodeableConcept": {
      "coding": [{
        "system": "http://purl.obolibrary.org/obo/hp.owl",
        "code": "HP:0012826",
        "display": "Moderate"
      }]
    }
  }]
}
```

#### Available severity codes

| HPO code | Display | Description |
|----------|---------|--------------|
| HP:0012825 | Mild | Mild manifestation |
| HP:0012826 | Moderate | Moderate manifestation |
| HP:0012828 | Severe | Severe manifestation |
| HP:0012829 | Profound | Very severe manifestation |
| HP:0012827 | Borderline | Borderline manifestation |

### Change status of HPO phenotypes

In accordance with the requirements of the Model Project Genome Sequencing, this profile supports the documentation of changes in HPO phenotypes over time. The change status is documented in the `component[status].interpretation` element, together with the presence status:

```json
{
  "component": [{
    "code": {
      "coding": [{
        "system": "http://snomed.info/sct",
        "code": "260411009",
        "display": "Presence findings"
      }]
    },
    "valueCodeableConcept": {
      "coding": [{
        "system": "http://loinc.org",
        "code": "LA9633-4",
        "display": "Present"
      }]
    },
    "interpretation": [{
      "coding": [{
        "system": "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-hpo-change-status",
        "code": "improved",
        "display": "Verbessert"
      }]
    }]
  }]
}
```

#### Available change status codes

| Code | Display | Description |
|------|---------|--------------|
| newly-added | Newly added | The phenotype was newly observed/diagnosed |
| improved | Improved | The phenotype has improved |
| degraded | Degraded | The phenotype has worsened |
| no-longer-observed | No longer observed | The phenotype is no longer observed/has disappeared |
| unchanged | Unchanged | The phenotype has remained unchanged |

---

**Search parameters**

The following search parameters are relevant for the Rare Diseases module, also in combination:

1. The search parameter ```_id``` MUST be supported:

    Examples: 

    ```GET [base]/Observation?_id=1234```
    
    Usage notes: Further information on searching for "_id" can be found in the [FHIR base specification, section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter "_profile" MUST be supported:

    Examples:
    
    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment```
    
    Usage notes: Further information on searching for "_profile" can be found in the [FHIR base specification, section "token"](http://hl7.org/fhir/R4/search.html#all).

3. The search parameter "category" MUST be supported:

    Examples:

    ```GET [base]/Observation?category=http://terminology.hl7.org/CodeSystem/observation-category|laboratory```

    Usage notes: Further information on searching for "category" can be found in the FHIR base specification, section "token".

4. The search parameter "code" MUST be supported:

    Examples:

    ```GET [base]/Observation?code=http://loinc.org|79716-7```

    Usage notes: Further information on searching for "code" can be found in the FHIR base specification, section "token".

5. The search parameter "subject" MUST be supported:

    Examples:

    ```GET [base]/Observation?subject=Patient/example```

    Usage notes: Further information on searching for "subject" can be found in the FHIR base specification, section "reference".

6. The search parameter "focus" MUST be supported:

    Examples:

    ```GET [base]/Observation?focus=Condition/example```

    Usage notes: Further information on searching for "focus" can be found in the FHIR base specification, section "reference".

7. The search parameter "encounter" MUST be supported:

    Examples:

    ```GET [base]/Observation?encounter=Encounter/example```

    Usage notes: Further information on searching for "encounter" can be found in the FHIR base specification, section "reference".

8. The search parameter "date" MUST be supported:

    Examples:

    ```GET [base]/Observation?date=2024-02-08```

    Usage notes: Further information on searching for "date" can be found in the FHIR base specification, section "date".

9. The search parameter "derived-from" MUST be supported:

    Examples:

    ```GET [base]/Observation?derived-from=Observation/example```

    Usage notes: Further information on searching for "derived-from" can be found in the FHIR base specification, section "reference".

Example instances are linked in the "Examples" section of the profile page.
