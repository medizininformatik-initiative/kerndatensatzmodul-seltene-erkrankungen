---
parent: 
topic: ResearchStudy
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-se-studie
---

## {{page-title}}

Dieses Profil beschreibt eine klinische Studie im Kontext seltener Erkrankungen. Es ermöglicht die strukturierte Erfassung von Studieninformationen, einschließlich Studien-ID, Status, Zeitraum und anderen relevanten Details für die Forschung bei seltenen Erkrankungen. Es ist angelehnt an die MTB-Implementierung (Molekulares Tumorboard).

@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-se-studie' 
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
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-se-studie'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-se-studie' 
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

    ```GET [base]/ResearchStudy?_id=1234```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:
    
    ```GET [base]/ResearchStudy?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-se-studie```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#all).

3. Der Suchparameter "status" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ResearchStudy?status=active```

    Anwendungshinweise: Weitere Informationen zur Suche nach "status" finden sich in der FHIR-Basisspezifikation - Abschnitt "token".

4. Der Suchparameter "identifier" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ResearchStudy?identifier=NCT12345678```

    Anwendungshinweise: Weitere Informationen zur Suche nach "identifier" finden sich in der FHIR-Basisspezifikation - Abschnitt "token".

5. Der Suchparameter "condition" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ResearchStudy?condition=http://www.orpha.net|ORPHA:558```

    Anwendungshinweise: Weitere Informationen zur Suche nach "condition" finden sich in der FHIR-Basisspezifikation - Abschnitt "token".

6. Der Suchparameter "date" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ResearchStudy?date=2024-02-08```

    Anwendungshinweise: Weitere Informationen zur Suche nach "date" finden sich in der FHIR-Basisspezifikation - Abschnitt "date".

**Beispiele**

{{json:mii-exa-se-studie}}

---