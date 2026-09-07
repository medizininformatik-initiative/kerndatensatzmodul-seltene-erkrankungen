# Phenylketonurie - Genetische Diagnose - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Phenylketonurie - Genetische Diagnose**

## Example Condition: Phenylketonurie - Genetische Diagnose

-------

**English**

-------

Profile: [MII PR SE Genetic Diagnosis](StructureDefinition-mii-pr-seltene-genetic-diagnosis.md) version: 2027.0.0-ballot.rc1

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**category**: Genetic disease

**code**: Phenylketonurie

**subject**: [Max Mustermann (official) Male, DoB: 1990-01-01 ( http://test-krankenhaus.de/fhir/sid/patienten#12345)](Patient-mii-exa-seltene-patient.md)

**recordedDate**: 2024-01-01

### Evidences

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Detail** |
| * | PAH-Gen Mutation c.1222C>T (p.R408W) | [Observation Genetic variant assessment](Observation-mii-exa-seltene-molgen-variant-pah-pku.md) |

**note**: 

> 

Klassische PKU mit PAH-Gen Mutation c.1222C>T, erfordert lebenslange phenylalaninarme Diät




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "mii-exa-seltene-condition-pku-diagnosis",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-genetic-diagnosis|2027.0.0-ballot.rc1"]
  },
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
      "code" : "261600",
      "display" : "Phenylketonuria"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "7573000",
      "display" : "Classical phenylketonuria"
    },
    {
      "system" : "http://www.orpha.net",
      "code" : "716",
      "display" : "Phenylketonuria"
    }],
    "text" : "Phenylketonurie"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-seltene-patient"
  },
  "recordedDate" : "2024-01-01",
  "evidence" : [{
    "code" : [{
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "81247-9",
        "display" : "Master HL7 genetic variant reporting panel"
      }],
      "text" : "PAH-Gen Mutation c.1222C>T (p.R408W)"
    }],
    "detail" : [{
      "reference" : "Observation/mii-exa-seltene-molgen-variant-pah-pku"
    }]
  }],
  "note" : [{
    "text" : "Klassische PKU mit PAH-Gen Mutation c.1222C>T, erfordert lebenslange phenylalaninarme Diät"
  }]
}

```
