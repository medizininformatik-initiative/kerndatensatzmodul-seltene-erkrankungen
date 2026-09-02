# ICF example — body structure (chapter s), three qualifiers - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ICF example — body structure (chapter s), three qualifiers**

## Example Observation: ICF example — body structure (chapter s), three qualifiers

-------

**English**

-------

Profile: [https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-icf-assessment|2026.0.1](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-icf-assessment|2026.0.1)

**status**: Final

**category**: Survey

**code**: Spinal cord and related structures

**subject**: [Anonymous Patient Female, DoB: 2024-07-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#SMA-2024-001)](Patient-patient-sma-001.md)

**effective**: 2025-07-01

> **component****code**: Extent of impairment (body structures)**value**: Schädigung erheblich ausgeprägt (hoch, äußerst ...) 50-95 %

> **component****code**: Nature of change (body structures)**value**: qualitative Strukturveränderung, einschließlich Ansammlung von Flüssigkeit

> **component****code**: Anatomical location (body structures)**value**: beidseitig



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-seltene-icf-koerperstruktur",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-icf-assessment|2026.0.1"]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "survey"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://hl7.org/fhir/sid/icf",
      "code" : "s120",
      "display" : "Spinal cord and related structures"
    }]
  },
  "subject" : {
    "reference" : "Patient/patient-sma-001"
  },
  "effectiveDateTime" : "2025-07-01",
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-icf-beurteilungsmerkmal",
        "code" : "extent-of-impairment-structure"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://terminologien.bfarm.de/fhir/CodeSystem/icf-q-ausmass-der-schaedigung-s",
        "code" : ".3",
        "display" : "Schädigung erheblich ausgeprägt (hoch, äußerst ...) 50-95 %"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-icf-beurteilungsmerkmal",
        "code" : "nature-of-change"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://terminologien.bfarm.de/fhir/CodeSystem/icf-q-art-oder-veraenderung-in-der-entsprechenden-koerperstruktur",
        "code" : "7",
        "display" : "qualitative Strukturveränderung, einschließlich Ansammlung von Flüssigkeit"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-icf-beurteilungsmerkmal",
        "code" : "anatomical-location"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://terminologien.bfarm.de/fhir/CodeSystem/icf-q-anatomische-lokalisation",
        "code" : "3",
        "display" : "beidseitig"
      }]
    }
  }]
}

```
