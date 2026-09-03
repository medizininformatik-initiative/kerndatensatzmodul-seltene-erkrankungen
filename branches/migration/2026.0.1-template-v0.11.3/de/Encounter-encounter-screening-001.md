# Neugeborenenscreening - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Neugeborenenscreening**

## Beispiel Encounter: Neugeborenenscreening

-------

**German**

-------

**status**: Finished

**class**: [ActCode: AMB](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActCode.html#v3-ActCode-AMB) (ambulatory)

**type**: Neonatal screening (procedure)

**subject**: [Anonymous Patient Female, DoB: 2024-07-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#SMA-2024-001)](Patient-patient-sma-001.md)

**period**: 2024-07-18 --> 2024-07-18

**reasonCode**: Neugeborenenscreening



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "encounter-screening-001",
  "status" : "finished",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "AMB",
    "display" : "ambulatory"
  },
  "type" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "60151004",
      "display" : "Neonatal screening (procedure)"
    }]
  }],
  "subject" : {
    "reference" : "Patient/patient-sma-001"
  },
  "period" : {
    "start" : "2024-07-18",
    "end" : "2024-07-18"
  },
  "reasonCode" : [{
    "text" : "Neugeborenenscreening"
  }]
}

```
