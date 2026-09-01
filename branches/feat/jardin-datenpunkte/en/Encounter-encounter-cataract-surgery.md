# Katarakt-Operation Aufenthalt - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Katarakt-Operation Aufenthalt**

## Example Encounter: Katarakt-Operation Aufenthalt

-------

**English**

-------

**status**: Finished

**class**: [ActCode: SS](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActCode.html#v3-ActCode-SS) (short stay)

**type**: Admission to surgical department

**subject**: [Anonymous Patient Male, DoB: 2005-01-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#MRF-2024-001)](Patient-patient-marfan-001.md)

**period**: 2024-11-12 07:00:00+0000 --> 2024-11-12 15:00:00+0000

### Diagnoses

| | | |
| :--- | :--- | :--- |
| - | **Condition** | **Use** |
| * | [Condition Katarakt, nicht näher bezeichnet](Condition-condition-cataract.md) | Chief complaint |



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "encounter-cataract-surgery",
  "status" : "finished",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "SS",
    "display" : "short stay"
  },
  "type" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "305408004",
      "display" : "Admission to surgical department"
    }]
  }],
  "subject" : {
    "reference" : "Patient/patient-marfan-001"
  },
  "period" : {
    "start" : "2024-11-12T07:00:00Z",
    "end" : "2024-11-12T15:00:00Z"
  },
  "diagnosis" : [{
    "condition" : {
      "reference" : "Condition/condition-cataract"
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
