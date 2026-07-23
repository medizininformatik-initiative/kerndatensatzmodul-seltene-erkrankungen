# Marfan-Syndrom - Genetische Diagnose - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2026.0.1

## Example Condition: Marfan-Syndrom - Genetische Diagnose

Profile: [MII PR SE Genetic Diagnosis](StructureDefinition-mii-pr-seltene-genetic-diagnosis.md) version: 2026.0.1

**Condition Asserted Date**: 2024-12-20

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**category**: Genetic disease

**code**: Marfan-Syndrom - genetisch bestätigt

**subject**: [Anonymous Patient Male, DoB: 2005-01-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#MRF-2024-001)](Patient-patient-marfan-001.md)

**recordedDate**: 2024-12-20

### Evidences

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Detail** |
| * | Genetic finding | [Observation Genetic analysis master panel](Observation-variant-fbn1-001.md) |

**note**: 

> 

FBN1-Mutation c.3217G>A (p.Gly1073Arg) nachgewiesen, krankheitsursächlich. Genetische Diagnose existiert parallel zur klinischen Diagnose.




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "condition-marfan-genetic",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-genetic-diagnosis|2026.0.1"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/condition-assertedDate",
    "valueDateTime" : "2024-12-20"
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
      "system" : "http://snomed.info/sct",
      "code" : "782964007",
      "display" : "Genetic disease"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://omim.org",
      "version" : "2024",
      "code" : "154700",
      "display" : "Marfan syndrome"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "19346006",
      "display" : "Marfan syndrome"
    },
    {
      "system" : "http://www.orpha.net",
      "code" : "558",
      "display" : "Marfan syndrome"
    }],
    "text" : "Marfan-Syndrom - genetisch bestätigt"
  },
  "subject" : {
    "reference" : "Patient/patient-marfan-001"
  },
  "recordedDate" : "2024-12-20",
  "evidence" : [{
    "code" : [{
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "106221001",
        "display" : "Genetic finding"
      }]
    }],
    "detail" : [{
      "reference" : "Observation/variant-fbn1-001"
    }]
  }],
  "note" : [{
    "text" : "FBN1-Mutation c.3217G>A (p.Gly1073Arg) nachgewiesen, krankheitsursächlich. Genetische Diagnose existiert parallel zur klinischen Diagnose."
  }]
}

```
