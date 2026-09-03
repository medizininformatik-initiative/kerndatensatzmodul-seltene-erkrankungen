<!-- TODO:REVIEW machine translation (en) of intro note; Quelle: MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/TherapieUndForschung/Therapie/StructureDefinition-mii-pr-seltene-therapieplan.html (Simplifier-Guide 2026.0.1, migriert 2026-08-28, Direktiven gestript) -->
This profile describes a therapy plan for patients with rare diseases, according to the requirements of the Model Project Genome Sequencing. It is modeled on the MTB implementation (Molecular Tumor Board). The therapy plan bundles planned measures and can comprise one or more therapy recommendations that give concrete form to the plan.

**Search parameters**

The following search parameters are relevant for the Rare Diseases module, also in combination:

1. The search parameter ```_id``` MUST be supported:

    Examples: 

    ```GET [base]/CarePlan?_id=1234```
    
    Usage notes: Further information on searching for "_id" can be found in the [FHIR base specification, section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter "_profile" MUST be supported:

    Examples:
    
    ```GET [base]/CarePlan?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieplan```
    
    Usage notes: Further information on searching for "_profile" can be found in the [FHIR base specification, section "token"](http://hl7.org/fhir/R4/search.html#all).

3. The search parameter "category" MUST be supported:

    Examples:

    ```GET [base]/CarePlan?category=http://snomed.info/sct|734163000```

    Usage notes: Further information on searching for "category" can be found in the FHIR base specification, section "token".

4. The search parameter "subject" MUST be supported:

    Examples:

    ```GET [base]/CarePlan?subject=Patient/example```

    Usage notes: Further information on searching for "subject" can be found in the FHIR base specification, section "reference".

5. The search parameter "encounter" MUST be supported:

    Examples:

    ```GET [base]/CarePlan?encounter=Encounter/example```

    Usage notes: Further information on searching for "encounter" can be found in the FHIR base specification, section "reference".

6. The search parameter "date" MUST be supported:

    Examples:

    ```GET [base]/CarePlan?date=2024-02-08```

    Usage notes: Further information on searching for "date" can be found in the FHIR base specification, section "date".

7. The search parameter "activity-reference" MUST be supported:

    Examples:

    ```GET [base]/CarePlan?activity-reference=ServiceRequest/example```

    Usage notes: Further information on searching for "activity-reference" can be found in the FHIR base specification, section "reference".

Example instances are linked in the "Examples" section of the profile page.
