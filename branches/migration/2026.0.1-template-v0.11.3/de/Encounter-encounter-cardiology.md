# Kardiologische Erstvorstellung - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Kardiologische Erstvorstellung**

## Beispiel Encounter: Kardiologische Erstvorstellung

-------

**German**

-------

**status**: Finished

**class**: [ActCode: AMB](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActCode.html#v3-ActCode-AMB) (ambulatory)

**type**: Seen in cardiac clinic (finding)

**subject**: [Anonymous Patient Male, DoB: 2005-01-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#MRF-2024-001)](Patient-patient-marfan-001.md)

**period**: 2024-12-15 --> 2024-12-15

**reasonCode**: Thoraxschmerzen bei V.a. Marfan-Syndrom

### Diagnoses

| | | |
| :--- | :--- | :--- |
| - | **Condition** | **Use** |
| * | [Condition Marfan syndrome](Condition-condition-marfan-clinical.md) | Admission diagnosis |



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "encounter-cardiology",
  "status" : "finished",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "AMB",
    "display" : "ambulatory"
  },
  "type" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "185228002",
      "display" : "Seen in cardiac clinic (finding)"
    }]
  }],
  "subject" : {
    "reference" : "Patient/patient-marfan-001"
  },
  "period" : {
    "start" : "2024-12-15",
    "end" : "2024-12-15"
  },
  "reasonCode" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "29857009",
      "display" : "Chest pain"
    }],
    "text" : "Thoraxschmerzen bei V.a. Marfan-Syndrom"
  }],
  "diagnosis" : [{
    "condition" : {
      "reference" : "Condition/condition-marfan-clinical"
    },
    "use" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/diagnosis-role",
        "code" : "AD",
        "display" : "Admission diagnosis"
      }]
    }
  }]
}

```
