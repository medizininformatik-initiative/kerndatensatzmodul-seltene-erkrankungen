# Beispiel Geburtslänge - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Geburtslänge**

## Example Observation: Beispiel Geburtslänge

-------

**English**

-------

Profile: [https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-geburtslaenge|2026.0.1](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-geburtslaenge|2026.0.1)

**status**: Final

**category**: Vital Signs

**code**: Body height Measured --at birth

**subject**: [Anonymous Patient Female, DoB: 2024-07-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#SMA-2024-001)](Patient-patient-sma-001.md)

**effective**: 2024-07-01

**value**: 50 Zentimeter (Details: UCUM codecm = 'cm')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-seltene-geburtslaenge",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-geburtslaenge|2026.0.1"]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "vital-signs"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "89269-5",
      "display" : "Body height Measured --at birth"
    }]
  },
  "subject" : {
    "reference" : "Patient/patient-sma-001"
  },
  "effectiveDateTime" : "2024-07-01",
  "valueQuantity" : {
    "value" : 50,
    "unit" : "Zentimeter",
    "system" : "http://unitsofmeasure.org",
    "code" : "cm"
  }
}

```
