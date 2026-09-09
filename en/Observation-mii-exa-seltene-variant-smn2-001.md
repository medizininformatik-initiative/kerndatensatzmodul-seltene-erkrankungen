# SMN2 Gen - Kopienanzahl - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SMN2 Gen - Kopienanzahl**

## Example Observation: SMN2 Gen - Kopienanzahl

-------

**English**

-------

**status**: Final

**category**: Laboratory

**code**: Genetic analysis master panel

**subject**: [Anonymous Patient Female, DoB: 2024-07-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#SMA-2024-001)](Patient-mii-exa-seltene-patient-sma-001.md)

**effective**: 2024-07-26

**note**: 

> 

2 Kopien des SMN2-Gens, Modifikator des Phänotyps


> **component****code**: Gene studied [ID]**value**: SMN2

> **component****code**: Copy Number**value**: 2 copies



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-seltene-variant-smn2-001",
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "laboratory"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "55233-1",
      "display" : "Genetic analysis master panel"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-seltene-patient-sma-001"
  },
  "effectiveDateTime" : "2024-07-26",
  "note" : [{
    "text" : "2 Kopien des SMN2-Gens, Modifikator des Phänotyps"
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "48018-6",
        "display" : "Gene studied [ID]"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://www.genenames.org/geneId",
        "code" : "HGNC:11118",
        "display" : "SMN2"
      }]
    }
  },
  {
    "code" : {
      "text" : "Copy Number"
    },
    "valueQuantity" : {
      "value" : 2,
      "unit" : "copies"
    }
  }]
}

```
