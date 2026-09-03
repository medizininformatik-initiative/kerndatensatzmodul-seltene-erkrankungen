# SMA - Genetisch ausgeschlossen - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SMA - Genetisch ausgeschlossen**

## Example Condition: SMA - Genetisch ausgeschlossen

-------

**English**

-------

Profile: [MII PR SE Genetic Diagnosis](StructureDefinition-mii-pr-seltene-genetic-diagnosis.md) version: 2027.0.0-ballot.rc1

**Condition Asserted Date**: 2024-07-26

**clinicalStatus**: Inactive

**verificationStatus**: Refuted

**category**: Genetic disease

**code**: Spinale Muskelatrophie (genetisch ausgeschlossen)

**subject**: [Max Mustermann (official) Male, DoB: 1990-01-01 ( http://test-krankenhaus.de/fhir/sid/patienten#12345)](Patient-mii-exa-seltene-patient.md)

**abatement**: 2024-07-26

**recordedDate**: 2024-07-26

> **evidence****code**: Genetic finding**detail**: [Observation Genetic variant assessment](Observation-mii-exa-seltene-molgen-smn1-normal-copies.md)

> **evidence****code**: Genetic test**detail**: [Diagnostic Report for 'Genetic analysis report' for '->Max Mustermann (official) Male, DoB: 1990-01-01 ( http://test-krankenhaus.de/fhir/sid/patienten#12345)'](DiagnosticReport-mii-exa-seltene-molgen-sma-negative.md)

**note**: 

> 

SMN1-Gen: 2 Kopien nachgewiesen (Normalbefund). SMN2-Gen: 2 Kopien. SMA genetisch ausgeschlossen.




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "mii-exa-seltene-example-sma-excluded-genetic",
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
      "code" : "inactive"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
      "code" : "refuted"
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
      "code" : "253300",
      "display" : "Spinal muscular atrophy, type I"
    }],
    "text" : "Spinale Muskelatrophie (genetisch ausgeschlossen)"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-seltene-patient"
  },
  "abatementDateTime" : "2024-07-26",
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
      "reference" : "Observation/mii-exa-seltene-molgen-smn1-normal-copies"
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
      "reference" : "DiagnosticReport/mii-exa-seltene-molgen-sma-negative"
    }]
  }],
  "note" : [{
    "text" : "SMN1-Gen: 2 Kopien nachgewiesen (Normalbefund). SMN2-Gen: 2 Kopien. SMA genetisch ausgeschlossen."
  }]
}

```
