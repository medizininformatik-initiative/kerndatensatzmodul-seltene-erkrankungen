# AST Labor - Post-therapeutisch - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AST Labor - Post-therapeutisch**

## Example Observation: AST Labor - Post-therapeutisch

-------

**English**

-------

**status**: Final

**category**: Laboratory

**code**: Aspartate aminotransferase [Enzymatic activity/volume] in Serum or Plasma

**subject**: [Anonymous Patient Female, DoB: 2024-07-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#SMA-2024-001)](Patient-patient-sma-001.md)

**effective**: 2024-07-29

**interpretation**: Normal

**note**: 

> 

Normwertig post-therapeutisch




## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "observation-ast-001",
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
      "code" : "1920-8",
      "display" : "Aspartate aminotransferase [Enzymatic activity/volume] in Serum or Plasma"
    }]
  },
  "subject" : {
    "reference" : "Patient/patient-sma-001"
  },
  "effectiveDateTime" : "2024-07-29",
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "N",
      "display" : "Normal"
    }]
  }],
  "note" : [{
    "text" : "Normwertig post-therapeutisch"
  }]
}

```
