# Hypertelorismus - HPO-kodiert - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2026.0.1

## Example Observation: Hypertelorismus - HPO-kodiert

Profile: [MII Profile SE HPO Assessment](StructureDefinition-mii-pr-seltene-hpo-assessment.md) version: 2026.0.1

**status**: Final

**category**: Exam

**code**: Hypertelorismus

**subject**: [Max Mustermann Male, DoB: 1990-01-01 ( http://test-krankenhaus.de/fhir/sid/patienten#12345)](Patient-example.md)

**effective**: 2024-10-20

**interpretation**: Abnormal

**note**: 

> 

Interpupillardistanz 42mm (Referenz <35mm)


### Components

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | Presence findings | Present |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "hypertelorism",
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
      "code" : "HP:0000316",
      "display" : "Hypertelorism"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "22006008",
      "display" : "Hypertelorism"
    }],
    "text" : "Hypertelorismus"
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
    "text" : "Interpupillardistanz 42mm (Referenz <35mm)"
  }],
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
