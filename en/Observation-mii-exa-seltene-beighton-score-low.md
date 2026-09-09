# Generalisierte Hypermobilitaet - ausgeschlossen - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Generalisierte Hypermobilitaet - ausgeschlossen**

## Example Observation: Generalisierte Hypermobilitaet - ausgeschlossen

-------

**English**

-------

Profile: [MII Profile SE HPO Assessment](StructureDefinition-mii-pr-seltene-hpo-assessment.md) version: 2027.0.0-ballot.rc1

**status**: Final

**code**: Joint hypermobility

**subject**: [Max Mustermann (official) Male, DoB: 1990-01-01 ( http://test-krankenhaus.de/fhir/sid/patienten#12345)](Patient-mii-exa-seltene-patient.md)

**effective**: 2024-11-20

**note**: 

> 

Beighton-Score 2/9 — unterhalb der Schwelle fuer eine generalisierte Hypermobilitaet. Keine Hauthyperextensibilitaet, keine atrophen Narben.


### Components

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | Presence findings | Absent |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-seltene-beighton-score-low",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment|2027.0.0-ballot.rc1"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://human-phenotype-ontology.org",
      "code" : "HP:0001382",
      "display" : "Joint hypermobility"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-seltene-patient"
  },
  "effectiveDateTime" : "2024-11-20",
  "note" : [{
    "text" : "Beighton-Score 2/9 — unterhalb der Schwelle fuer eine generalisierte Hypermobilitaet. Keine Hauthyperextensibilitaet, keine atrophen Narben."
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
        "code" : "LA9634-2",
        "display" : "Absent"
      }]
    }
  }]
}

```
