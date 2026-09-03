<!-- TODO:REVIEW machine translation (en) of intro note; Quelle: MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/AnamneseUndDiagnostik/Untersuchung-ClinicalImpression.page.md (Simplifier-Guide 2026.0.1, migriert 2026-08-28, Direktiven gestript) -->
This profile describes the clinical assessment and documentation of interdisciplinary examinations in the diagnostics of rare diseases.
It enables the structured recording of clinical impressions, findings and treatment recommendations.

### Structuring the clinical assessment

The ClinicalImpression uses three main elements to structure the clinical assessment:

#### **Problem** (`problem`)
Documents the **identified health problems or diagnoses**:
- Confirmed diagnoses (ICD-10-GM, ORPHAcodes)
- Suspected diagnoses
- Symptom conditions (symptomatic states)
- Example: "Suspected osteogenesis imperfecta" or "Confirmed von Willebrand disease"

#### **Investigation** (`investigation`)
Records **performed or planned examinations** for clarification:
- Grouping of related diagnostics
- Laboratory panels (e.g. coagulation diagnostics)
- Imaging procedures
- Genetic tests
- Example: an investigation with code "basic diagnostics" contains references to CBC, PTT, bleeding time

#### **Finding** (`finding`)
Documents **concrete findings and observations**:
- HPO-coded phenotypic features
- Abnormal laboratory values
- Imaging findings
- Clinical observations
- Example: "Increased PTT (409675001)", "Bruising susceptibility (HP:0000978)"

### Usage example

```
ClinicalImpression (first presentation)
├── problem: suspected von Willebrand syndrome
├── investigation[0]:
│   ├── code: "coagulation diagnostics"
│   └── item: [PTT measurement, vWF activity, bleeding time]
└── finding[0]: epistaxis (R04.0)
└── finding[1]: bruising susceptibility (HP:0000978)
└── finding[2]: PTT prolonged (409675001)
```

---

**Search parameters**

The following search parameters are relevant for the Rare Diseases module, also in combination:

1. The search parameter ```_id``` MUST be supported:

    Examples: 

    ```GET [base]/ClinicalImpression?_id=1234```
    
    Usage notes: Further information on searching for "_id" can be found in the [FHIR base specification, section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter "_profile" MUST be supported:

    Examples:
    
    ```GET [base]/ClinicalImpression?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-impression```
    
    Usage notes: Further information on searching for "_profile" can be found in the [FHIR base specification, section "token"](http://hl7.org/fhir/R4/search.html#all).

3. The search parameter "status" MUST be supported:

    Examples:

    ```GET [base]/ClinicalImpression?status=completed```

    Usage notes: Further information on searching for "status" can be found in the FHIR base specification, section "token".

4. The search parameter "subject" MUST be supported:

    Examples:

    ```GET [base]/ClinicalImpression?subject=Patient/example```

    Usage notes: Further information on searching for "subject" can be found in the FHIR base specification, section "reference".

5. The search parameter "problem" MUST be supported:

    Examples:

    ```GET [base]/ClinicalImpression?problem=Condition/example```

    Usage notes: Further information on searching for "problem" can be found in the FHIR base specification, section "reference".

6. The search parameter "encounter" MUST be supported:

    Examples:

    ```GET [base]/ClinicalImpression?encounter=Encounter/example```

    Usage notes: Further information on searching for "encounter" can be found in the FHIR base specification, section "reference".

7. The search parameter "date" MUST be supported:

    Examples:

    ```GET [base]/ClinicalImpression?date=2024-02-08```

    Usage notes: Further information on searching for "date" can be found in the FHIR base specification, section "date".

8. The search parameter "finding-ref" MUST be supported:

    Examples:

    ```GET [base]/ClinicalImpression?finding-ref=Observation/example```

    Usage notes: Further information on searching for "finding-ref" can be found in the FHIR base specification, section "reference".

Example instances are linked in the "Examples" section of the profile page.
