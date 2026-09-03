# Taillenumfang Beispiel - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Taillenumfang Beispiel**

## Example Observation: Taillenumfang Beispiel

-------

**English**

-------

Profile: [MII PR SE Taillenumfang](StructureDefinition-mii-pr-seltene-taillenumfang.md) version: 2027.0.0-ballot.rc1

**status**: Final

**category**: Vital Signs

**code**: Waist circumference

**subject**: [Beispielpatient](Patient-mii-exa-seltene-patient.md)

**effective**: 2024-08-08 10:00:00+0200

**value**: 82 cm (Details: UCUM codecm = 'cm')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-seltene-taillenumfang",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-taillenumfang|2027.0.0-ballot.rc1"]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "vital-signs",
      "display" : "Vital Signs"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "276361009",
      "display" : "Waist circumference"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-seltene-patient",
    "display" : "Beispielpatient"
  },
  "effectiveDateTime" : "2024-08-08T10:00:00+02:00",
  "valueQuantity" : {
    "value" : 82,
    "unit" : "cm",
    "system" : "http://unitsofmeasure.org",
    "code" : "cm"
  }
}

```
