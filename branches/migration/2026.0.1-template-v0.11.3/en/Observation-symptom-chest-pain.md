# Thoraxschmerzen - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Thoraxschmerzen**

## Example Observation: Thoraxschmerzen

-------

**English**

-------

**status**: Final

**category**: Exam

**code**: Thoraxschmerzen

**subject**: [Anonymous Patient Male, DoB: 2005-01-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#MRF-2024-001)](Patient-patient-marfan-001.md)

**effective**: 2024-12-15

**value**: Present

**interpretation**: Abnormal



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "symptom-chest-pain",
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
      "code" : "HP:0100749",
      "display" : "Chest pain"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "29857009",
      "display" : "Chest pain"
    }],
    "text" : "Thoraxschmerzen"
  },
  "subject" : {
    "reference" : "Patient/patient-marfan-001"
  },
  "effectiveDateTime" : "2024-12-15",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "52101004",
      "display" : "Present"
    }]
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "A",
      "display" : "Abnormal"
    }]
  }]
}

```
