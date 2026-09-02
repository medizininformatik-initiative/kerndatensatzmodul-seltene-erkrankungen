# Gedeihstörung - HPO-kodiert - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Gedeihstörung - HPO-kodiert**

## Beispiel Observation: Gedeihstörung - HPO-kodiert

-------

**German**

-------

Profile: [https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment|2026.0.1](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment|2026.0.1)

**status**: Final

**category**: Exam

**code**: Gedeihstörung

**subject**: [Max Mustermann Male, DoB: 1990-01-01 ( http://test-krankenhaus.de/fhir/sid/patienten#12345)](Patient-example.md)

**effective**: 2024-08-10

**interpretation**: Abnormal

**note**: 

> 

Gewicht 6.5kg (<3. Perzentile für Alter)


### Components

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | Presence findings | Present |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "failure-to-thrive",
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
      "code" : "HP:0001508",
      "display" : "Failure to thrive"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "54840006",
      "display" : "Failure to thrive"
    }],
    "text" : "Gedeihstörung"
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectiveDateTime" : "2024-08-10",
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "A",
      "display" : "Abnormal"
    }]
  }],
  "note" : [{
    "text" : "Gewicht 6.5kg (<3. Perzentile für Alter)"
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
