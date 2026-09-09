# Duchenne ausgeschlossen - Becker bestätigt - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Duchenne ausgeschlossen - Becker bestätigt**

## Beispiel Condition: Duchenne ausgeschlossen - Becker bestätigt

-------

**German**

-------

Profile: [MII PR SE Genetic Diagnosis](StructureDefinition-mii-pr-seltene-genetic-diagnosis.md) version: 2027.0.0-ballot.rc1

**Condition Asserted Date**: 2024-09-15

**clinicalStatus**: Inactive

**verificationStatus**: Refuted

**category**: Genetic disease

**code**: Duchenne-Muskeldystrophie (ausgeschlossen)

**subject**: [Max Mustermann (official) Male, DoB: 1990-01-01 ( http://test-krankenhaus.de/fhir/sid/patienten#12345)](Patient-mii-exa-seltene-patient.md)

**abatement**: 2024-09-15

**recordedDate**: 2024-09-15

> **evidence****code**: Genetic finding**detail**: [Observation Genetic variant assessment](Observation-mii-exa-seltene-molgen-variant-dmd-deletion-exon45-47.md)

> **evidence****code**: Genetic test**detail**: [Diagnostic Report for 'Genetic analysis report' for '->Max Mustermann (official) Male, DoB: 1990-01-01 ( http://test-krankenhaus.de/fhir/sid/patienten#12345)'](DiagnosticReport-mii-exa-seltene-molgen-diagnostic-dmd.md)

**note**: 

> 

In-frame Deletion Exon 45-47 im DMD-Gen nachgewiesen. Vereinbar mit Becker-Muskeldystrophie, NICHT Duchenne. Duchenne-Muskeldystrophie ausgeschlossen.




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "mii-exa-seltene-example-dmd-excluded-bmd-confirmed",
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
      "version" : "2024",
      "code" : "310200",
      "display" : "Duchenne muscular dystrophy"
    },
    {
      "system" : "http://www.orpha.net",
      "code" : "98896",
      "display" : "Duchenne muscular dystrophy"
    }],
    "text" : "Duchenne-Muskeldystrophie (ausgeschlossen)"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-seltene-patient"
  },
  "abatementDateTime" : "2024-09-15",
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
      "reference" : "Observation/mii-exa-seltene-molgen-variant-dmd-deletion-exon45-47"
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
      "reference" : "DiagnosticReport/mii-exa-seltene-molgen-diagnostic-dmd"
    }]
  }],
  "note" : [{
    "text" : "In-frame Deletion Exon 45-47 im DMD-Gen nachgewiesen. Vereinbar mit Becker-Muskeldystrophie, NICHT Duchenne. Duchenne-Muskeldystrophie ausgeschlossen."
  }]
}

```
