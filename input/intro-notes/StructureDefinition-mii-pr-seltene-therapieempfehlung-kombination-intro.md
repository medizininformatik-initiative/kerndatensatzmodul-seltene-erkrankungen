<!-- TODO:REVIEW machine translation (en) of intro note; Quelle: MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/TherapieUndForschung/Therapie/StructureDefinition-mii-pr-seltene-therapieempfehlung-kombination.html (Simplifier-Guide 2026.0.1, migriert 2026-08-28, Direktiven gestript) -->
This profile describes a combined therapy recommendation for patients with rare diseases. It enables the structured recording of therapy recommendations that comprise several coordinated treatment approaches to be applied together. It is modeled on the MTB implementation (Molecular Tumor Board).

**Search parameters**

The following search parameters are relevant for the Rare Diseases module, also in combination:

1. The search parameter ```_id``` MUST be supported:

    Examples: 

    ```GET [base]/RequestGroup?_id=1234```
    
    Usage notes: Further information on searching for "_id" can be found in the [FHIR base specification, section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter "_profile" MUST be supported:

    Examples:
    
    ```GET [base]/RequestGroup?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung-kombination```
    
    Usage notes: Further information on searching for "_profile" can be found in the [FHIR base specification, section "token"](http://hl7.org/fhir/R4/search.html#all).

3. The search parameter "status" MUST be supported:

    Examples:

    ```GET [base]/RequestGroup?status=active```

    Usage notes: Further information on searching for "status" can be found in the FHIR base specification, section "token".

4. The search parameter "subject" MUST be supported:

    Examples:

    ```GET [base]/RequestGroup?subject=Patient/example```

    Usage notes: Further information on searching for "subject" can be found in the FHIR base specification, section "reference".

5. The search parameter "encounter" MUST be supported:

    Examples:

    ```GET [base]/RequestGroup?encounter=Encounter/example```

    Usage notes: Further information on searching for "encounter" can be found in the FHIR base specification, section "reference".

6. The search parameter "authored" MUST be supported:

    Examples:

    ```GET [base]/RequestGroup?authored=2024-02-08```

    Usage notes: Further information on searching for "authored" can be found in the FHIR base specification, section "date".

Example instances are linked in the "Examples" section of the profile page.
