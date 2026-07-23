---
parent: 
topic: Condition
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis
---

## {{page-title}}

Dieses Profil beschreibt eine klinisch gestellte Diagnose einer seltenen Erkrankung.
Es wird verwendet, wenn die Diagnose auf klinischen Befunden und phänotypischen Merkmalen basiert.

@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis' 
select 
    Name: name, Status: status, Version: version, Canonical: url, Basis: baseDefinition
```

### Inhalt

<tabs>
  <tab title="Darstellung">{{tree, buttons}}</tab>
  <tab title="Beschreibung"> 
        @```
        from
	        StructureDefinition
        where
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis' 
        for 
            differential.element 
            where 
                mustSupport = true 
            select Feldname: id, Kurzbeschreibung: short, Hinweise: comment
        ```
  </tab>
  <tab title="XML">{{xml}}</tab>
  <tab title="JSON">{{json}}</tab>
  <tab title="Link">{{link}}</tab>
</tabs>

---

Mapping Datensatz zu FHIR

@```
from StructureDefinition 
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/LogicalModel/SE'
    for differential.element where id.contains('KlinischeDiagnose') 
    select 
        Datensatz: short,
        Erklaerung: definition, 
        FHIR: mapping[0].map 

```

---

Mapping Kerndatensatz Seltene Erkrankungen zu FHIR

@```
from StructureDefinition 
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis'  
    for differential.element
    where mapping.identity='SE'
    select 
        SE: mapping.map,
        Definition: mapping.comment,
        FHIR: path
```

---

**Suchparameter**

Folgende Suchparameter sind für das Modul Seltene Erkrankungen relevant, auch in Kombination:

1. Der Suchparameter ```_id``` MUSS unterstützt werden:

    Beispiele: 

    ```GET [base]/Condition?_id=1234```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:
    
    ```GET [base]/Condition?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#all).

3. Der Suchparameter "category" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Condition?category=http://terminology.hl7.org/CodeSystem/condition-category|encounter-diagnosis```

    Anwendungshinweise: Weitere Informationen zur Suche nach "category" finden sich in der FHIR-Basisspezifikation - Abschnitt "token".

4. Der Suchparameter "code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Condition?code=http://fhir.de/CodeSystem/bfarm/icd-10-gm|Q87.4```

    Anwendungshinweise: Weitere Informationen zur Suche nach "code" finden sich in der FHIR-Basisspezifikation - Abschnitt "token".

5. Der Suchparameter "subject" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Condition?subject=Patient/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "subject" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".

6. Der Suchparameter "encounter" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Condition?encounter=Encounter/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "encounter" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".

7. Der Suchparameter "recorded-date" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Condition?recorded-date=2024-02-08```

    Anwendungshinweise: Weitere Informationen zur Suche nach "recorded-date" finden sich in der FHIR-Basisspezifikation - Abschnitt "date".

8. Der Suchparameter "verification-status" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Condition?verification-status=provisional```

    Anwendungshinweise: Weitere Informationen zur Suche nach "verification-status" finden sich in der FHIR-Basisspezifikation - Abschnitt "token".

9. Der Suchparameter "clinical-status" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Condition?clinical-status=active```

    Anwendungshinweise: Weitere Informationen zur Suche nach "clinical-status" finden sich in der FHIR-Basisspezifikation - Abschnitt "token".

**Beispiele**

<tabs>
  <tab title="Übersicht">{{table:mii-exa-seltene-clinical-diagnosis}}</tab>
  <tab title="JSON">{{json:mii-exa-seltene-clinical-diagnosis}}</tab>
</tabs>

---