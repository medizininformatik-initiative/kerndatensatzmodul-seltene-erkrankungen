# MII Example SE Symptom Condition - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII Example SE Symptom Condition**

## Beispiel Condition: MII Example SE Symptom Condition

-------

**German**

-------

Profile: [MII Profile SE Symptom Condition](StructureDefinition-mii-pr-seltene-symptom-condition.md) version: 2027.0.0-ballot.rc1

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**category**: Problem List Item

**severity**: Mild severity

**code**: Muscle weakness

**bodySite**: Skeletal muscle

**subject**: [Example Patient](Patient-mii-exa-seltene-patient.md)

**onset**: 15 years (Details: UCUM codea = 'a')

**recordedDate**: 2024-01-15

### Evidences

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Detail** |
| * | Muscle weakness | [Observation Intellectual disability](Observation-mii-exa-seltene-hpo-assessment.md) |

**note**: 

> 

Patient reports progressive muscle weakness affecting daily activities, particularly climbing stairs and lifting objects. Symptom has been gradually worsening over the past 2 years.




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "mii-exa-seltene-symptom-condition",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-symptom-condition|2027.0.0-ballot.rc1"]
  },
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "code" : "active",
      "display" : "Active"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
      "code" : "confirmed",
      "display" : "Confirmed"
    }]
  },
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
      "code" : "problem-list-item",
      "display" : "Problem List Item"
    }]
  }],
  "severity" : {
    "coding" : [{
      "system" : "http://human-phenotype-ontology.org",
      "code" : "HP:0012825",
      "display" : "Mild"
    }],
    "text" : "Mild severity"
  },
  "code" : {
    "coding" : [{
      "system" : "http://human-phenotype-ontology.org",
      "code" : "HP:0001324",
      "display" : "Muscle weakness"
    }],
    "text" : "Muscle weakness"
  },
  "bodySite" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "127954009",
      "display" : "Skeletal muscle structure"
    }],
    "text" : "Skeletal muscle"
  }],
  "subject" : {
    "reference" : "Patient/mii-exa-seltene-patient",
    "display" : "Example Patient"
  },
  "onsetAge" : {
    "value" : 15,
    "unit" : "years",
    "system" : "http://unitsofmeasure.org",
    "code" : "a"
  },
  "recordedDate" : "2024-01-15",
  "evidence" : [{
    "code" : [{
      "coding" : [{
        "system" : "http://human-phenotype-ontology.org",
        "code" : "HP:0001324",
        "display" : "Muscle weakness"
      }]
    }],
    "detail" : [{
      "reference" : "Observation/mii-exa-seltene-hpo-assessment"
    }]
  }],
  "note" : [{
    "text" : "Patient reports progressive muscle weakness affecting daily activities, particularly climbing stairs and lifting objects. Symptom has been gradually worsening over the past 2 years."
  }]
}

```
