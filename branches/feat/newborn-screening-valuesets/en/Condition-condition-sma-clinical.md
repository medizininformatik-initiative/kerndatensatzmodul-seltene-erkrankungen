# SMA Klinische Diagnose - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SMA Klinische Diagnose**

## Example Condition: SMA Klinische Diagnose

-------

**English**

-------

Profile: [https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis|2026.0.1](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis|2026.0.1)

**Condition Asserted Date**: 2024-07-22

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**category**: Encounter Diagnosis

**code**: Infantile spinale Muskelatrophie, Typ I [Typ Werdnig-Hoffmann]

**subject**: [Anonymous Patient Female, DoB: 2024-07-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#SMA-2024-001)](Patient-patient-sma-001.md)

**encounter**: [Encounter: status = finished; class = ambulatory (ActCode#AMB); type = Follow-up encounter; period = 2024-07-22 --> 2024-07-22](Encounter-encounter-ambulant-001.md)

**onset**: 2024-07-01

**recordedDate**: 2024-07-22

### Evidences

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Detail** |
| * | Klinische Präsentation | [Observation Troponin T.cardiac [Mass/volume] in Serum or Plasma](Observation-observation-troponin-001.md) |

**note**: 

> 

Klinische Diagnose basierend auf typischer Präsentation: Neonatale Hypotonie, fehlende Muskeleigenreflexe, erhöhtes Troponin




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "condition-sma-clinical",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis|2026.0.1"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/condition-assertedDate",
    "valueDateTime" : "2024-07-22"
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
      "code" : "confirmed"
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
      "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "version" : "2024",
      "code" : "G12.0",
      "display" : "Infantile spinale Muskelatrophie, Typ I [Typ Werdnig-Hoffmann]"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "64383006",
      "display" : "Werdnig-Hoffmann disease"
    },
    {
      "system" : "http://www.orpha.net",
      "code" : "83330",
      "display" : "Proximal spinal muscular atrophy type 1"
    },
    {
      "system" : "http://human-phenotype-ontology.org",
      "code" : "HP:0007373",
      "display" : "Motor neuron atrophy"
    }]
  },
  "subject" : {
    "reference" : "Patient/patient-sma-001"
  },
  "encounter" : {
    "reference" : "Encounter/encounter-ambulant-001"
  },
  "onsetDateTime" : "2024-07-01",
  "recordedDate" : "2024-07-22",
  "evidence" : [{
    "code" : [{
      "text" : "Klinische Präsentation"
    }],
    "detail" : [{
      "reference" : "Observation/observation-troponin-001"
    }]
  }],
  "note" : [{
    "text" : "Klinische Diagnose basierend auf typischer Präsentation: Neonatale Hypotonie, fehlende Muskeleigenreflexe, erhöhtes Troponin"
  }]
}

```
