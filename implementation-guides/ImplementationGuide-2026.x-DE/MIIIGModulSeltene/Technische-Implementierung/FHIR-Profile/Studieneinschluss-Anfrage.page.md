---
parent: 
topic: Task
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-se-studieneinschluss-anfrage
---

## {{page-title}}

Dieses Profil beschreibt eine Anfrage für den Einschluss eines Patienten mit seltener Erkrankung in eine klinische Studie. Es ermöglicht die strukturierte Erfassung von Studienanfragen und deren Status im Rahmen der Versorgung und Forschung bei seltenen Erkrankungen.

@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-se-studieneinschluss-anfrage' 
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
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-se-studieneinschluss-anfrage'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-se-studieneinschluss-anfrage' 
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
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/LogicalModel/SelteneErkrankungen'
    for differential.element where id.contains('Studie') 
    select 
        Datensatz: short,
        Erklaerung: definition, 
        FHIR: mapping[0].map 

```

---

**Suchparameter**

Folgende Suchparameter sind für das Modul Seltene Erkrankungen relevant, auch in Kombination:

1. Der Suchparameter ```_id``` MUSS unterstützt werden:

    Beispiele: 

    ```GET [base]/Task?_id=1234```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:
    
    ```GET [base]/Task?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-se-studieneinschluss-anfrage```
    
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

**Beispiele**

{{json:mii-exa-se-studieneinschluss-anfrage}}

---