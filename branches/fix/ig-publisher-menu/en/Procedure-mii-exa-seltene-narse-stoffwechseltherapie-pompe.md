# Beispiel NARSE Stoffwechseltherapie bei Morbus Pompe - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2026.0.1

## Example Procedure: Beispiel NARSE Stoffwechseltherapie bei Morbus Pompe

Profile: [MII PR Seltene Erkrankungen Therapie Durchgeführt](StructureDefinition-mii-pr-seltene-therapie-durchgefuehrt.md) version: 2026.0.1

**status**: In Progress

**code**: Stoffwechseltherapie

**subject**: [Pompe Patient](Patient-example.md)

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
    "reference" : "Patient/example",
    "display" : "Pompe Patient"
  },
  "performedPeriod" : {
    "start" : "2024-01-15"
  }
}

```
