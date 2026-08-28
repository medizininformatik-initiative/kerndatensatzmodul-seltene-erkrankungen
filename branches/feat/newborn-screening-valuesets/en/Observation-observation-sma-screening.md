# SMA Neugeborenenscreening Ergebnis - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SMA Neugeborenenscreening Ergebnis**

## Example Observation: SMA Neugeborenenscreening Ergebnis

-------

**English**

-------

**status**: Final

**category**: Laboratory

**code**: Spinal muscular atrophy newborn screening panel

**subject**: [Anonymous Patient Female, DoB: 2024-07-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#SMA-2024-001)](Patient-patient-sma-001.md)

**effective**: 2024-07-18

**value**: Detected

**interpretation**: Abnormal

**note**: 

> 

Positives SMA-Screening. Konfirmatorische Diagnostik empfohlen.


> **component****code**: Spinal muscular atrophy newborn screen interpretation**value**: Hinweis auf SMA - SMN1 Exon 7 Deletion nachgewiesen

> **component****code**: SMN1 gene [Cycle Threshold #] in DBS by NAA with probe detection**value**: 0 Ct (Details: UCUM code1 = '1')**interpretation**: Abnormal



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "observation-sma-screening",
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
      "code" : "92005-8",
      "display" : "Spinal muscular atrophy newborn screening panel"
    }]
  },
  "subject" : {
    "reference" : "Patient/patient-sma-001"
  },
  "effectiveDateTime" : "2024-07-18",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "260373001",
      "display" : "Detected"
    }]
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "A",
      "display" : "Abnormal"
    }]
  }],
  "note" : [{
    "text" : "Positives SMA-Screening. Konfirmatorische Diagnostik empfohlen."
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "92004-1",
        "display" : "Spinal muscular atrophy newborn screen interpretation"
      }]
    },
    "valueCodeableConcept" : {
      "text" : "Hinweis auf SMA - SMN1 Exon 7 Deletion nachgewiesen"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "92002-5",
        "display" : "SMN1 gene [Cycle Threshold #] in DBS by NAA with probe detection"
      }]
    },
    "valueQuantity" : {
      "value" : 0,
      "unit" : "Ct",
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    },
    "interpretation" : [{
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
        "code" : "A",
        "display" : "Abnormal"
      }]
    }]
  }]
}

```
