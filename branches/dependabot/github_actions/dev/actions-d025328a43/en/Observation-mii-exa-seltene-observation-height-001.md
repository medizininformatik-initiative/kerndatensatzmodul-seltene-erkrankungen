# Körpergröße - Hochwuchs - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Körpergröße - Hochwuchs**

## Example Observation: Körpergröße - Hochwuchs

-------

**English**

-------

**status**: Final

**category**: Vital Signs

**code**: Body height

**subject**: [Anonymous Patient Male, DoB: 2005-01-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#MRF-2024-001)](Patient-mii-exa-seltene-patient-marfan-001.md)

**effective**: 2024-12-15

**value**: 213 cm (Details: UCUM codecm = 'cm')

**interpretation**: High

**bodySite**: Entire body as a whole

### Components

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | Tall stature | Pathologischer Hochwuchs >99. Perzentile |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-seltene-observation-height-001",
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "vital-signs"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "8302-2",
      "display" : "Body height"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-seltene-patient-marfan-001"
  },
  "effectiveDateTime" : "2024-12-15",
  "valueQuantity" : {
    "value" : 213,
    "unit" : "cm",
    "system" : "http://unitsofmeasure.org",
    "code" : "cm"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "H",
      "display" : "High"
    }]
  }],
  "bodySite" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "38266002",
      "display" : "Entire body as a whole"
    }]
  },
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://human-phenotype-ontology.org",
        "code" : "HP:0000098",
        "display" : "Tall stature"
      }]
    },
    "valueString" : "Pathologischer Hochwuchs >99. Perzentile"
  }]
}

```
