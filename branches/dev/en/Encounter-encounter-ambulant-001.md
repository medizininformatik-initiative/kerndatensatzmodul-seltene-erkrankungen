# Ambulante Erstvorstellung - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2026.0.1

## Example Encounter: Ambulante Erstvorstellung

**status**: Finished

**class**: [ActCode: AMB](http://terminology.hl7.org/7.2.0/CodeSystem-v3-ActCode.html#v3-ActCode-AMB) (ambulatory)

**type**: Follow-up encounter

**subject**: [Anonymous Patient Female, DoB: 2024-07-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#SMA-2024-001)](Patient-patient-sma-001.md)

**period**: 2024-07-22 --> 2024-07-22

### Diagnoses

| | | |
| :--- | :--- | :--- |
| - | **Condition** | **Use** |
| * | [Condition Infantile spinale Muskelatrophie, Typ I [Typ Werdnig-Hoffmann]](Condition-condition-sma-clinical.md) | Admission diagnosis |



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "encounter-ambulant-001",
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
    "start" : "2024-07-22",
    "end" : "2024-07-22"
  },
  "diagnosis" : [{
    "condition" : {
      "reference" : "Condition/condition-sma-clinical"
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
