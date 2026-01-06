---
parent: 
topic: Specimen
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment
---

## {{page-title}}

Dieses Profil beschreibt die Phänotypisierung gemäß Human Phenotype Ontology (HPO) im Rahmen der Diagnostik seltener Erkrankungen.
Es ermöglicht die strukturierte Erfassung phänotypischer Abnormalitäten und klinischer Merkmale.

### HL7 Phenomics IG Pattern

Dieses Profil folgt dem **HL7 Phenomics Exchange Implementation Guide** Pattern für die Dokumentation phänotypischer Merkmale. Dies bedeutet:

- **`value[x]` wird nicht verwendet** - stattdessen werden Status und Schweregrad in `component`-Elementen erfasst
- **`component[status]`** dokumentiert, ob der Phänotyp vorhanden (Present) oder explizit ausgeschlossen (Absent) ist
- **`component[severity]`** ermöglicht die Angabe eines Schweregrads (Mild, Moderate, Severe, Profound, Borderline)

Dieses Pattern ermöglicht eine präzisere und international interoperable Dokumentation phänotypischer Befunde.

### Zeitpunktbezogene Dokumentation

**Wichtig:** Jede HPO-Observation repräsentiert einen **spezifischen Zeitpunkt** der Phänotyp-Bewertung. Da sich Phänotypen im Verlauf einer Erkrankung verändern können, ist es essentiell:

- **Einzelne Beobachtungen** zu dokumentieren mit präzisen Zeitstempeln (`effectiveDateTime`)
- **Verlaufsänderungen** über das `component[status].interpretation` Element zu erfassen
- **Parallele Dokumentation** sowohl als Observation (Zeitpunkt) als auch als Symptom-Condition (Zeitraum) zu erwägen

**Hinweis zur Datumserfassung:** Das Datum (`effectiveDateTime`) ist **nicht** Teil der Kerndatensätze, **SOLL** aber wenn möglich erfasst werden, um die zeitliche Nachvollziehbarkeit der Phänotyp-Entwicklung zu gewährleisten.

Diese zeitpunktbezogene Erfassung ermöglicht die Nachvollziehbarkeit der Krankheitsprogression und Therapieeffekte bei seltenen Erkrankungen.

### Abgrenzung zur Symptom-Condition

> **Wichtig:** Die Unterscheidung zwischen **HPO-Observation** und **Symptom-Condition** ist klinisch bedeutsam:
> - **HPO-Observation**: Dokumentiert eine **einzelne Untersuchung/Bewertung** zu einem bestimmten Zeitpunkt (z.B. "Am 15.03.2024 wurde Arachnodaktylie festgestellt")
> - **Symptom-Condition**: Dokumentiert einen **persistierenden Zustand** über einen Zeitraum (z.B. "Patient hat seit dem Kindesalter Arachnodaktylie")

Ein vollständiges Beispiel dieser Unterscheidung findet sich im **Marfan-Syndrom Beispiel**: {{pagelink:marfan-beispiel}}

Dort wird gezeigt, wie:
- Einzelne HPO-Beobachtungen bei verschiedenen Untersuchungsterminen erfasst werden
- Diese Beobachtungen als Evidenz für persistierende Symptom-Conditions dienen
- Mehrfache Bestätigungen desselben Phänotyps die Diagnosesicherheit erhöhen

### Verknüpfung mit Evidenz

Das `derivedFrom` Element ermöglicht die Verknüpfung der HPO-Beobachtung mit konkreten klinischen Befunden:
- **Laborwerte**: Referenz auf auffällige Laborergebnisse (z.B. erhöhte CK-Werte bei Muskeldystrophie)
- **Bildgebung**: Verweis auf radiologische oder andere bildgebende Befunde
- **Andere Beobachtungen**: Verknüpfung mit weiteren klinischen Assessments

Diese Referenzierung schafft Transparenz über die Grundlage der phänotypischen Einschätzung.

### Phänotyp-Status (Present/Absent)

Das `component[status]` Element dokumentiert, ob ein Phänotyp vorhanden oder explizit ausgeschlossen ist. Dies ermöglicht die präzise Dokumentation von "negativen" Befunden (Phänotyp wurde geprüft und ist nicht vorhanden).

```json
{
  "component": [{
    "code": {
      "coding": [{
        "system": "http://snomed.info/sct",
        "code": "260411009",
        "display": "Presence findings"
      }]
    },
    "valueCodeableConcept": {
      "coding": [{
        "system": "http://loinc.org",
        "code": "LA9633-4",
        "display": "Present"
      }]
    }
  }]
}
```

#### Verfügbare Status-Codes

| LOINC Code | Anzeige | Beschreibung |
|------------|---------|--------------|
| LA9633-4 | Present | Phänotyp ist vorhanden |
| LA9634-2 | Absent | Phänotyp ist explizit ausgeschlossen |

### Schweregrad (Severity)

Das optionale `component[severity]` Element ermöglicht die Dokumentation des Schweregrads eines Phänotyps gemäß der HPO-Severity-Ontologie:

```json
{
  "component": [{
    "code": {
      "coding": [{
        "system": "http://purl.obolibrary.org/obo/hp.owl",
        "code": "HP:0012824",
        "display": "Severity"
      }]
    },
    "valueCodeableConcept": {
      "coding": [{
        "system": "http://purl.obolibrary.org/obo/hp.owl",
        "code": "HP:0012826",
        "display": "Moderate"
      }]
    }
  }]
}
```

#### Verfügbare Schweregrad-Codes

| HPO Code | Anzeige | Beschreibung |
|----------|---------|--------------|
| HP:0012825 | Mild | Leichte Ausprägung |
| HP:0012826 | Moderate | Mäßige Ausprägung |
| HP:0012828 | Severe | Schwere Ausprägung |
| HP:0012829 | Profound | Sehr schwere Ausprägung |
| HP:0012827 | Borderline | Grenzwertige Ausprägung |

### Änderungsstatus von HPO-Phänotypen

Gemäß den Vorgaben des Modellvorhabens Genomsequenzierung unterstützt dieses Profil die Dokumentation von Änderungen bei HPO-Phänotypen über Zeit. Der Änderungsstatus wird im `component[status].interpretation` Element dokumentiert, zusammen mit dem Präsenz-Status:

```json
{
  "component": [{
    "code": {
      "coding": [{
        "system": "http://snomed.info/sct",
        "code": "260411009",
        "display": "Presence findings"
      }]
    },
    "valueCodeableConcept": {
      "coding": [{
        "system": "http://loinc.org",
        "code": "LA9633-4",
        "display": "Present"
      }]
    },
    "interpretation": [{
      "coding": [{
        "system": "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-hpo-change-status",
        "code": "improved",
        "display": "Verbessert"
      }]
    }]
  }]
}
```

#### Verfügbare Änderungsstatus-Codes

| Code | Anzeige | Beschreibung |
|------|---------|--------------|
| newly-added | Neu hinzugefügt | Phänotyp wurde neu beobachtet/diagnostiziert |
| improved | Verbessert | Phänotyp hat sich verbessert |
| degraded | Verschlechtert | Phänotyp hat sich verschlechtert |
| no-longer-observed | Nicht mehr beobachtet | Phänotyp wird nicht mehr beobachtet/ist verschwunden |
| unchanged | Unverändert | Phänotyp ist unverändert geblieben |



@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment' 
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
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment' 
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

    ```GET [base]/Observation?_id=1234```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:
    
    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#all).

3. Der Suchparameter "category" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?category=http://terminology.hl7.org/CodeSystem/observation-category|laboratory```

    Anwendungshinweise: Weitere Informationen zur Suche nach "category" finden sich in der FHIR-Basisspezifikation - Abschnitt "token".

4. Der Suchparameter "code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?code=http://loinc.org|79716-7```

    Anwendungshinweise: Weitere Informationen zur Suche nach "code" finden sich in der FHIR-Basisspezifikation - Abschnitt "token".

5. Der Suchparameter "subject" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?subject=Patient/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "subject" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".

6. Der Suchparameter "focus" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?focus=Condition/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "focus" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".

7. Der Suchparameter "encounter" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?encounter=Encounter/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "encounter" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".

8. Der Suchparameter "date" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?date=2024-02-08```

    Anwendungshinweise: Weitere Informationen zur Suche nach "date" finden sich in der FHIR-Basisspezifikation - Abschnitt "date".

9. Der Suchparameter "derived-from" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?derived-from=Observation/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "derived-from" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".

**Beispiele**

### Beispiel: Basis HPO-Assessment

{{json:mii-exa-seltene-hpo-assessment}}

### Beispiel: HPO-Assessment mit Schweregrad

{{json:mii-exa-seltene-hpo-assessment-severity}}

### Beispiel: Ausgeschlossener HPO-Phänotyp (Absent)

{{json:mii-exa-seltene-hpo-assessment-excluded}}

### Beispiel: HPO-Assessment mit Änderungsstatus

{{json:mii-exa-seltene-hpo-assessment-change-status}}

---
