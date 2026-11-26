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

**Search parameters** are declared module-wide in the [CapabilityStatement](CapabilityStatement-mii-cps-seltene-capabilitystatement.html) &mdash; machine-readable and complete there, rather than repeated by hand per profile.

Example instances are linked in the "Examples" section of the profile page.
