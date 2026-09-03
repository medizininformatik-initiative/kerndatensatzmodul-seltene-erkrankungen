# SMA Genetische Diagnose - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **SMA Genetische Diagnose**

## Beispiel Condition: SMA Genetische Diagnose

-------

**German**

-------

Profile: [MII PR SE Genetic Diagnosis](StructureDefinition-mii-pr-seltene-genetic-diagnosis.md) version: 2027.0.0-ballot.rc1

**Condition Asserted Date**: 2024-07-26

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**category**: Genetic disease

**code**: Spinal muscular atrophy, type I

**subject**: [Anonymous Patient Female, DoB: 2024-07-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#SMA-2024-001)](Patient-patient-sma-001.md)

**onset**: 2024-07-01

**recordedDate**: 2024-07-26

> **evidence****code**: Genetic finding**detail**: 
* [Observation Genetic analysis master panel](Observation-variant-smn1-001.md)
* [Observation Genetic analysis master panel](Observation-variant-smn2-001.md)

> **evidence****code**: Genetic test**detail**: [Diagnostic Report for 'Genetic analysis report' for '->Max Mustermann (official) Male, DoB: 1990-01-01 ( http://test-krankenhaus.de/fhir/sid/patienten#12345)'](DiagnosticReport-molgen-diagnostic-implication-sma.md)

**note**: 

> 

0 Kopien des SMN1-Gens, 2 Kopien des SMN2-Gens - krankheitsursächlich. Genetische Diagnose existiert parallel zur klinischen Diagnose.




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "condition-sma-genetic",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-genetic-diagnosis|2027.0.0-ballot.rc1"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/condition-assertedDate",
    "valueDateTime" : "2024-07-26"
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
      "code" : "253300",
      "display" : "Spinal muscular atrophy, type I"
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
    }]
  },
  "subject" : {
    "reference" : "Patient/patient-sma-001"
  },
  "onsetDateTime" : "2024-07-01",
  "recordedDate" : "2024-07-26",
  "evidence" : [{
    "code" : [{
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "106221001",
        "display" : "Genetic finding"
      }]
    }],
    "detail" : [{
      "reference" : "Observation/variant-smn1-001"
    },
    {
      "reference" : "Observation/variant-smn2-001"
    }]
  },
  {
    "code" : [{
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "405824009",
        "display" : "Genetic test"
      }]
    }],
    "detail" : [{
      "reference" : "DiagnosticReport/molgen-diagnostic-implication-sma"
    }]
  }],
  "note" : [{
    "text" : "0 Kopien des SMN1-Gens, 2 Kopien des SMN2-Gens - krankheitsursächlich. Genetische Diagnose existiert parallel zur klinischen Diagnose."
  }]
}

```
