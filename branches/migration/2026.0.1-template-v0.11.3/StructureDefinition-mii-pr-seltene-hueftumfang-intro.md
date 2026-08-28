<!-- TODO:REVIEW machine translation (en) of intro note; Quelle: MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/Messbefunde/Hueftumfang-Observation.page.md (Simplifier-Guide 2026.0.1, migriert 2026-08-28, Direktiven gestript) -->
This profile describes the measurement of the hip circumference (maximal gluteal protuberance) of a patient. The hip circumference is relevant for rare diseases affecting body proportions, metabolic diseases or skeletal dysplasias.

### Clinical relevance

Measuring the hip circumference is an important parameter for:
- **Metabolic diseases**: assessment of fat distribution and metabolic risk factors
- **Skeletal dysplasias**: documentation of body proportions and skeletal changes in the pelvic area
- **Syndromes with body build anomalies**: characteristic proportions as a diagnostic feature
- **Calculation of the waist-to-hip ratio (WHR)**: in combination with the waist circumference for risk assessment

### Coding

The profile uses the LOINC code **56063-1** (Circumference.at maximal protrusion of gluteus muscles Pelvis) for the standardized coding of the measurement.

---

### Use with the waist-to-hip ratio

The hip circumference is frequently used in combination with the waist circumference to calculate the **waist-to-hip ratio (WHR)**. The WHR is an important indicator for:
- Metabolic risk
- Body fat distribution (android vs. gynoid distribution)
- Prognosis in various diseases

See also: waist-to-hip ratio

---

**Search parameters**

The following search parameters are relevant for the Rare Diseases module, also in combination:

1. The search parameter ```_id``` MUST be supported:

    Examples:

    ```GET [base]/Observation?_id=1234```

    Usage notes: Further information on searching for "_id" can be found in the [FHIR base specification, section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hueftumfang```

    Usage notes: Further information on searching for "_profile" can be found in the [FHIR base specification, section "token"](http://hl7.org/fhir/R4/search.html#all).

3. The search parameter "code" MUST be supported:

    Examples:

    ```GET [base]/Observation?code=http://loinc.org|56063-1```

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

    ```GET [base]/Observation?value-quantity=98|http://unitsofmeasure.org|cm```

    Usage notes: Further information on searching for "value-quantity" can be found in the FHIR base specification, section "quantity".

Example instances are linked in the "Examples" section of the profile page.
