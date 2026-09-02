# Therapieplan Example - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Therapieplan Example**

## Beispiel CarePlan: Therapieplan Example

-------

**German**

-------

Profile: [https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieplan|2026.0.1](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieplan|2026.0.1)

**status**: Draft

**intent**: Proposal

**description**: Therapieplan für den Patienten

**subject**: [Max Mustermann (official) Male, DoB: 1990-01-01 ( http://test-krankenhaus.de/fhir/sid/patienten#12345)](Patient-mii-exa-seltene-patient.md)

**created**: 2023-03-28

> **activity****reference**: [MedicationRequest/example-therapieempfehlung](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=http://fhir.org/packages/de.basisprofil.r4/MedicationRequest/example-therapieempfehlung)

> **activity****reference**: [ServiceRequest/example-nichtmed-therapie](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=http://fhir.org/packages/de.basisprofil.r4/ServiceRequest/example-nichtmed-therapie)

> **activity****reference**: [ServiceRequest/example-studieneinschluss](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=http://fhir.org/packages/de.basisprofil.r4/ServiceRequest/example-studieneinschluss)



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
    "reference" : "Patient/mii-exa-seltene-patient"
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
