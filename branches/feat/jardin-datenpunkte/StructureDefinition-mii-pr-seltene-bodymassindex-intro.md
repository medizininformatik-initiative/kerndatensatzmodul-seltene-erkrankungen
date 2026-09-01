<!-- TODO:REVIEW machine translation (en) of intro note; Quelle: MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/Messbefunde/Body-Mass-Index-Observation.page.md (Simplifier-Guide 2026.0.1, migriert 2026-08-28, Direktiven gestript) -->
This profile describes the body mass index of a patient and is needed, among other things, for musculoskeletal and metabolic diseases. The profile is not specific to rare diseases but had not been implemented elsewhere so far.

**Search parameters**

The following search parameters are relevant for the Rare Diseases module, also in combination:

1. The search parameter ```_id``` MUST be supported:

    Examples: 

    ```GET [base]/Observation?_id=1234```
    
    Usage notes: Further information on searching for "_id" can be found in the [FHIR base specification, section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter "_profile" MUST be supported:

    Examples:
    
    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-bodymassindex```
    
    Usage notes: Further information on searching for "_profile" can be found in the [FHIR base specification, section "token"](http://hl7.org/fhir/R4/search.html#all).

3. The search parameter "category" MUST be supported:

    Examples:

    ```GET [base]/Observation?category=http://terminology.hl7.org/CodeSystem/observation-category|laboratory```

    Usage notes: Further information on searching for "category" can be found in the FHIR base specification, section "token".

4. The search parameter "code" MUST be supported:

    Examples:

    ```GET [base]/Observation?code=http://fhir.de/CodeSystem/sct|184305005```

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
