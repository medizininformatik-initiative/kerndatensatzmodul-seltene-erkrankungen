# Linsenluxation - HPO-kodiert - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Linsenluxation - HPO-kodiert**

## Beispiel Observation: Linsenluxation - HPO-kodiert

-------

**German**

-------

Profile: [MII Profile SE HPO Assessment](StructureDefinition-mii-pr-seltene-hpo-assessment.md) version: 2027.0.0-ballot.rc1

**status**: Final

**category**: Exam

**code**: Linsenluxation

**subject**: [Max Mustermann (official) Male, DoB: 1990-01-01 ( http://test-krankenhaus.de/fhir/sid/patienten#12345)](Patient-mii-exa-seltene-patient.md)

**effective**: 2024-10-15

**interpretation**: Abnormal

**bodySite**: Eye structure

### Components

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | Presence findings | Present |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "lens-dislocation",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment|2027.0.0-ballot.rc1"]
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
      "code" : "HP:0001083",
      "display" : "Ectopia lentis"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "65814009",
      "display" : "Partial dislocation of lens"
    }],
    "text" : "Linsenluxation"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-seltene-patient"
  },
  "effectiveDateTime" : "2024-10-15",
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "A",
      "display" : "Abnormal"
    }]
  }],
  "bodySite" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "81745001",
      "display" : "Eye structure"
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
