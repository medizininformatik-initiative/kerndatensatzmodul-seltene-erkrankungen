# Therapieplan Example - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Therapieplan Example**

## Example CarePlan: Therapieplan Example

-------

**English**

-------

Profile: [https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieplan|2026.0.1](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieplan|2026.0.1)

**status**: Draft

**intent**: Proposal

**description**: Therapieplan für den Patienten

**subject**: [Patient/example-patient](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/example-patient)

**created**: 2023-03-28

> **activity****reference**: [MedicationRequest/example-therapieempfehlung](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/MedicationRequest/example-therapieempfehlung)

> **activity****reference**: [ServiceRequest/example-nichtmed-therapie](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/ServiceRequest/example-nichtmed-therapie)

> **activity****reference**: [ServiceRequest/example-studieneinschluss](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/ServiceRequest/example-studieneinschluss)



## Resource Content

```json
{
  "resourceType" : "CarePlan",
  "id" : "mii-exa-seltene-therapieplan",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieplan|2026.0.1"]
  },
  "status" : "draft",
  "intent" : "proposal",
  "description" : "Therapieplan für den Patienten",
  "subject" : {
    "reference" : "Patient/example-patient"
  },
  "created" : "2023-03-28",
  "activity" : [{
    "reference" : {
      "reference" : "MedicationRequest/example-therapieempfehlung"
    }
  },
  {
    "reference" : {
      "reference" : "ServiceRequest/example-nichtmed-therapie"
    }
  },
  {
    "reference" : {
      "reference" : "ServiceRequest/example-studieneinschluss"
    }
  }]
}

```
