# ICF example — activities and participation (chapter d), capacity vs performance - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ICF example — activities and participation (chapter d), capacity vs performance**

## Example Observation: ICF example — activities and participation (chapter d), capacity vs performance

-------

**English**

-------

Profile: [https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-icf-assessment|2026.0.1](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-icf-assessment|2026.0.1)

**status**: Final

**category**: Survey

**code**: Eating

**subject**: [Anonymous Patient Female, DoB: 2024-07-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#SMA-2024-001)](Patient-patient-sma-001.md)

**effective**: 2025-07-01

**note**: 

> 

Leistungsfähigkeit ohne Hilfsmittel beurteilt, Leistung mit liegender PEG. Die Differenz beziffert den Nutzen der Sondenernährung.


> **component****code**: Capacity**value**: Problem voll ausgeprägt (komplett, total ...) 96-100 %

> **component****code**: Performance**value**: Problem mäßig ausgeprägt (mittel, ziemlich ...) 25-49 %



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-seltene-icf-aktivitaet",
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
      "code" : "d550",
      "display" : "Eating"
    }]
  },
  "subject" : {
    "reference" : "Patient/patient-sma-001"
  },
  "effectiveDateTime" : "2025-07-01",
  "note" : [{
    "text" : "Leistungsfähigkeit ohne Hilfsmittel beurteilt, Leistung mit liegender PEG. Die Differenz beziffert den Nutzen der Sondenernährung."
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-icf-beurteilungsmerkmal",
        "code" : "capacity"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://terminologien.bfarm.de/fhir/CodeSystem/icf-q-leistungsfaehigkeit-und-leistung",
        "code" : ".4",
        "display" : "Problem voll ausgeprägt (komplett, total ...) 96-100 %"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-icf-beurteilungsmerkmal",
        "code" : "performance"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://terminologien.bfarm.de/fhir/CodeSystem/icf-q-leistungsfaehigkeit-und-leistung",
        "code" : ".2",
        "display" : "Problem mäßig ausgeprägt (mittel, ziemlich ...) 25-49 %"
      }]
    }
  }]
}

```
