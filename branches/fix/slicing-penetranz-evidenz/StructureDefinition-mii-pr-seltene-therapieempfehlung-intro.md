<!-- TODO:REVIEW machine translation (en) of intro note; Quelle: MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/TherapieUndForschung/Therapie/StructureDefinition-mii-pr-seltene-therapieempfehlung.html (Simplifier-Guide 2026.0.1, migriert 2026-08-28, Direktiven gestript) -->
This profile describes a **medicinal therapy recommendation** for patients with rare diseases. It is based on the FHIR resource MedicationRequest and covers systemic, targeted, preventive and gene-therapeutic treatment approaches.

### Use cases

Medicinal therapy recommendations include:
- **Systemic therapies**: chemotherapy, immunotherapy, hormone therapy
- **Targeted therapies**: targeted therapy based on molecular markers
- **Preventive therapies**: prophylactic medication to avoid complications
- **Gene therapies**: gene therapeutics for rare genetic diseases (e.g. onasemnogene abeparvovec for SMA)
- **Combination therapies**: see the separate profile [Therapy recommendation, combination](StructureDefinition-mii-pr-seltene-therapieempfehlung-kombination.html)

### Implementation notes

#### Coding of medications
- Use of **ATC codes** for classification
- **UNII codes** for newer substances (particularly in studies)

#### Status and intent
- `status`: typically "draft" for recommendations, "active" after approval
- `intent`: "proposal" for therapy recommendations, "order" upon implementation

#### Dosage
- Structured dose specifications with `dosageInstruction`
- Support for complex schedules (e.g. titration, cyclic administration)
- For the correct specification of the dosage, the requirements of the [Medication Dosage IG DE specification](https://build.fhir.org/ig/hl7germany/medication-dosage-ig/index.html) are to be observed

#### Justification
- Link to the diagnosis via `reasonReference`
- Molecular markers via extensions where relevant

---

### Search parameters

The following search parameters are relevant for medicinal therapy recommendations:

1. **_id**: search by resource id
   ```GET [base]/MedicationRequest?_id=1234```

2. **_profile**: search by profile
   ```GET [base]/MedicationRequest?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung```

3. **subject**: search by patient
   ```GET [base]/MedicationRequest?subject=Patient/example```

4. **status**: search by status
   ```GET [base]/MedicationRequest?status=active```

5. **intent**: search by intent
   ```GET [base]/MedicationRequest?intent=proposal```

6. **medication**: search by medication
   ```GET [base]/MedicationRequest?medication=http://fhir.de/CodeSystem/ifa/pzn|12345678```

7. **authored-on**: search by authoring date
   ```GET [base]/MedicationRequest?authored-on=2024-02-08```

---

Example instances are linked in the "Examples" section of the profile page.

### Related profiles
- [Therapieempfehlung-Kombination](StructureDefinition-mii-pr-seltene-therapieempfehlung-kombination.html) — for combination therapies
- [Therapieempfehlung-Nicht-Medikamentoes](StructureDefinition-mii-pr-seltene-therapieempfehlung-nicht-medikamentoes.html) — for non-medicinal therapies
- [Therapieplan](StructureDefinition-mii-pr-seltene-therapieplan.html) — overarching therapy plan
