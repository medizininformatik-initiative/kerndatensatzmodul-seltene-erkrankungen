# Echokardiographie - Aortenklappeninsuffizienz - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Echokardiographie - Aortenklappeninsuffizienz**

## Beispiel Observation: Echokardiographie - Aortenklappeninsuffizienz

-------

**German**

-------

**status**: Final

**category**: Imaging

**code**: Aortic valve Regurgitation degree by US.doppler

**subject**: [Anonymous Patient Male, DoB: 2005-01-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#MRF-2024-001)](Patient-patient-marfan-001.md)

**effective**: 2024-12-15

**value**: Grad II

**interpretation**: Abnormal

**method**: Echocardiography



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "observation-echo-av",
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
      "code" : "18112-3",
      "display" : "Aortic valve Regurgitation degree by US.doppler"
    }]
  },
  "subject" : {
    "reference" : "Patient/patient-marfan-001"
  },
  "effectiveDateTime" : "2024-12-15",
  "valueCodeableConcept" : {
    "text" : "Grad II"
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
