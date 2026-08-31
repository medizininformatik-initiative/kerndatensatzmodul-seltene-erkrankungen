# Echokardiographie - Mitralklappeninsuffizienz - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Echokardiographie - Mitralklappeninsuffizienz**

## Example Observation: Echokardiographie - Mitralklappeninsuffizienz

-------

**English**

-------

**status**: Final

**category**: Imaging

**code**: Mitral valve Regurgitation degree by US.doppler

**subject**: [Anonymous Patient Male, DoB: 2005-01-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#MRF-2024-001)](Patient-patient-marfan-001.md)

**effective**: 2024-12-15

**value**: Grad I

**interpretation**: Abnormal

**method**: Echocardiography



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "observation-echo-mv",
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "imaging"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "18113-1",
      "display" : "Mitral valve Regurgitation degree by US.doppler"
    }]
  },
  "subject" : {
    "reference" : "Patient/patient-marfan-001"
  },
  "effectiveDateTime" : "2024-12-15",
  "valueCodeableConcept" : {
    "text" : "Grad I"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "A",
      "display" : "Abnormal"
    }]
  }],
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "40701008",
      "display" : "Echocardiography"
    }]
  }
}

```
