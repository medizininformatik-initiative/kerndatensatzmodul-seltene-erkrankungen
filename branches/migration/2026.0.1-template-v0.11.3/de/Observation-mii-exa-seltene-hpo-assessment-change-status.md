# HPO Assessment mit Änderungsstatus - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **HPO Assessment mit Änderungsstatus**

## Beispiel Observation: HPO Assessment mit Änderungsstatus

-------

**German**

-------

Profile: [https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment|2026.0.1](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment|2026.0.1)

**status**: Final

**code**: Global developmental delay

**subject**: [Max Mustermann (official) Male, DoB: 1990-01-01 ( http://test-krankenhaus.de/fhir/sid/patienten#12345)](Patient-mii-exa-seltene-patient.md)

**effective**: 2024-11-15

**note**: 

> 

Entwicklungsverzögerung hat sich seit letzter Untersuchung verbessert


### Components

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Code** | **Value[x]** | **Interpretation** |
| * | Presence findings | Present | Verbessert |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-seltene-hpo-assessment-change-status",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment|2026.0.1"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://human-phenotype-ontology.org",
      "code" : "HP:0001263",
      "display" : "Global developmental delay"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-seltene-patient"
  },
  "effectiveDateTime" : "2024-11-15",
  "note" : [{
    "text" : "Entwicklungsverzögerung hat sich seit letzter Untersuchung verbessert"
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
    },
    "interpretation" : [{
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-hpo-change-status",
        "code" : "improved",
        "display" : "Verbessert"
      }]
    }]
  }]
}

```
