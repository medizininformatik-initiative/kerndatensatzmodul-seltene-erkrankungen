# Ambulante Nachsorge - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ambulante Nachsorge**

## Example Encounter: Ambulante Nachsorge

-------

**English**

-------

**status**: Finished

**class**: [ActCode: AMB](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActCode.html#v3-ActCode-AMB) (ambulatory)

**type**: Follow-up encounter

**subject**: [Anonymous Patient Female, DoB: 2024-07-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#SMA-2024-001)](Patient-patient-sma-001.md)

**period**: 2024-08-12 --> 2024-08-12

### Diagnoses

| | |
| :--- | :--- |
| - | **Condition** |
| * | [Condition Spinal muscular atrophy, type I](Condition-condition-sma-genetic.md) |



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "encounter-nachsorge-001",
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
    "reference" : "Patient/patient-sma-001"
  },
  "period" : {
    "start" : "2024-08-12",
    "end" : "2024-08-12"
  },
  "diagnosis" : [{
    "condition" : {
      "reference" : "Condition/condition-sma-genetic"
    }
  }]
}

```
