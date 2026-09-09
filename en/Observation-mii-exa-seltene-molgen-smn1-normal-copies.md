# SMN1 - Normale Kopienanzahl - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SMN1 - Normale Kopienanzahl**

## Example Observation: SMN1 - Normale Kopienanzahl

-------

**English**

-------

**status**: Final

**category**: Laboratory

**code**: Genetic variant assessment

**subject**: [Max Mustermann (official) Male, DoB: 1990-01-01 ( http://test-krankenhaus.de/fhir/sid/patienten#12345)](Patient-mii-exa-seltene-patient.md)

**effective**: 2024-07-26

**value**: Normal result

**interpretation**: Normal

**note**: 

> 

Normale Kopienanzahl des SMN1-Gens. SMA ausgeschlossen.


> **component****code**: Gene studied [ID]**value**: SMN1

> **component****code**: Copy Number**value**: 2



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-seltene-molgen-smn1-normal-copies",
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
      "code" : "69548-6",
      "display" : "Genetic variant assessment"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-seltene-patient"
  },
  "effectiveDateTime" : "2024-07-26",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "280413001",
      "display" : "Normal result"
    }]
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "N",
      "display" : "Normal"
    }]
  }],
  "note" : [{
    "text" : "Normale Kopienanzahl des SMN1-Gens. SMA ausgeschlossen."
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
        "code" : "HGNC:11117",
        "display" : "SMN1"
      }]
    }
  },
  {
    "code" : {
      "text" : "Copy Number"
    },
    "valueInteger" : 2
  }]
}

```
