# Laktat - Normalbefund - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Laktat - Normalbefund**

## Beispiel Observation: Laktat - Normalbefund

-------

**German**

-------

**status**: Final

**category**: Laboratory

**code**: Lactate [Moles/volume] in Serum or Plasma

**subject**: [Max Mustermann (official) Male, DoB: 1990-01-01 ( http://test-krankenhaus.de/fhir/sid/patienten#12345)](Patient-mii-exa-seltene-patient.md)

**effective**: 2024-10-01

**value**: 1.4 mmol/L (Details: UCUM codemmol/L = 'mmol/L')

**interpretation**: Normal

**note**: 

> 

Laktat in Ruhe und unter Belastung normwertig.


### ReferenceRanges

| | | |
| :--- | :--- | :--- |
| - | **Low** | **High** |
| * | 0.5 mmol/L | 2.2 mmol/L |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-seltene-lactate-normal",
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
      "code" : "2524-7",
      "display" : "Lactate [Moles/volume] in Serum or Plasma"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-seltene-patient"
  },
  "effectiveDateTime" : "2024-10-01",
  "valueQuantity" : {
    "value" : 1.4,
    "unit" : "mmol/L",
    "system" : "http://unitsofmeasure.org",
    "code" : "mmol/L"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "N",
      "display" : "Normal"
    }]
  }],
  "note" : [{
    "text" : "Laktat in Ruhe und unter Belastung normwertig."
  }],
  "referenceRange" : [{
    "low" : {
      "value" : 0.5,
      "unit" : "mmol/L"
    },
    "high" : {
      "value" : 2.2,
      "unit" : "mmol/L"
    }
  }]
}

```
