# Mitralklappeninsuffizienz - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mitralklappeninsuffizienz**

## Example Observation: Mitralklappeninsuffizienz

-------

**English**

-------

**status**: Final

**category**: Imaging

**code**: Mitralklappeninsuffizienz

**subject**: [Anonymous Patient Male, DoB: 2005-01-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#MRF-2024-001)](Patient-patient-marfan-001.md)

**effective**: 2024-12-15

**value**: Mitralklappeninsuffizienz Grad I

**interpretation**: Abnormal



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "symptom-mitral-regurg",
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "imaging"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://human-phenotype-ontology.org",
      "code" : "HP:0001653",
      "display" : "Mitral regurgitation"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "48724000",
      "display" : "Mitral valve regurgitation"
    }],
    "text" : "Mitralklappeninsuffizienz"
  },
  "subject" : {
    "reference" : "Patient/patient-marfan-001"
  },
  "effectiveDateTime" : "2024-12-15",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "838451005",
      "display" : "Mild mitral valve regurgitation"
    }],
    "text" : "Mitralklappeninsuffizienz Grad I"
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
