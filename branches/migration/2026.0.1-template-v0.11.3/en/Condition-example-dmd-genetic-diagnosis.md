# Duchenne-Muskeldystrophie - Genetisch bestätigt - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Duchenne-Muskeldystrophie - Genetisch bestätigt**

## Example Condition: Duchenne-Muskeldystrophie - Genetisch bestätigt

-------

**English**

-------

Profile: [MII PR SE Genetic Diagnosis](StructureDefinition-mii-pr-seltene-genetic-diagnosis.md) version: 2027.0.0-ballot.rc1

**Condition Asserted Date**: 2024-09-15

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**category**: Genetic disease

**code**: Duchenne-Muskeldystrophie

**subject**: [Max Mustermann (official) Male, DoB: 1990-01-01 ( http://test-krankenhaus.de/fhir/sid/patienten#12345)](Patient-mii-exa-seltene-patient.md)

**recordedDate**: 2024-09-15

> **evidence****code**: Genetic finding**detail**: [Observation Genetic variant assessment](Observation-molgen-variant-dmd-deletion-exon45-47.md)

> **evidence****code**: Genetic test**detail**: [Diagnostic Report for 'Genetic analysis report' for '->Max Mustermann (official) Male, DoB: 1990-01-01 ( http://test-krankenhaus.de/fhir/sid/patienten#12345)'](DiagnosticReport-molgen-diagnostic-dmd.md)

**note**: 

> 

Deletion der Exons 45-47 im DMD-Gen nachgewiesen. Out-of-frame Deletion führt zu komplettem Funktionsverlust des Dystrophin-Proteins.




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "example-dmd-genetic-diagnosis",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-genetic-diagnosis|2027.0.0-ballot.rc1"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/condition-assertedDate",
    "valueDateTime" : "2024-09-15"
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
      "code" : "310200",
      "display" : "Duchenne muscular dystrophy"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "76670001",
      "display" : "Duchenne muscular dystrophy"
    },
    {
      "system" : "http://www.orpha.net",
      "code" : "98896",
      "display" : "Duchenne muscular dystrophy"
    }],
    "text" : "Duchenne-Muskeldystrophie"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-seltene-patient"
  },
  "recordedDate" : "2024-09-15",
  "evidence" : [{
    "code" : [{
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "106221001",
        "display" : "Genetic finding"
      }]
    }],
    "detail" : [{
      "reference" : "Observation/molgen-variant-dmd-deletion-exon45-47"
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
      "reference" : "DiagnosticReport/molgen-diagnostic-dmd"
    }]
  }],
  "note" : [{
    "text" : "Deletion der Exons 45-47 im DMD-Gen nachgewiesen. Out-of-frame Deletion führt zu komplettem Funktionsverlust des Dystrophin-Proteins."
  }]
}

```
