# Linsenluxation - ausgeschlossen - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Linsenluxation - ausgeschlossen**

## Example Observation: Linsenluxation - ausgeschlossen

-------

**English**

-------

Profile: [MII Profile SE HPO Assessment](StructureDefinition-mii-pr-seltene-hpo-assessment.md) version: 2027.0.0-ballot.rc1

**status**: Final

**code**: Ectopia lentis

**subject**: [Max Mustermann (official) Male, DoB: 1990-01-01 ( http://test-krankenhaus.de/fhir/sid/patienten#12345)](Patient-mii-exa-seltene-patient.md)

**encounter**: [Encounter: status = finished; class = ambulatory (ActCode#AMB); type = Seen in cardiac clinic (finding); period = 2024-12-15 --> 2024-12-15](Encounter-mii-exa-seltene-encounter-cardiology-consultation.md)

**effective**: 2024-12-15

**note**: 

> 

Spaltlampenuntersuchung ohne Hinweis auf Ectopia lentis. Ghent-Kriterium nicht erfuellt.


### Components

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | Presence findings | Absent |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-seltene-lens-examination-normal",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment|2027.0.0-ballot.rc1"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://human-phenotype-ontology.org",
      "code" : "HP:0001083",
      "display" : "Ectopia lentis"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-seltene-patient"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-seltene-encounter-cardiology-consultation"
  },
  "effectiveDateTime" : "2024-12-15",
  "note" : [{
    "text" : "Spaltlampenuntersuchung ohne Hinweis auf Ectopia lentis. Ghent-Kriterium nicht erfuellt."
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
