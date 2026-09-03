# Katarakt bilateral - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Katarakt bilateral**

## Beispiel Condition: Katarakt bilateral

-------

**German**

-------

Profile: [MII PR SE Clinical Diagnosis](StructureDefinition-mii-pr-seltene-clinical-diagnosis.md) version: 2027.0.0-ballot.rc1

**Condition Asserted Date**: 2024-10-15

**clinicalStatus**: Resolved

**verificationStatus**: Confirmed

**category**: Encounter Diagnosis

**code**: Katarakt bilateral

**subject**: [Anonymous Patient Male, DoB: 2005-01-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#MRF-2024-001)](Patient-patient-marfan-001.md)

**encounter**: [Encounter: status = finished; class = ambulatory (ActCode#AMB); type = Ophthalmic examination and evaluation; period = 2024-10-15 --> 2024-10-15](Encounter-encounter-ophthalmology.md)

**abatement**: 2024-11-12

**recordedDate**: 2024-10-15

### Evidences

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Detail** |
| * | Cataract | [Observation Cataract](Observation-symptom-cataract.md) |

**note**: 

> 

Katarakt bilateral, operativ versorgt




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "condition-cataract",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis|2027.0.0-ballot.rc1"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/condition-assertedDate",
    "valueDateTime" : "2024-10-15"
  }],
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "code" : "resolved"
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
      "code" : "H26.9",
      "display" : "Katarakt, nicht näher bezeichnet"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "193570009",
      "display" : "Cataract"
    },
    {
      "system" : "http://human-phenotype-ontology.org",
      "code" : "HP:0000518",
      "display" : "Cataract"
    }],
    "text" : "Katarakt bilateral"
  },
  "subject" : {
    "reference" : "Patient/patient-marfan-001"
  },
  "encounter" : {
    "reference" : "Encounter/encounter-ophthalmology"
  },
  "abatementDateTime" : "2024-11-12",
  "recordedDate" : "2024-10-15",
  "evidence" : [{
    "code" : [{
      "coding" : [{
        "system" : "http://human-phenotype-ontology.org",
        "code" : "HP:0000518",
        "display" : "Cataract"
      }]
    }],
    "detail" : [{
      "reference" : "Observation/symptom-cataract"
    }]
  }],
  "note" : [{
    "text" : "Katarakt bilateral, operativ versorgt"
  }]
}

```
