# Augenärztliche Konsultation - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Augenärztliche Konsultation**

## Example Encounter: Augenärztliche Konsultation

-------

**English**

-------

**status**: Finished

**class**: [ActCode: AMB](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActCode.html#v3-ActCode-AMB) (ambulatory)

**type**: Ophthalmic examination and evaluation

**subject**: [Anonymous Patient Male, DoB: 2005-01-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#MRF-2024-001)](Patient-patient-marfan-001.md)

**period**: 2024-10-15 --> 2024-10-15

### Diagnoses

| | | |
| :--- | :--- | :--- |
| - | **Condition** | **Use** |
| * | [Condition Katarakt, nicht näher bezeichnet](Condition-condition-cataract.md) | Admission diagnosis |



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "encounter-ophthalmology",
  "status" : "finished",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "AMB",
    "display" : "ambulatory"
  },
  "type" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "36228007",
      "display" : "Ophthalmic examination and evaluation"
    }]
  }],
  "subject" : {
    "reference" : "Patient/patient-marfan-001"
  },
  "period" : {
    "start" : "2024-10-15",
    "end" : "2024-10-15"
  },
  "diagnosis" : [{
    "condition" : {
      "reference" : "Condition/condition-cataract"
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
