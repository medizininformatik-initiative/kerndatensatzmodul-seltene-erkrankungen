# Echokardiographie - Aortenwurzeldurchmesser - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Echokardiographie - Aortenwurzeldurchmesser**

## Example Observation: Echokardiographie - Aortenwurzeldurchmesser

-------

**English**

-------

**status**: Final

**category**: Imaging

**code**: Aorta root Diameter by US 2D

**subject**: [Anonymous Patient Male, DoB: 2005-01-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#MRF-2024-001)](Patient-mii-exa-seltene-patient-marfan-001.md)

**effective**: 2024-12-15

**value**: 48 mm (Details: UCUM codemm = 'mm')

**interpretation**: High

**method**: Echocardiography



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-seltene-observation-echo-aortic",
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
      "code" : "78176-5",
      "display" : "Aorta root Diameter by US 2D"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-seltene-patient-marfan-001"
  },
  "effectiveDateTime" : "2024-12-15",
  "valueQuantity" : {
    "value" : 48,
    "unit" : "mm",
    "system" : "http://unitsofmeasure.org",
    "code" : "mm"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "H",
      "display" : "High"
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
