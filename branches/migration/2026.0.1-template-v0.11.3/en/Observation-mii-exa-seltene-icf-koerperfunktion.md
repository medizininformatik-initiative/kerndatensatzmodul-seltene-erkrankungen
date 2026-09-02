# ICF example — body function (chapter b), one qualifier - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ICF example — body function (chapter b), one qualifier**

## Example Observation: ICF example — body function (chapter b), one qualifier

-------

**English**

-------

Profile: [https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-icf-assessment|2026.0.1](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-icf-assessment|2026.0.1)

**status**: Final

**category**: Survey

**code**: Muscle power functions

**subject**: [Anonymous Patient Female, DoB: 2024-07-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#SMA-2024-001)](Patient-patient-sma-001.md)

**effective**: 2025-07-01

### Components

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | Extent of impairment (body functions) | Schädigung voll ausgeprägt (komplett, total ...) 96-100 % |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-seltene-icf-koerperfunktion",
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
      "code" : "b730",
      "display" : "Muscle power functions"
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
        "code" : "extent-of-impairment"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://terminologien.bfarm.de/fhir/CodeSystem/icf-q-ausmass-der-schaedigung",
        "code" : ".4",
        "display" : "Schädigung voll ausgeprägt (komplett, total ...) 96-100 %"
      }]
    }
  }]
}

```
