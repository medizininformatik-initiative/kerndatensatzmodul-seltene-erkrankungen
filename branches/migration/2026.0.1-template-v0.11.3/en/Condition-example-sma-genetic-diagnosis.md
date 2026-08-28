# SMA Typ 1 - Genetisch bestätigte Diagnose - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SMA Typ 1 - Genetisch bestätigte Diagnose**

## Example Condition: SMA Typ 1 - Genetisch bestätigte Diagnose

-------

**English**

-------

Profile: [https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-genetic-diagnosis|2026.0.1](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-genetic-diagnosis|2026.0.1)

**Condition Asserted Date**: 2024-07-26

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**category**: Genetic disease

**code**: Spinale Muskelatrophie Typ 1, genetisch bestätigt

**subject**: [Max Mustermann Male, DoB: 1990-01-01 ( http://test-krankenhaus.de/fhir/sid/patienten#12345)](Patient-example.md)

**encounter**: [Encounter/genetic-consultation](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Encounter/genetic-consultation)

**onset**: 2024-07-01

**recordedDate**: 2024-07-26

> **evidence****code**: Genetic finding**detail**: [Observation Genetic variant assessment](Observation-molgen-variant-smn1-deletion.md)

> **evidence****code**: Genetic test**detail**: [Diagnostic Report for 'Genetic analysis report' for '->Max Mustermann Male, DoB: 1990-01-01 ( http://test-krankenhaus.de/fhir/sid/patienten#12345)'](DiagnosticReport-molgen-diagnostic-implication-sma.md)

**note**: 

> 

Homozygote Deletion des SMN1-Gens nachgewiesen. 0 Kopien SMN1, 2 Kopien SMN2. Diagnose molekulargenetisch gesichert.




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "example-sma-genetic-diagnosis",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-genetic-diagnosis|2026.0.1"]
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
    }],
    "text" : "Spinale Muskelatrophie Typ 1, genetisch bestätigt"
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "encounter" : {
    "reference" : "Encounter/genetic-consultation"
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
      "reference" : "Observation/molgen-variant-smn1-deletion"
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
    "text" : "Homozygote Deletion des SMN1-Gens nachgewiesen. 0 Kopien SMN1, 2 Kopien SMN2. Diagnose molekulargenetisch gesichert."
  }]
}

```
