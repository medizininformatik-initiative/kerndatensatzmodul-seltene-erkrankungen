<!-- TODO:REVIEW machine translation (en) of intro note; Quelle: MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/Messbefunde/Kopfumfang-Observation.page.md (Simplifier-Guide 2026.0.1, migriert 2026-08-28, Direktiven gestript) -->
This profile describes the measurement of the head circumference (occipital-frontal) of a patient. The head circumference is particularly relevant for rare diseases affecting skull growth, e.g. skeletal dysplasias, neurological diseases or syndromes with macro-/microcephaly.

### Clinical relevance

Measuring the head circumference is an important parameter for:
- **Skeletal dysplasias**: diseases such as achondroplasia often show characteristic head proportions
- **Neurological diseases**: macrocephaly or microcephaly as a leading symptom
- **Syndromes**: many rare syndromes have characteristic head measurements as a diagnostic criterion
- **Developmental disorders**: monitoring of skull growth over time

### Coding

The profile uses the LOINC code **9843-4** (Head Occipital-frontal circumference) for the standardized coding of the measurement.

---

**Search parameters**

The following search parameters are relevant for the Rare Diseases module, also in combination:

1. The search parameter ```_id``` MUST be supported:

    Examples:

    ```GET [base]/Observation?_id=1234```

    Usage notes: Further information on searching for "_id" can be found in the [FHIR base specification, section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-kopfumfang```

    Usage notes: Further information on searching for "_profile" can be found in the [FHIR base specification, section "token"](http://hl7.org/fhir/R4/search.html#all).

3. The search parameter "code" MUST be supported:

    Examples:

    ```GET [base]/Observation?code=http://loinc.org|9843-4```

    Usage notes: Further information on searching for "code" can be found in the FHIR base specification, section "token".

4. The search parameter "subject" MUST be supported:

    Examples:

    ```GET [base]/Observation?subject=Patient/example```

    Usage notes: Further information on searching for "subject" can be found in the FHIR base specification, section "reference".

5. The search parameter "date" MUST be supported:

    Examples:

    ```GET [base]/Observation?date=2024-02-08```

    Usage notes: Further information on searching for "date" can be found in the FHIR base specification, section "date".

6. The search parameter "value-quantity" MUST be supported:

    Examples:

    ```GET [base]/Observation?value-quantity=35|http://unitsofmeasure.org|cm```

    Usage notes: Further information on searching for "value-quantity" can be found in the FHIR base specification, section "quantity".

Example instances are linked in the "Examples" section of the profile page.
