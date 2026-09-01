<!-- Quelle: MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/TherapieUndForschung/Studie/StructureDefinition-mii-pr-seltene-studieneinschluss-anfrage.html (Simplifier-Guide 2026.0.1, migriert 2026-08-28, Direktiven gestript) -->
Dieses Profil beschreibt eine Anfrage für den Einschluss eines Patienten mit seltener Erkrankung in eine klinische Studie. Es ermöglicht die strukturierte Erfassung von Studienanfragen und deren Status im Rahmen der Versorgung und Forschung bei seltenen Erkrankungen. Es ist angelehnt an die MTB-Implementierung (Molekulares Tumorboard).

**Suchparameter**

Folgende Suchparameter sind für das Modul Seltene Erkrankungen relevant, auch in Kombination:

1. Der Suchparameter ```_id``` MUSS unterstützt werden:

    Beispiele: 

    ```GET [base]/Task?_id=1234```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:
    
    ```GET [base]/Task?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-studieneinschluss-anfrage```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#all).

3. Der Suchparameter "status" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Task?status=requested```

    Anwendungshinweise: Weitere Informationen zur Suche nach "status" finden sich in der FHIR-Basisspezifikation - Abschnitt "token".

4. Der Suchparameter "patient" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Task?patient=Patient/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "patient" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".

5. Der Suchparameter "encounter" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Task?encounter=Encounter/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "encounter" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".

6. Der Suchparameter "authored-on" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Task?authored-on=2024-02-08```

    Anwendungshinweise: Weitere Informationen zur Suche nach "authored-on" finden sich in der FHIR-Basisspezifikation - Abschnitt "date".

Beispielinstanzen sind auf der Profilseite im Abschnitt „Examples" verlinkt.
