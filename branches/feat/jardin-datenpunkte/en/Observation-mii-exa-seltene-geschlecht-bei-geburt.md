# Beispiel Geschlecht bei Geburt — weiblich - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Geschlecht bei Geburt — weiblich**

## Example Observation: Beispiel Geschlecht bei Geburt — weiblich

-------

**English**

-------

Profile: [https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-geschlecht-bei-geburt|2026.0.1](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-geschlecht-bei-geburt|2026.0.1)

**status**: Final

**category**: Social History

**code**: Sex assigned at birth

**subject**: [Anonymous Patient Female, DoB: 2024-07-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#SMA-2024-001)](Patient-patient-sma-001.md)

**effective**: 2024-07-01

**value**: Female



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-seltene-geschlecht-bei-geburt",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-geschlecht-bei-geburt|2026.0.1"]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "social-history"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "76689-9",
      "display" : "Sex assigned at birth"
    }]
  },
  "subject" : {
    "reference" : "Patient/patient-sma-001"
  },
  "effectiveDateTime" : "2024-07-01",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "248152002",
      "display" : "Female"
    }]
  }
}

```
