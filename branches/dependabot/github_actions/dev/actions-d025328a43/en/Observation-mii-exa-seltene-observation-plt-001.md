# Thrombozytenzahl - Post-therapeutisch - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Thrombozytenzahl - Post-therapeutisch**

## Example Observation: Thrombozytenzahl - Post-therapeutisch

-------

**English**

-------

**status**: Final

**category**: Laboratory

**code**: Platelets [#/volume] in Blood by Automated count

**subject**: [Anonymous Patient Female, DoB: 2024-07-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#SMA-2024-001)](Patient-mii-exa-seltene-patient-sma-001.md)

**effective**: 2024-07-29

**interpretation**: Normal

**note**: 

> 

Normwertig post-therapeutisch




## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-seltene-observation-plt-001",
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
      "code" : "777-3",
      "display" : "Platelets [#/volume] in Blood by Automated count"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-seltene-patient-sma-001"
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
