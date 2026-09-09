# Stationärer Aufenthalt zur Gentherapie - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Stationärer Aufenthalt zur Gentherapie**

## Beispiel Encounter: Stationärer Aufenthalt zur Gentherapie

-------

**German**

-------

**status**: Finished

**class**: [ActCode: IMP](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActCode.html#v3-ActCode-IMP) (inpatient encounter)

**type**: Hospital admission

**subject**: [Anonymous Patient Female, DoB: 2024-07-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#SMA-2024-001)](Patient-mii-exa-seltene-patient-sma-001.md)

**period**: 2024-07-29 --> 2024-07-30

### Diagnoses

| | | |
| :--- | :--- | :--- |
| - | **Condition** | **Use** |
| * | [Condition Spinal muscular atrophy, type I](Condition-mii-exa-seltene-condition-sma-genetic.md) | Chief complaint |



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "mii-exa-seltene-encounter-stationaer-001",
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
    "reference" : "Patient/mii-exa-seltene-patient-sma-001"
  },
  "period" : {
    "start" : "2024-07-29",
    "end" : "2024-07-30"
  },
  "diagnosis" : [{
    "condition" : {
      "reference" : "Condition/mii-exa-seltene-condition-sma-genetic"
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
