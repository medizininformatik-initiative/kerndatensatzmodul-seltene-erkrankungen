<!-- TODO:REVIEW machine translation (en) of intro note; Quelle: MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/TherapieUndForschung/Therapie/StructureDefinition-mii-pr-seltene-therapieempfehlung-nicht-medikamentoes.html (Simplifier-Guide 2026.0.1, migriert 2026-08-28, Direktiven gestript) -->
This profile describes a **non-medicinal therapy recommendation** for patients with rare diseases. It is based on the FHIR resource ServiceRequest and covers surgical procedures, nutritional therapies, physiotherapy, genetic counseling and further non-drug interventions.

### Use cases

Non-medicinal therapy recommendations include:
- **Surgical procedures**: surgical interventions (e.g. aortic root replacement in Marfan syndrome)
- **Nutritional therapy**: special diets in metabolic diseases
- **Physiotherapy**: movement therapy to preserve mobility
- **Occupational therapy**: promotion of everyday abilities
- **Speech therapy**: for swallowing and speech disorders
- **Psychological care**: psychotherapy and counseling
- **Genetic counseling**: human genetics consultation
- **Prophylaxis**: preventive measures without drugs
- **Early detection examinations**: regular screening examinations

### Implementation notes

#### Coding of procedures
- **OPS codes** for surgical and interventional procedures in Germany
- **SNOMED CT** for international compatibility
- **LOINC** for diagnostic procedures
- Local codes for special therapy procedures

#### Status and intent
- `status`: typically "draft" for recommendations, "active" after approval
- `intent`: "proposal" for therapy recommendations, "order" upon implementation
- `priority`: urgency of the intervention (routine, urgent, asap, stat)

#### Scheduling
- `occurrence[x]`: time or period of the planned intervention
- `authoredOn`: date of the recommendation

#### Justification
- Link to the diagnosis via `reasonReference`
- Clinical indication via `reasonCode`

---

### Search parameters

The following search parameters are relevant for non-medicinal therapy recommendations:

1. **_id**: search by resource id
   ```GET [base]/ServiceRequest?_id=1234```

2. **_profile**: search by profile
   ```GET [base]/ServiceRequest?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung-nicht-medikamentoes```

3. **subject**: search by patient
   ```GET [base]/ServiceRequest?subject=Patient/example```

4. **status**: search by status
   ```GET [base]/ServiceRequest?status=active```

5. **intent**: search by intent
   ```GET [base]/ServiceRequest?intent=proposal```

6. **code**: search by procedure code
   ```GET [base]/ServiceRequest?code=http://fhir.de/CodeSystem/dimdi/ops-2024|5-354.09```

7. **authored**: search by authoring date
   ```GET [base]/ServiceRequest?authored=2024-02-08```

8. **priority**: search by priority
   ```GET [base]/ServiceRequest?priority=urgent```

---

Example instances are linked in the "Examples" section of the profile page.

### Related profiles
- [Therapieempfehlung-Medikamentoes](StructureDefinition-mii-pr-seltene-therapieempfehlung.html) — for medicinal therapies
- [Therapieplan](StructureDefinition-mii-pr-seltene-therapieplan.html) — overarching therapy plan
- [Studieneinschluss-Anfrage](StructureDefinition-mii-pr-seltene-studieneinschluss-anfrage.html) — for study participation recommendations
