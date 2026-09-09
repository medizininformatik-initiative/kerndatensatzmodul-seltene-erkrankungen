# Katarakt bilateral - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Katarakt bilateral**

## Example Observation: Katarakt bilateral

-------

**English**

-------

**status**: Final

**category**: Exam

**code**: Katarakt bilateral

**subject**: [Anonymous Patient Male, DoB: 2005-01-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#MRF-2024-001)](Patient-mii-exa-seltene-patient-marfan-001.md)

**effective**: 2024-10-15

**value**: Bilateral

**interpretation**: Abnormal

**bodySite**: Eye structure



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-seltene-symptom-cataract",
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "exam"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://human-phenotype-ontology.org",
      "code" : "HP:0000518",
      "display" : "Cataract"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "193570009",
      "display" : "Cataract"
    }],
    "text" : "Katarakt bilateral"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-seltene-patient-marfan-001"
  },
  "effectiveDateTime" : "2024-10-15",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "51440002",
      "display" : "Bilateral"
    }]
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "A",
      "display" : "Abnormal"
    }]
  }],
  "bodySite" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "81745001",
      "display" : "Eye structure"
    }]
  }
}

```
