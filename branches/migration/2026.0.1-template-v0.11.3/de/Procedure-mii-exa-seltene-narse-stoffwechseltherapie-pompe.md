# Beispiel NARSE Stoffwechseltherapie bei Morbus Pompe - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Beispiel NARSE Stoffwechseltherapie bei Morbus Pompe**

## Beispiel Procedure: Beispiel NARSE Stoffwechseltherapie bei Morbus Pompe

-------

**German**

-------

Profile: [https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapie-durchgefuehrt|2026.0.1](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapie-durchgefuehrt|2026.0.1)

**status**: In Progress

**code**: Stoffwechseltherapie

**subject**: [Pompe Patient](Patient-mii-exa-seltene-patient.md)

**performed**: 2024-01-15 --> (ongoing)



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "mii-exa-seltene-narse-stoffwechseltherapie-pompe",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapie-durchgefuehrt|2026.0.1"]
  },
  "status" : "in-progress",
  "code" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-narse-therapietyp",
      "code" : "stoffwechseltherapie",
      "display" : "Stoffwechseltherapie"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-seltene-patient",
    "display" : "Pompe Patient"
  },
  "performedPeriod" : {
    "start" : "2024-01-15"
  }
}

```
