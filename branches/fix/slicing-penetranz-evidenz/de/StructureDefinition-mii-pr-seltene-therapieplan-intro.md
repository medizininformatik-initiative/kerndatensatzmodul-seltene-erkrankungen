<!-- Quelle: MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/TherapieUndForschung/Therapie/StructureDefinition-mii-pr-seltene-therapieplan.html (Simplifier-Guide 2026.0.1, migriert 2026-08-28, Direktiven gestript) -->
Dieses Profil beschreibt einen Therapieplan für Patienten mit Seltenen Erkrankungen, entsprechend der Vorgabe aus dem Modellvorhaben Genomsequenzierung. Es ist angelehnt an die MTB-Implementierung (Molekulares Tumorboard). Der Therapieplan bündelt geplante Maßnahmen und kann eine oder mehrere Therapieempfehlungen umfassen, die den Plan konkretisieren

---

**Suchparameter**

Folgende Suchparameter sind für das Modul Seltene Erkrankungen relevant, auch in Kombination:

1. Der Suchparameter ```_id``` MUSS unterstützt werden:

    Beispiele: 

    ```GET [base]/CarePlan?_id=1234```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:
    
    ```GET [base]/CarePlan?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieplan```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#all).

3. Der Suchparameter "category" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/CarePlan?category=http://snomed.info/sct|734163000```

    Anwendungshinweise: Weitere Informationen zur Suche nach "category" finden sich in der FHIR-Basisspezifikation - Abschnitt "token".

4. Der Suchparameter "subject" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/CarePlan?subject=Patient/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "subject" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".

5. Der Suchparameter "encounter" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/CarePlan?encounter=Encounter/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "encounter" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".

6. Der Suchparameter "date" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/CarePlan?date=2024-02-08```

    Anwendungshinweise: Weitere Informationen zur Suche nach "date" finden sich in der FHIR-Basisspezifikation - Abschnitt "date".

7. Der Suchparameter "activity-reference" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/CarePlan?activity-reference=ServiceRequest/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "activity-reference" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".

Beispielinstanzen sind auf der Profilseite im Abschnitt „Examples" verlinkt.
