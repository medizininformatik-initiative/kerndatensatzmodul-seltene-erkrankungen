# SMA Verdacht - Neugeborenenscreening - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **SMA Verdacht - Neugeborenenscreening**

## Beispiel Condition: SMA Verdacht - Neugeborenenscreening

-------

**German**

-------

Profile: [https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis|2026.0.1](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis|2026.0.1)

**Condition Asserted Date**: 2024-07-18

**clinicalStatus**: Active

**verificationStatus**: Unconfirmed

**category**: Encounter Diagnosis

**code**: Verdacht auf Spinale Muskelatrophie

**subject**: [Anonymous Patient Female, DoB: 2024-07-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#SMA-2024-001)](Patient-patient-sma-001.md)

**encounter**: [Encounter: status = finished; class = ambulatory (ActCode#AMB); type = Neonatal screening (procedure); period = 2024-07-18 --> 2024-07-18; reasonCode = ](Encounter-encounter-screening-001.md)

**recordedDate**: 2024-07-18

### Evidences

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Detail** |
| * | Positives Neugeborenenscreening | [Observation Spinal muscular atrophy newborn screening panel](Observation-observation-sma-screening.md) |

**note**: 

> 

Verdacht beim Neugeborenenscreening gestellt - SMN1 Exon 7 nicht nachweisbar




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "condition-sma-suspected",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis|2026.0.1"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/condition-assertedDate",
    "valueDateTime" : "2024-07-18"
  }],
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "code" : "active"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
      "code" : "unconfirmed"
    }]
  },
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
      "code" : "encounter-diagnosis"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "64383006",
      "display" : "Werdnig-Hoffmann disease"
    },
    {
      "system" : "http://human-phenotype-ontology.org",
      "code" : "HP:0007373",
      "display" : "Motor neuron atrophy"
    }],
    "text" : "Verdacht auf Spinale Muskelatrophie"
  },
  "subject" : {
    "reference" : "Patient/patient-sma-001"
  },
  "encounter" : {
    "reference" : "Encounter/encounter-screening-001"
  },
  "recordedDate" : "2024-07-18",
  "evidence" : [{
    "code" : [{
      "text" : "Positives Neugeborenenscreening"
    }],
    "detail" : [{
      "reference" : "Observation/observation-sma-screening"
    }]
  }],
  "note" : [{
    "text" : "Verdacht beim Neugeborenenscreening gestellt - SMN1 Exon 7 nicht nachweisbar"
  }]
}

```
