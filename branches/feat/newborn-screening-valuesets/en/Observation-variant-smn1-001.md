# SMN1 Gen - Homozygote Deletion - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SMN1 Gen - Homozygote Deletion**

## Example Observation: SMN1 Gen - Homozygote Deletion

-------

**English**

-------

**status**: Final

**category**: Laboratory

**code**: Genetic analysis master panel

**subject**: [Anonymous Patient Female, DoB: 2024-07-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#SMA-2024-001)](Patient-patient-sma-001.md)

**effective**: 2024-07-26

**value**: Positive

**interpretation**: Positive

**note**: 

> 

Homozygote Deletion des SMN1-Gens, krankheitsursächlich für SMA


> **component****code**: Gene studied [ID]**value**: SMN1

> **component****code**: Human reference sequence assembly version**value**: GRCh38

> **component****code**: Allelic state**value**: Homozygous

> **component****code**: Copy Number**value**: 0 copies



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "variant-smn1-001",
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
    "reference" : "Patient/patient-sma-001"
  },
  "effectiveDateTime" : "2024-07-26",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "10828004",
      "display" : "Positive"
    }]
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "POS",
      "display" : "Positive"
    }]
  }],
  "note" : [{
    "text" : "Homozygote Deletion des SMN1-Gens, krankheitsursächlich für SMA"
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
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "62374-4",
        "display" : "Human reference sequence assembly version"
      }]
    },
    "valueCodeableConcept" : {
      "text" : "GRCh38"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "53034-5",
        "display" : "Allelic state"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "LA6705-3",
        "display" : "Homozygous"
      }]
    }
  },
  {
    "code" : {
      "text" : "Copy Number"
    },
    "valueQuantity" : {
      "value" : 0,
      "unit" : "copies"
    }
  }]
}

```
