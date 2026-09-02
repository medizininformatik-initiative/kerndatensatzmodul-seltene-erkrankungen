# Phenylketonurie - Genetische Diagnose - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Phenylketonurie - Genetische Diagnose**

## Example Condition: Phenylketonurie - Genetische Diagnose

-------

**English**

-------

Profile: [https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-genetic-diagnosis|2026.0.1](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-genetic-diagnosis|2026.0.1)

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
| * | PAH-Gen Mutation c.1222C>T (p.R408W) | [Observation/pku-genetic-variant](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=http://fhir.org/packages/de.basisprofil.r4/Observation/pku-genetic-variant) |

**note**: 

> 

Klassische PKU mit PAH-Gen Mutation c.1222C>T, erfordert lebenslange phenylalaninarme Diät




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "condition-pku-diagnosis",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-genetic-diagnosis|2026.0.1"]
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
      "reference" : "Observation/pku-genetic-variant"
    }]
  }],
  "note" : [{
    "text" : "Klassische PKU mit PAH-Gen Mutation c.1222C>T, erfordert lebenslange phenylalaninarme Diät"
  }]
}

```
