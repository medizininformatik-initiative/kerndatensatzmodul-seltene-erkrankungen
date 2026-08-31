<!-- TODO:REVIEW machine translation (en) of intro note; Quelle: MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/AnamneseUndDiagnostik/Diagnose/SE-Diagnose-genetisch-Condition.page.md (Simplifier-Guide 2026.0.1, migriert 2026-08-28, Direktiven gestript) -->
This profile describes a genetically confirmed diagnosis of a rare disease.
It is used when the diagnosis has been confirmed by molecular genetic examination.

**Search parameters**

The following search parameters are relevant for the Rare Diseases module, also in combination:

1. The search parameter ```_id``` MUST be supported:

    Examples: 

    ```GET [base]/Condition?_id=1234```
    
    Usage notes: Further information on searching for "_id" can be found in the [FHIR base specification, section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter "_profile" MUST be supported:

    Examples:
    
    ```GET [base]/Condition?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-genetic-diagnosis```
    
    Usage notes: Further information on searching for "_profile" can be found in the [FHIR base specification, section "token"](http://hl7.org/fhir/R4/search.html#all).

3. The search parameter "category" MUST be supported:

    Examples:

    ```GET [base]/Condition?category=http://terminology.hl7.org/CodeSystem/observation-category|laboratory```

    Usage notes: Further information on searching for "category" can be found in the FHIR base specification, section "token".

4. The search parameter "code" MUST be supported:

    Examples:

    ```GET [base]/Condition?code=http://fhir.de/CodeSystem/sct|184305005```

    Usage notes: Further information on searching for "code" can be found in the FHIR base specification, section "token".

5. The search parameter "subject" MUST be supported:

    Examples:

    ```GET [base]/Condition?subject=Patient/example```

    Usage notes: Further information on searching for "subject" can be found in the FHIR base specification, section "reference".

6. The search parameter "focus" MUST be supported:

    Examples:

    ```GET [base]/Condition?focus=Condition/example```

    Usage notes: Further information on searching for "focus" can be found in the FHIR base specification, section "reference".

7. The search parameter "encounter" MUST be supported:

    Examples:

    ```GET [base]/Condition?encounter=Encounter/example```

    Usage notes: Further information on searching for "encounter" can be found in the FHIR base specification, section "reference".

8. The search parameter "date" MUST be supported:

    Examples:

    ```GET [base]/Condition?date=2024-02-08```

    Usage notes: Further information on searching for "date" can be found in the FHIR base specification, section "date".

9. The search parameter "derived-from" MUST be supported:

    Examples:

    ```GET [base]/Condition?derived-from=Observation/example```

    Usage notes: Further information on searching for "derived-from" can be found in the FHIR base specification, section "reference".

Example instances are linked in the "Examples" section of the profile page.
