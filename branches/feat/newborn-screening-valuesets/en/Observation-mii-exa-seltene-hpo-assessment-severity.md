# HPO Assessment - Present with Severity - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HPO Assessment - Present with Severity**

## Example Observation: HPO Assessment - Present with Severity

-------

**English**

-------

Profile: [https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment|2026.0.1](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment|2026.0.1)

**status**: Final

**code**: Cardiomyopathy

**subject**: [Patient/example-patient](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/example-patient)

**effective**: 2024-01-15

**note**: 

> 

Moderate cardiomyopathy confirmed by echocardiography. Both presence status and severity grade are captured in separate components.


> **component****code**: Presence findings**value**: Present

> **component****code**: Severity**value**: Moderate



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-seltene-hpo-assessment-severity",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment|2026.0.1"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://human-phenotype-ontology.org",
      "code" : "HP:0001638",
      "display" : "Cardiomyopathy"
    }]
  },
  "subject" : {
    "reference" : "Patient/example-patient"
  },
  "effectiveDateTime" : "2024-01-15",
  "note" : [{
    "text" : "Moderate cardiomyopathy confirmed by echocardiography. Both presence status and severity grade are captured in separate components."
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "260411009",
        "display" : "Presence findings"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "LA9633-4",
        "display" : "Present"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://human-phenotype-ontology.org",
        "code" : "HP:0012824",
        "display" : "Severity"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://human-phenotype-ontology.org",
        "code" : "HP:0012826",
        "display" : "Moderate"
      }]
    }
  }]
}

```
