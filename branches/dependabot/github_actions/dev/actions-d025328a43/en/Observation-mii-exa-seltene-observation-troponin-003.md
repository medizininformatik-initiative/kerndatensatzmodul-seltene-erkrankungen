# Troponin T hs - 01.08.2024 - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Troponin T hs - 01.08.2024**

## Example Observation: Troponin T hs - 01.08.2024

-------

**English**

-------

**status**: Final

**category**: Laboratory

**code**: Troponin T.cardiac [Mass/volume] in Serum or Plasma

**subject**: [Anonymous Patient Female, DoB: 2024-07-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#SMA-2024-001)](Patient-mii-exa-seltene-patient-sma-001.md)

**effective**: 2024-08-01

**value**: 57 ng/L (Details: UCUM codeng/L = 'ng/L')

**interpretation**: High



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-seltene-observation-troponin-003",
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "laboratory"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "6598-7",
      "display" : "Troponin T.cardiac [Mass/volume] in Serum or Plasma"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-seltene-patient-sma-001"
  },
  "effectiveDateTime" : "2024-08-01",
  "valueQuantity" : {
    "value" : 57,
    "unit" : "ng/L",
    "system" : "http://unitsofmeasure.org",
    "code" : "ng/L"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "H",
      "display" : "High"
    }]
  }]
}

```
