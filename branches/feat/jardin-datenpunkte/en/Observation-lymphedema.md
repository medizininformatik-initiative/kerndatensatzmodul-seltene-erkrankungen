# Lymphödem - HPO-kodiert - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Lymphödem - HPO-kodiert**

## Example Observation: Lymphödem - HPO-kodiert

-------

**English**

-------

Profile: [https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment|2026.0.1](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment|2026.0.1)

**status**: Final

**category**: Exam

**code**: Lymphödem

**subject**: [Max Mustermann Male, DoB: 1990-01-01 ( http://test-krankenhaus.de/fhir/sid/patienten#12345)](Patient-example.md)

**effective**: 2024-10-20

**interpretation**: Abnormal

**note**: 

> 

Beidseitiges Lymphödem der unteren Extremitäten


**bodySite**: Lower leg structure

### Components

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | Presence findings | Present |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "lymphedema",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment|2026.0.1"]
  },
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
      "code" : "HP:0001004",
      "display" : "Lymphedema"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "234097001",
      "display" : "Lymphedema"
    }],
    "text" : "Lymphödem"
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectiveDateTime" : "2024-10-20",
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "A",
      "display" : "Abnormal"
    }]
  }],
  "note" : [{
    "text" : "Beidseitiges Lymphödem der unteren Extremitäten"
  }],
  "bodySite" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "30021000",
      "display" : "Lower leg structure"
    }]
  },
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "260411009",
        "display" : "Presence findings"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "LA9633-4",
        "display" : "Present"
      }]
    }
  }]
}

```
