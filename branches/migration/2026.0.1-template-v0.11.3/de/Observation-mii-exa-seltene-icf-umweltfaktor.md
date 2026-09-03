# ICF example — environmental factor (chapter e), facilitator - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **ICF example — environmental factor (chapter e), facilitator**

## Beispiel Observation: ICF example — environmental factor (chapter e), facilitator

-------

**German**

-------

Profile: [MII PR SE ICF Assessment](StructureDefinition-mii-pr-seltene-icf-assessment.md) version: 2027.0.0-ballot.rc1

**status**: Final

**category**: Survey

**code**: Assistive products and technology for personal indoor and outdoor mobility and transportation

**subject**: [Anonymous Patient Female, DoB: 2024-07-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#SMA-2024-001)](Patient-mii-exa-seltene-patient-sma-001.md)

**effective**: 2025-07-01

**note**: 

> 

Angepasste Sitzschale und Lagerungshilfen.


### Components

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | Facilitator | Förderfaktor erheblich ausgeprägt (hoch, äußerst ...) 50-95% |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-seltene-icf-umweltfaktor",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-icf-assessment|2027.0.0-ballot.rc1"]
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
      "code" : "e1201",
      "display" : "Assistive products and technology for personal indoor and outdoor mobility and transportation"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-seltene-patient-sma-001"
  },
  "effectiveDateTime" : "2025-07-01",
  "note" : [{
    "text" : "Angepasste Sitzschale und Lagerungshilfen."
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-icf-beurteilungsmerkmal",
        "code" : "facilitator"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://terminologien.bfarm.de/fhir/CodeSystem/icf-q-foerderfaktoren",
        "code" : "+3",
        "display" : "Förderfaktor erheblich ausgeprägt (hoch, äußerst ...) 50-95%"
      }]
    }
  }]
}

```
