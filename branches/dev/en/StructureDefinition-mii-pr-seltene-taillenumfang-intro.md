<!-- TODO:REVIEW machine translation (en) of intro note; Quelle: MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/Messbefunde/Taillenumfang-Observation.page.md (Simplifier-Guide 2026.0.1, migriert 2026-08-28, Direktiven gestript) -->
This profile describes the measurement of the waist circumference (abdominal circumference at navel height) of a patient. The waist circumference is relevant for rare diseases with metabolic components or skeletal dysplasias.

### Clinical relevance

Measuring the waist circumference is an important parameter for:
- **Metabolic diseases**: assessment of abdominal adiposity in metabolic disorders
- **Skeletal dysplasias**: documentation of body proportions
- **Syndromes with body build anomalies**: characteristic distribution of body fat
- **Calculation of the waist-to-hip ratio (WHR)**: in combination with the hip circumference

### Coding

The profile uses the LOINC code **8280-0** (Waist Circumference at umbilicus by Tape measure) for the standardized coding of the measurement.

---

**Search parameters**

The following search parameters are relevant for the Rare Diseases module, also in combination:

1. The search parameter ```_id``` MUST be supported:

    Examples:

    ```GET [base]/Observation?_id=1234```

    Usage notes: Further information on searching for "_id" can be found in the [FHIR base specification, section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-taillenumfang```

    Usage notes: Further information on searching for "_profile" can be found in the [FHIR base specification, section "token"](http://hl7.org/fhir/R4/search.html#all).

3. The search parameter "code" MUST be supported:

    Examples:

    ```GET [base]/Observation?code=http://loinc.org|8280-0```

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

    ```GET [base]/Observation?value-quantity=82|http://unitsofmeasure.org|cm```

    Usage notes: Further information on searching for "value-quantity" can be found in the FHIR base specification, section "quantity".

Example instances are linked in the "Examples" section of the profile page.
