# Aortenklappeninsuffizienz - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Aortenklappeninsuffizienz**

## Example Observation: Aortenklappeninsuffizienz

-------

**English**

-------

**status**: Final

**category**: Imaging

**code**: Aortenklappeninsuffizienz

**subject**: [Anonymous Patient Male, DoB: 2005-01-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#MRF-2024-001)](Patient-patient-marfan-001.md)

**effective**: 2024-12-15

**value**: Aortenklappeninsuffizienz Grad II

**interpretation**: Abnormal



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "symptom-aortic-regurg",
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
      "code" : "HP:0001659",
      "display" : "Aortic regurgitation"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "60234000",
      "display" : "Aortic valve regurgitation"
    }],
    "text" : "Aortenklappeninsuffizienz"
  },
  "subject" : {
    "reference" : "Patient/patient-marfan-001"
  },
  "effectiveDateTime" : "2024-12-15",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "838545002",
      "display" : "Moderate aortic valve regurgitation"
    }],
    "text" : "Aortenklappeninsuffizienz Grad II"
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
