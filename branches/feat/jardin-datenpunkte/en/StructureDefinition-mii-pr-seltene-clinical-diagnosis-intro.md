<!-- TODO:REVIEW machine translation (en) of intro note; Quelle: MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/AnamneseUndDiagnostik/Diagnose/SE-Diagnose-klinisch-Condition.page.md (Simplifier-Guide 2026.0.1, migriert 2026-08-28, Direktiven gestript) -->
This profile describes a clinically established diagnosis of a rare disease.
It is used when the diagnosis is based on clinical findings and phenotypic features.

**Search parameters**

The following search parameters are relevant for the Rare Diseases module, also in combination:

1. The search parameter ```_id``` MUST be supported:

    Examples: 

    ```GET [base]/Condition?_id=1234```
    
    Usage notes: Further information on searching for "_id" can be found in the [FHIR base specification, section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter "_profile" MUST be supported:

    Examples:
    
    ```GET [base]/Condition?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis```
    
    Usage notes: Further information on searching for "_profile" can be found in the [FHIR base specification, section "token"](http://hl7.org/fhir/R4/search.html#all).

3. The search parameter "category" MUST be supported:

    Examples:

    ```GET [base]/Condition?category=http://terminology.hl7.org/CodeSystem/condition-category|encounter-diagnosis```

    Usage notes: Further information on searching for "category" can be found in the FHIR base specification, section "token".

4. The search parameter "code" MUST be supported:

    Examples:

    ```GET [base]/Condition?code=http://fhir.de/CodeSystem/bfarm/icd-10-gm|Q87.4```

    Usage notes: Further information on searching for "code" can be found in the FHIR base specification, section "token".

5. The search parameter "subject" MUST be supported:

    Examples:

    ```GET [base]/Condition?subject=Patient/example```

    Usage notes: Further information on searching for "subject" can be found in the FHIR base specification, section "reference".

6. The search parameter "encounter" MUST be supported:

    Examples:

    ```GET [base]/Condition?encounter=Encounter/example```

    Usage notes: Further information on searching for "encounter" can be found in the FHIR base specification, section "reference".

7. The search parameter "recorded-date" MUST be supported:

    Examples:

    ```GET [base]/Condition?recorded-date=2024-02-08```

    Usage notes: Further information on searching for "recorded-date" can be found in the FHIR base specification, section "date".

8. The search parameter "verification-status" MUST be supported:

    Examples:

    ```GET [base]/Condition?verification-status=provisional```

    Usage notes: Further information on searching for "verification-status" can be found in the FHIR base specification, section "token".

9. The search parameter "clinical-status" MUST be supported:

    Examples:

    ```GET [base]/Condition?clinical-status=active```

    Usage notes: Further information on searching for "clinical-status" can be found in the FHIR base specification, section "token".

Example instances are linked in the "Examples" section of the profile page.
