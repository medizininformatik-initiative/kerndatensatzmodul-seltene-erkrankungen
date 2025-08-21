---
parent: 
topic: Condition
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-se-symptom-condition
---

## {{page-title}}

Dieses Profil beschreibt symptombasierte Zustände im Kontext seltener Erkrankungen.
Es erfasst symptomatische Conditions mit zeitlichen Merkmalen und ergänzt das HPO Assessment Observation Profil.

@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-se-symptom-condition' 
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
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-se-symptom-condition'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-se-symptom-condition' 
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

### Verwendung

Das Symptom-Condition Profil wird verwendet für:
- Dokumentation von Symptomen als eigenständige Conditions
- Erfassung zeitlicher Verläufe von Symptomen
- Verknüpfung mit HPO-kodierten Beobachtungen
- Darstellung von Symptom-Clustern bei seltenen Erkrankungen

### Abgrenzung zu anderen Profilen

| Profil | Verwendung |
|--------|------------|
| **Symptom-Condition** | Symptome als eigenständige Zustände mit Verlauf |
| **HPO Assessment** | Einzelne phänotypische Beobachtungen |
| **Clinical Diagnosis** | Bestätigte klinische Diagnosen |
| **Genetic Diagnosis** | Genetisch bestätigte Diagnosen |

---

Mapping Datensatz zu FHIR

@```
from StructureDefinition 
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/LogicalModel/SE'
    for differential.element where id.contains('Symptom') 
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

    ```GET [base]/Condition?_id=1234```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:
    
    ```GET [base]/Condition?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-se-symptom-condition```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#all).

3. Der Suchparameter "category" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Condition?category=http://snomed.info/sct|418799008```

    Anwendungshinweise: Weitere Informationen zur Suche nach "category" finden sich in der FHIR-Basisspezifikation - Abschnitt "token".

4. Der Suchparameter "code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Condition?code=http://hpo.jax.org/app/|HP:0001324```

    Anwendungshinweise: Weitere Informationen zur Suche nach "code" finden sich in der FHIR-Basisspezifikation - Abschnitt "token".

5. Der Suchparameter "subject" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Condition?subject=Patient/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "subject" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".

6. Der Suchparameter "onset-date" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Condition?onset-date=2024-02-08```

    Anwendungshinweise: Weitere Informationen zur Suche nach "onset-date" finden sich in der FHIR-Basisspezifikation - Abschnitt "date".

7. Der Suchparameter "severity" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Condition?severity=http://hpo.jax.org/app/|HP:0012828```

    Anwendungshinweise: Weitere Informationen zur Suche nach "severity" finden sich in der FHIR-Basisspezifikation - Abschnitt "token".

8. Der Suchparameter "evidence" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Condition?evidence=Observation/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "evidence" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".

**Beispiele**

{{json:mii-exa-se-symptom-condition}}

---