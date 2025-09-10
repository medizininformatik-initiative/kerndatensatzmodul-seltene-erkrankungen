---
parent: 
topic: Condition
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-symptom-condition
---

## {{page-title}}

Dieses Profil beschreibt symptombasierte Zustände im Kontext seltener Erkrankungen.
Es erfasst symptomatische Conditions mit zeitlichen Merkmalen und ergänzt das HPO Assessment Observation Profil.

### Beispiele für kodierte Symptome

Bei der Erfassung von Symptomen seltener Erkrankungen können verschiedene Kodiersysteme verwendet werden:

#### ICD-10-GM Codes
- **R04.0** (Epistaxis/Nasenbluten) - häufiges Symptom bei Von-Willebrand-Syndrom
- **S42.3** (Fraktur des Humerusschaftes) - typische pathologische Fraktur bei Osteogenesis imperfecta

#### SNOMED CT Codes für Laborauffälligkeiten
- **409675001** (Partial thromboplastin time increased) - verlängerte PTT bei Gerinnungsstörungen
- **166627004** (Serum alkaline phosphatase above reference range) - erhöhte alkalische Phosphatase bei Knochenstoffwechselstörungen
- **1153490002** (Serum creatine kinase above reference range) - erhöhte CK bei Muskeldystrophien

#### HPO Codes für körperliche Phänotypen
HPO ist ideal für die präzise Beschreibung körperlicher/phänotypischer Abnormalitäten:
- **HP:0000978** (Bruising susceptibility) - Neigung zu Hämatomen bei Von-Willebrand-Syndrom
- **HP:0002659** (Increased susceptibility to fractures) - Frakturneigung bei Osteogenesis imperfecta
- **HP:0000939** (Osteoporosis) - bei verschiedenen Skelettdysplasien
- **HP:0003198** (Myopathy) - bei Muskeldystrophien
- **HP:0001270** (Motor delay) - motorische Entwicklungsverzögerung bei neuromuskulären Erkrankungen

@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-symptom-condition' 
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
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-symptom-condition'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-symptom-condition' 
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
    
    ```GET [base]/Condition?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-symptom-condition```
    
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

{{json:mii-exa-seltene-symptom-condition}}

---