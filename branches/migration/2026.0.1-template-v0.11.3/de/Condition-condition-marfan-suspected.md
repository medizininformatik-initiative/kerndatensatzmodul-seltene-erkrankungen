# Marfan-Syndrom - Verdacht - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Marfan-Syndrom - Verdacht**

## Beispiel Condition: Marfan-Syndrom - Verdacht

-------

**German**

-------

Profile: [https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis|2026.0.1](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis|2026.0.1)

**Condition Asserted Date**: 2024-12-10

**clinicalStatus**: Active

**verificationStatus**: Provisional

**category**: Encounter Diagnosis

**code**: Verdacht auf Marfan-Syndrom

**subject**: [Anonymous Patient Male, DoB: 2005-01-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#MRF-2024-001)](Patient-patient-marfan-001.md)

**recordedDate**: 2024-12-10

**note**: 

> 

Verdacht auf Marfan-Syndrom aufgrund klinischer Präsentation




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "condition-marfan-suspected",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis|2026.0.1"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/condition-assertedDate",
    "valueDateTime" : "2024-12-10"
  }],
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "code" : "active"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
      "code" : "provisional"
    }]
  },
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
      "code" : "encounter-diagnosis"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "version" : "2024",
      "code" : "Q87.4",
      "display" : "Marfan-Syndrom"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "19346006",
      "display" : "Marfan syndrome"
    },
    {
      "system" : "http://www.orpha.net",
      "code" : "558",
      "display" : "Marfan syndrome"
    }],
    "text" : "Verdacht auf Marfan-Syndrom"
  },
  "subject" : {
    "reference" : "Patient/patient-marfan-001"
  },
  "recordedDate" : "2024-12-10",
  "note" : [{
    "text" : "Verdacht auf Marfan-Syndrom aufgrund klinischer Präsentation"
  }]
}

```
