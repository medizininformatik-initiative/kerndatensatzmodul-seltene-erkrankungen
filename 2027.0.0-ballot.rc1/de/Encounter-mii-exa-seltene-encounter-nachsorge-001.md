# Ambulante Nachsorge - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Ambulante Nachsorge**

## Beispiel Encounter: Ambulante Nachsorge

-------

**German**

-------

**status**: Finished

**class**: [ActCode: AMB](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActCode.html#v3-ActCode-AMB) (ambulatory)

**type**: Follow-up encounter

**subject**: [Anonymous Patient Female, DoB: 2024-07-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#SMA-2024-001)](Patient-mii-exa-seltene-patient-sma-001.md)

**period**: 2024-08-12 --> 2024-08-12

### Diagnoses

| | |
| :--- | :--- |
| - | **Condition** |
| * | [Condition Spinal muscular atrophy, type I](Condition-mii-exa-seltene-condition-sma-genetic.md) |



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "mii-exa-seltene-encounter-nachsorge-001",
  "status" : "finished",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "AMB",
    "display" : "ambulatory"
  },
  "type" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "390906007",
      "display" : "Follow-up encounter"
    }]
  }],
  "subject" : {
    "reference" : "Patient/mii-exa-seltene-patient-sma-001"
  },
  "period" : {
    "start" : "2024-08-12",
    "end" : "2024-08-12"
  },
  "diagnosis" : [{
    "condition" : {
      "reference" : "Condition/mii-exa-seltene-condition-sma-genetic"
    }
  }]
}

```
