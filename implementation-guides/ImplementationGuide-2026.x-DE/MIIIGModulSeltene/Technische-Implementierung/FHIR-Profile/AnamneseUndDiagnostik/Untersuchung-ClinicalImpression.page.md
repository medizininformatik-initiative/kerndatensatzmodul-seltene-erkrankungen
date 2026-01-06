---
parent: 
topic: Specimen
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-impression
---

## {{page-title}}

Dieses Profil beschreibt die klinische Bewertung und Dokumentation interdisziplinärer Untersuchungen im Rahmen der Diagnostik seltener Erkrankungen.
Es ermöglicht die strukturierte Erfassung klinischer Eindrücke, Befunde und Behandlungsempfehlungen.

### Strukturierung der klinischen Bewertung

Die ClinicalImpression nutzt drei Hauptelemente zur Strukturierung der klinischen Bewertung:

#### **Problem** (`problem`)
Dokumentiert die **identifizierten Gesundheitsprobleme oder Diagnosen**:
- Bestätigte Diagnosen (ICD-10-GM, ORPHAcodes)
- Verdachtsdiagnosen
- Symptom-Conditions (symptomatische Zustände)
- Beispiel: "Verdacht auf Osteogenesis imperfecta" oder "Bestätigte Von-Willebrand-Erkrankung"

#### **Investigation** (`investigation`)
Erfasst **durchgeführte oder geplante Untersuchungen** zur Abklärung:
- Gruppierung zusammengehöriger Diagnostik
- Labor-Panels (z.B. Gerinnungsdiagnostik)
- Bildgebende Verfahren
- Genetische Tests
- Beispiel: Investigation mit Code "Basisdiagnostik" enthält Referenzen auf CBC, PTT, Blutungszeit

#### **Finding** (`finding`)
Dokumentiert **konkrete Befunde und Beobachtungen**:
- HPO-kodierte phänotypische Merkmale
- Auffällige Laborwerte
- Bildgebungsbefunde
- Klinische Beobachtungen
- Beispiel: "Erhöhte PTT (409675001)", "Bruising susceptibility (HP:0000978)"

### Verwendungsbeispiel

```
ClinicalImpression (Erstvorstellung)
├── problem: Verdacht auf Von-Willebrand-Syndrom
├── investigation[0]: 
│   ├── code: "Gerinnungsdiagnostik"
│   └── item: [PTT-Messung, vWF-Aktivität, Blutungszeit]
└── finding[0]: Nasenbluten (R04.0)
└── finding[1]: Hämatom-Neigung (HP:0000978)
└── finding[2]: PTT verlängert (409675001)
```



@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-impression' 
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
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-impression'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-impression' 
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

**Suchparameter**

Folgende Suchparameter sind für das Modul Seltene Erkrankungen relevant, auch in Kombination:

1. Der Suchparameter ```_id``` MUSS unterstützt werden:

    Beispiele: 

    ```GET [base]/ClinicalImpression?_id=1234```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:
    
    ```GET [base]/ClinicalImpression?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-impression```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#all).

3. Der Suchparameter "status" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ClinicalImpression?status=completed```

    Anwendungshinweise: Weitere Informationen zur Suche nach "status" finden sich in der FHIR-Basisspezifikation - Abschnitt "token".

4. Der Suchparameter "subject" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ClinicalImpression?subject=Patient/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "subject" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".

5. Der Suchparameter "problem" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ClinicalImpression?problem=Condition/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "problem" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".

6. Der Suchparameter "encounter" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ClinicalImpression?encounter=Encounter/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "encounter" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".

7. Der Suchparameter "date" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ClinicalImpression?date=2024-02-08```

    Anwendungshinweise: Weitere Informationen zur Suche nach "date" finden sich in der FHIR-Basisspezifikation - Abschnitt "date".

8. Der Suchparameter "finding-ref" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ClinicalImpression?finding-ref=Observation/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "finding-ref" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".

**Beispiele**

### Beispiel: Klinische Beurteilung bei Erstvorstellung

{{json:clinical-impression-erstvorstellung}}

### Beispiel: Klinische Beurteilung bei Nachsorge

{{json:clinical-impression-nachsorge}}

---
