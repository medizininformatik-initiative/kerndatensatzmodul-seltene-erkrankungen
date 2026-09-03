# Stationärer Aufenthalt zur Gentherapie - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Stationärer Aufenthalt zur Gentherapie**

## Example Encounter: Stationärer Aufenthalt zur Gentherapie

-------

**English**

-------

**status**: Finished

**class**: [ActCode: IMP](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActCode.html#v3-ActCode-IMP) (inpatient encounter)

**type**: Hospital admission

**subject**: [Anonymous Patient Female, DoB: 2024-07-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#SMA-2024-001)](Patient-patient-sma-001.md)

**period**: 2024-07-29 --> 2024-07-30

### Diagnoses

| | | |
| :--- | :--- | :--- |
| - | **Condition** | **Use** |
| * | [Condition Spinal muscular atrophy, type I](Condition-condition-sma-genetic.md) | Chief complaint |



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "encounter-stationaer-001",
  "status" : "finished",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "IMP",
    "display" : "inpatient encounter"
  },
  "type" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "32485007",
      "display" : "Hospital admission"
    }]
  }],
  "subject" : {
    "reference" : "Patient/patient-sma-001"
  },
  "period" : {
    "start" : "2024-07-29",
    "end" : "2024-07-30"
  },
  "diagnosis" : [{
    "condition" : {
      "reference" : "Condition/condition-sma-genetic"
    },
    "use" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/diagnosis-role",
        "code" : "CC",
        "display" : "Chief complaint"
      }]
    }
  }]
}

```
