<!-- TODO:REVIEW machine translation (en) of intro note; Quelle: MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/TherapieUndForschung/Therapie/Therapie-Durchgefuehrt-NARSE.page.md (Simplifier-Guide 2026.0.1, migriert 2026-08-28, Direktiven gestript) -->
This profile describes a **performed therapy** in patients with rare diseases according to the NARSE classification. It is a minimal profile that can be used regardless of where the therapy was performed (outpatient, inpatient, outside the hospital).

### Context and usage

The profile was developed specifically for documentation within the **German National Action League for People with Rare Diseases (NAMSE)** and the **NARSE registry**. It records the therapy type from a predefined list covering the most common therapy forms in rare diseases.

### NARSE therapy types

The following therapy types are defined in the code system:

| Code | Name | Description |
|------|-------------|--------------|
| `keine` | None | No therapy |
| `pharmakotherapie` | Pharmacotherapy | Drug therapy with conventional medicines |
| `gentherapie` | Gene therapy | Therapy with genetically modified cells or direct gene modification |
| `mrna-therapie` | mRNA therapy | Therapy with mRNA-based therapeutics |
| `antikoerpertherapie` | Antibody therapy | Therapy with monoclonal or polyclonal antibodies |
| `cart-zelltherapie` | CAR-T cell therapy | Chimeric antigen receptor T-cell therapy |
| `stammzelltransplantation` | Stem cell transplantation | Hematopoietic stem cell transplantation (autologous or allogeneic) |
| `stoffwechseltherapie` | Metabolic therapy | Therapy to correct metabolic disorders (e.g. enzyme replacement therapy) |
| `sonstiges` | Other | Other therapy form, not further specified |
| `unbekannt` | Unknown | The therapy type is not known |

### Implementation notes

#### Minimal data set
This profile deliberately defines only the minimal requirements:
- **status**: mandatory field (from the FHIR base)
- **subject**: reference to the patient (mandatory)
- **code**: NARSE therapy type (mandatory)
- **performed[x]**: time of performance (if available)

#### Use outside the hospital
Since many therapies for rare diseases take place outside the inpatient setting (e.g. at home, in specialized centers), this profile is **not** bound to the MII Procedure module. An MII procedure can optionally contain an additional NARSE code.

#### Integration with other profiles
- Can reference therapy recommendations via `basedOn`
- Can reference diagnoses via `reasonReference` (optional)
- Can be included in CarePlan.activity.detail

---

Example instances are linked in the "Examples" section of the profile page.

---

**Search parameters**

The following search parameters are relevant for the Rare Diseases module, also in combination:

1. The search parameter ```_id``` MUST be supported:

    Examples:

    ```GET [base]/Procedure?_id=1234```

    Usage notes: Further information on searching for "_id" can be found in the [FHIR base specification, section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/Procedure?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapie-durchgefuehrt```

    Usage notes: Further information on searching for "_profile" can be found in the [FHIR base specification, section "token"](http://hl7.org/fhir/R4/search.html#all).

3. The search parameter "code" MUST be supported:

    Examples:

    ```GET [base]/Procedure?code=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-narse-therapietyp|gentherapie```

    Usage notes: Further information on searching for "code" can be found in the FHIR base specification, section "token".

4. The search parameter "subject" MUST be supported:

    Examples:

    ```GET [base]/Procedure?subject=Patient/example```

    Usage notes: Further information on searching for "subject" can be found in the FHIR base specification, section "reference".

5. The search parameter "date" MUST be supported:

    Examples:

    ```GET [base]/Procedure?date=2024-02-08```

    Usage notes: Further information on searching for "date" can be found in the FHIR base specification, section "date".

6. The search parameter "status" MUST be supported:

    Examples:

    ```GET [base]/Procedure?status=completed```

    Usage notes: Further information on searching for "status" can be found in the FHIR base specification, section "token".

---

### Related profiles
- [Therapieempfehlung-Medikamentös](StructureDefinition-mii-pr-seltene-therapieempfehlung.html) — for therapy recommendations
- [Therapieempfehlung-Nicht-Medikamentös](StructureDefinition-mii-pr-seltene-therapieempfehlung-nicht-medikamentoes.html) — for non-medicinal recommendations
- [Therapieplan](StructureDefinition-mii-pr-seltene-therapieplan.html) — overarching therapy plan
