# Aortenwurzel - Normalbefund - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Aortenwurzel - Normalbefund**

## Beispiel Observation: Aortenwurzel - Normalbefund

-------

**German**

-------

**status**: Final

**category**: Imaging

**code**: Aorta root Diameter by US 2D

**subject**: [Max Mustermann (official) Male, DoB: 1990-01-01 ( http://test-krankenhaus.de/fhir/sid/patienten#12345)](Patient-mii-exa-seltene-patient.md)

**effective**: 2024-12-15

**value**: 32 mm (Details: UCUM codemm = 'mm')

**interpretation**: Normal

### ReferenceRanges

| | | |
| :--- | :--- | :--- |
| - | **Low** | **High** |
| * | 29 mm | 37 mm |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "aortic-root-normal",
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
    "reference" : "Patient/mii-exa-seltene-patient"
  },
  "effectiveDateTime" : "2024-12-15",
  "valueQuantity" : {
    "value" : 32,
    "unit" : "mm",
    "system" : "http://unitsofmeasure.org",
    "code" : "mm"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "N",
      "display" : "Normal"
    }]
  }],
  "referenceRange" : [{
    "low" : {
      "value" : 29,
      "unit" : "mm"
    },
    "high" : {
      "value" : 37,
      "unit" : "mm"
    }
  }]
}

```
