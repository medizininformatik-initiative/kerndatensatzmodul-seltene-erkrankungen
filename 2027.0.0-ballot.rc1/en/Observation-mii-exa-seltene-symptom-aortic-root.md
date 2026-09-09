# Aortenwurzeldilatation - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Aortenwurzeldilatation**

## Example Observation: Aortenwurzeldilatation

-------

**English**

-------

**status**: Final

**category**: Imaging

**code**: Aortenwurzeldilatation

**subject**: [Anonymous Patient Male, DoB: 2005-01-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#MRF-2024-001)](Patient-mii-exa-seltene-patient-marfan-001.md)

**effective**: 2024-12-15

**value**: 48 mm (Details: UCUM codemm = 'mm')

**interpretation**: High

### ReferenceRanges

| | | |
| :--- | :--- | :--- |
| - | **High** | **Text** |
| * | 40 mm | Normwert <40mm |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-seltene-symptom-aortic-root",
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
      "code" : "HP:0002616",
      "display" : "Aortic root aneurysm"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "251036003",
      "display" : "Aortic root dilatation"
    }],
    "text" : "Aortenwurzeldilatation"
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
  "referenceRange" : [{
    "high" : {
      "value" : 40,
      "unit" : "mm"
    },
    "text" : "Normwert <40mm"
  }]
}

```
