# Kardiologische Vorstellung (generisch) - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Kardiologische Vorstellung (generisch)**

## Beispiel Encounter: Kardiologische Vorstellung (generisch)

-------

**German**

-------

**status**: Finished

**class**: [ActCode: AMB](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActCode.html#v3-ActCode-AMB) (ambulatory)

**type**: Seen in cardiac clinic (finding)

**subject**: [Max Mustermann (official) Male, DoB: 1990-01-01 ( http://test-krankenhaus.de/fhir/sid/patienten#12345)](Patient-mii-exa-seltene-patient.md)

**period**: 2024-12-15 --> 2024-12-15



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "mii-exa-seltene-encounter-cardiology-consultation",
  "status" : "finished",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "AMB",
    "display" : "ambulatory"
  },
  "type" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "185228002",
      "display" : "Seen in cardiac clinic (finding)"
    }]
  }],
  "subject" : {
    "reference" : "Patient/mii-exa-seltene-patient"
  },
  "period" : {
    "start" : "2024-12-15",
    "end" : "2024-12-15"
  }
}

```
