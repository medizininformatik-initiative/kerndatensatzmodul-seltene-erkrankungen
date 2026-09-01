# Beispiel Geschlecht bei Geburt — nicht bestimmbar - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Geschlecht bei Geburt — nicht bestimmbar**

## Example Observation: Beispiel Geschlecht bei Geburt — nicht bestimmbar

-------

**English**

-------

Profile: [https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-geschlecht-bei-geburt|2026.0.1](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-geschlecht-bei-geburt|2026.0.1)

**status**: Final

**category**: Social History

**code**: Sex assigned at birth

**subject**: [Max Mustermann Male, DoB: 1990-01-01 ( http://test-krankenhaus.de/fhir/sid/patienten#12345)](Patient-example.md)

**effective**: 1990-01-01

**value**: Bei Geburt nicht bestimmbar; Zuordnung nach Abklärung offen



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-seltene-geschlecht-bei-geburt-indeterminate",
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
    "reference" : "Patient/example"
  },
  "effectiveDateTime" : "1990-01-01",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "37791004",
      "display" : "Indeterminate sex"
    }],
    "text" : "Bei Geburt nicht bestimmbar; Zuordnung nach Abklärung offen"
  }
}

```
