# Kopfumfang Beispiel - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Kopfumfang Beispiel**

## Example Observation: Kopfumfang Beispiel

-------

**English**

-------

Profile: [MII PR SE Kopfumfang](StructureDefinition-mii-pr-seltene-kopfumfang.md) version: 2027.0.0-ballot.rc1

**status**: Final

**category**: Vital Signs

**code**: Head Occipital-frontal circumference

**subject**: [Beispielpatient](Patient-mii-exa-seltene-patient.md)

**effective**: 2024-08-08 10:00:00+0200

**value**: 54.5 centimeter (Details: UCUM codecm = 'cm')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-seltene-kopfumfang",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-kopfumfang|2027.0.0-ballot.rc1"]
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
      "system" : "http://loinc.org",
      "code" : "9843-4",
      "display" : "Head Occipital-frontal circumference"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "363812007"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-seltene-patient",
    "display" : "Beispielpatient"
  },
  "effectiveDateTime" : "2024-08-08T10:00:00+02:00",
  "valueQuantity" : {
    "value" : 54.5,
    "unit" : "centimeter",
    "system" : "http://unitsofmeasure.org",
    "code" : "cm"
  }
}

```
