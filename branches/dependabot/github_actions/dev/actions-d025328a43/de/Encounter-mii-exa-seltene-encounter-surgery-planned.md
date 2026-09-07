# Geplante Herzchirurgie - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Geplante Herzchirurgie**

## Beispiel Encounter: Geplante Herzchirurgie

-------

**German**

-------

**status**: Planned

**class**: [ActCode: IMP](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActCode.html#v3-ActCode-IMP) (inpatient encounter)

**type**: Admission to cardiology department

**subject**: [Anonymous Patient Male, DoB: 2005-01-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#MRF-2024-001)](Patient-mii-exa-seltene-patient-marfan-001.md)

**period**: 2025-03-15 --> (ongoing)

**reasonCode**: Elektive Aortenwurzelersatz-Operation bei Marfan-Syndrom

### Diagnoses

| | | |
| :--- | :--- | :--- |
| - | **Condition** | **Use** |
| * | [Condition Marfan syndrome](Condition-mii-exa-seltene-condition-marfan-clinical.md) | Chief complaint |



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "mii-exa-seltene-encounter-surgery-planned",
  "status" : "planned",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "IMP",
    "display" : "inpatient encounter"
  },
  "type" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "305357000",
      "display" : "Admission to cardiology department"
    }]
  }],
  "subject" : {
    "reference" : "Patient/mii-exa-seltene-patient-marfan-001"
  },
  "period" : {
    "start" : "2025-03-15"
  },
  "reasonCode" : [{
    "text" : "Elektive Aortenwurzelersatz-Operation bei Marfan-Syndrom"
  }],
  "diagnosis" : [{
    "condition" : {
      "reference" : "Condition/mii-exa-seltene-condition-marfan-clinical"
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
