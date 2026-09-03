# Beispiel Geburtslänge - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Geburtslänge**

## Example Observation: Beispiel Geburtslänge

-------

**English**

-------

Profile: [MII PR SE Geburtslänge](StructureDefinition-mii-pr-seltene-geburtslaenge.md) version: 2027.0.0-ballot.rc1

**status**: Final

**category**: Vital Signs

**code**: Body height Measured --at birth

**subject**: [Anonymous Patient Female, DoB: 2024-07-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#SMA-2024-001)](Patient-mii-exa-seltene-patient-sma-001.md)

**effective**: 2024-07-01

**value**: 50 Zentimeter (Details: UCUM codecm = 'cm')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-seltene-geburtslaenge",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-geburtslaenge|2027.0.0-ballot.rc1"]
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
    "reference" : "Patient/mii-exa-seltene-patient-sma-001"
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
