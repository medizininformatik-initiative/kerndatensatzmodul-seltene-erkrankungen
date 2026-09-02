# Beispiel Genetische Beratung - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Genetische Beratung**

## Example ServiceRequest: Beispiel Genetische Beratung

-------

**English**

-------

Profile: [https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung-nicht-medikamentoes|2026.0.1](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung-nicht-medikamentoes|2026.0.1)

**status**: Active

**intent**: Proposal

**category**: Sonstige, Symptomatisch

**priority**: Routine

**code**: Humangenetische Beratung

**subject**: [Max Mustermann (official) Male, DoB: 1990-01-01 ( http://test-krankenhaus.de/fhir/sid/patienten#12345)](Patient-mii-exa-seltene-patient.md)

**authoredOn**: 2024-11-01

**reasonCode**: Family history of hereditary disease

**note**: 

> 

Beratung bezüglich Vererbungsmodus und Wiederholungsrisiko




## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "mii-exa-seltene-therapieempfehlung-genetische-beratung",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung-nicht-medikamentoes|2026.0.1"]
  },
  "status" : "active",
  "intent" : "proposal",
  "category" : [{
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-therapieempfehlung-strategie",
      "code" : "other",
      "display" : "Sonstige"
    }]
  },
  {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-therapieempfehlung-typ",
      "code" : "symptomatic",
      "display" : "Symptomatisch"
    }]
  }],
  "priority" : "routine",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "409063005",
      "display" : "Counseling"
    }],
    "text" : "Humangenetische Beratung"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-seltene-patient"
  },
  "authoredOn" : "2024-11-01",
  "reasonCode" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "429962007",
      "display" : "Family history of hereditary disease"
    }]
  }],
  "note" : [{
    "text" : "Beratung bezüglich Vererbungsmodus und Wiederholungsrisiko"
  }]
}

```
