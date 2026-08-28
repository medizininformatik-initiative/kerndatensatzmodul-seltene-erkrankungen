# Beispiel NARSE Gentherapie bei SMA - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel NARSE Gentherapie bei SMA**

## Example Procedure: Beispiel NARSE Gentherapie bei SMA

-------

**English**

-------

Profile: [https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapie-durchgefuehrt|2026.0.1](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapie-durchgefuehrt|2026.0.1)

**status**: Completed

**code**: Gentherapie

**subject**: [Anonymous Patient Female, DoB: 2024-07-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#SMA-2024-001)](Patient-patient-sma-001.md)

**performed**: 2024-07-29



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "mii-exa-seltene-narse-gentherapie-sma",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapie-durchgefuehrt|2026.0.1"]
  },
  "status" : "completed",
  "code" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-narse-therapietyp",
      "code" : "gentherapie",
      "display" : "Gentherapie"
    }]
  },
  "subject" : {
    "reference" : "Patient/patient-sma-001"
  },
  "performedDateTime" : "2024-07-29"
}

```
