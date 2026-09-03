# Noonan-Syndrom - Klinische Diagnose - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Noonan-Syndrom - Klinische Diagnose**

## Example Condition: Noonan-Syndrom - Klinische Diagnose

-------

**English**

-------

Profile: [MII PR SE Clinical Diagnosis](StructureDefinition-mii-pr-seltene-clinical-diagnosis.md) version: 2027.0.0-ballot.rc1

**Condition Asserted Date**: 2024-10-20

**clinicalStatus**: Active

**verificationStatus**: Provisional

**category**: Encounter Diagnosis

**code**: Noonan-Syndrom

**subject**: [Max Mustermann (official) Male, DoB: 1990-01-01 ( http://test-krankenhaus.de/fhir/sid/patienten#12345)](Patient-mii-exa-seltene-patient.md)

**recordedDate**: 2024-10-20

> **evidence****code**: Hypertelorism**detail**: [Observation Hypertelorism](Observation-mii-exa-seltene-hypertelorism.md)

> **evidence****code**: Anteverted nares**detail**: [Observation Anteverted nares](Observation-mii-exa-seltene-anteverted-nares.md)

> **evidence****code**: Ventricular septal defect**detail**: [Observation Ventricular septal defect](Observation-mii-exa-seltene-vsd.md)

> **evidence****code**: Lymphedema**detail**: [Observation Lymphedema](Observation-mii-exa-seltene-lymphedema.md)



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "mii-exa-seltene-example-noonan-clinical-diagnosis",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis|2027.0.0-ballot.rc1"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/condition-assertedDate",
    "valueDateTime" : "2024-10-20"
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
      "code" : "provisional"
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
      "code" : "Q87.1",
      "display" : "Angeborene Fehlbildungssyndrome, die vorwiegend mit Kleinwuchs einhergehen"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "205824006",
      "display" : "Noonan syndrome"
    },
    {
      "system" : "http://www.orpha.net",
      "code" : "648",
      "display" : "Noonan syndrome"
    }],
    "text" : "Noonan-Syndrom"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-seltene-patient"
  },
  "recordedDate" : "2024-10-20",
  "evidence" : [{
    "code" : [{
      "coding" : [{
        "system" : "http://human-phenotype-ontology.org",
        "code" : "HP:0000316",
        "display" : "Hypertelorism"
      }]
    }],
    "detail" : [{
      "reference" : "Observation/mii-exa-seltene-hypertelorism"
    }]
  },
  {
    "code" : [{
      "coding" : [{
        "system" : "http://human-phenotype-ontology.org",
        "code" : "HP:0000463",
        "display" : "Anteverted nares"
      }]
    }],
    "detail" : [{
      "reference" : "Observation/mii-exa-seltene-anteverted-nares"
    }]
  },
  {
    "code" : [{
      "coding" : [{
        "system" : "http://human-phenotype-ontology.org",
        "code" : "HP:0001629",
        "display" : "Ventricular septal defect"
      }]
    }],
    "detail" : [{
      "reference" : "Observation/mii-exa-seltene-vsd"
    }]
  },
  {
    "code" : [{
      "coding" : [{
        "system" : "http://human-phenotype-ontology.org",
        "code" : "HP:0001004",
        "display" : "Lymphedema"
      }]
    }],
    "detail" : [{
      "reference" : "Observation/mii-exa-seltene-lymphedema"
    }]
  }]
}

```
