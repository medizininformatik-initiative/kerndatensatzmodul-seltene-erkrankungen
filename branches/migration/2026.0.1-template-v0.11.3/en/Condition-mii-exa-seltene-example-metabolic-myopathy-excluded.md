# Metabolische Myopathie - Ausgeschlossen - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Metabolische Myopathie - Ausgeschlossen**

## Example Condition: Metabolische Myopathie - Ausgeschlossen

-------

**English**

-------

Profile: [MII PR SE Clinical Diagnosis](StructureDefinition-mii-pr-seltene-clinical-diagnosis.md) version: 2027.0.0-ballot.rc1

**Condition Asserted Date**: 2024-10-01

**clinicalStatus**: Inactive

**verificationStatus**: Refuted

**category**: Encounter Diagnosis

**code**: Metabolische Myopathie (ausgeschlossen)

**subject**: [Max Mustermann (official) Male, DoB: 1990-01-01 ( http://test-krankenhaus.de/fhir/sid/patienten#12345)](Patient-mii-exa-seltene-patient.md)

**abatement**: 2024-10-01

**recordedDate**: 2024-10-01

> **evidence****code**: Laktat normal**detail**: [Observation/lactate-normal](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=http://fhir.org/packages/de.basisprofil.r4/Observation/lactate-normal)

> **evidence****code**: Muskelbiopsie unauffällig**detail**: [DiagnosticReport/muscle-biopsy-normal](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=http://fhir.org/packages/de.basisprofil.r4/DiagnosticReport/muscle-biopsy-normal)

**note**: 

> 

Metabolische Myopathie ausgeschlossen. Laktat in Ruhe und unter Belastung normwertig. Muskelbiopsie ohne Hinweise auf mitochondriale Pathologie.




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "mii-exa-seltene-example-metabolic-myopathy-excluded",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis|2027.0.0-ballot.rc1"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/condition-assertedDate",
    "valueDateTime" : "2024-10-01"
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
      "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
      "code" : "encounter-diagnosis"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "version" : "2024",
      "code" : "G71.3",
      "display" : "Mitochondriale Myopathie, anderenorts nicht klassifiziert"
    },
    {
      "system" : "http://www.orpha.net",
      "code" : "206966",
      "display" : "Mitochondrial myopathy"
    }],
    "text" : "Metabolische Myopathie (ausgeschlossen)"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-seltene-patient"
  },
  "abatementDateTime" : "2024-10-01",
  "recordedDate" : "2024-10-01",
  "evidence" : [{
    "code" : [{
      "text" : "Laktat normal"
    }],
    "detail" : [{
      "reference" : "Observation/lactate-normal"
    }]
  },
  {
    "code" : [{
      "text" : "Muskelbiopsie unauffällig"
    }],
    "detail" : [{
      "reference" : "DiagnosticReport/muscle-biopsy-normal"
    }]
  }],
  "note" : [{
    "text" : "Metabolische Myopathie ausgeschlossen. Laktat in Ruhe und unter Belastung normwertig. Muskelbiopsie ohne Hinweise auf mitochondriale Pathologie."
  }]
}

```
