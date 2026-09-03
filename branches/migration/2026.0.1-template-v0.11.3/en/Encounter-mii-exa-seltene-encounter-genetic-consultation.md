# Humangenetische Beratung (generisch) - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Humangenetische Beratung (generisch)**

## Example Encounter: Humangenetische Beratung (generisch)

-------

**English**

-------

**status**: Finished

**class**: [ActCode: AMB](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActCode.html#v3-ActCode-AMB) (ambulatory)

**type**: Genetic counseling

**subject**: [Max Mustermann (official) Male, DoB: 1990-01-01 ( http://test-krankenhaus.de/fhir/sid/patienten#12345)](Patient-mii-exa-seltene-patient.md)

**period**: 2024-09-15 --> 2024-09-15



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "mii-exa-seltene-encounter-genetic-consultation",
  "status" : "finished",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "AMB",
    "display" : "ambulatory"
  },
  "type" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "79841006",
      "display" : "Genetic counseling"
    }]
  }],
  "subject" : {
    "reference" : "Patient/mii-exa-seltene-patient"
  },
  "period" : {
    "start" : "2024-09-15",
    "end" : "2024-09-15"
  }
}

```
