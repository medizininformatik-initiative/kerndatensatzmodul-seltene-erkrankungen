# Mukoviszidose - Genetisch bestätigt - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2026.0.1

## Example Condition: Mukoviszidose - Genetisch bestätigt

Profile: [MII PR SE Genetic Diagnosis](StructureDefinition-mii-pr-seltene-genetic-diagnosis.md) version: 2026.0.1

**Condition Asserted Date**: 2024-08-25

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**category**: Genetic disease

**code**: Cystic fibrosis

**subject**: [Max Mustermann Male, DoB: 1990-01-01 ( http://test-krankenhaus.de/fhir/sid/patienten#12345)](Patient-example.md)

**recordedDate**: 2024-08-25

> **evidence****code**: Genetic finding**detail**: [Observation Genetic variant assessment](Observation-molgen-variant-cftr-f508del-homozygous.md)

> **evidence****code**: Genetic test**detail**: [Diagnostic Report for 'Genetic analysis report' for '->Max Mustermann Male, DoB: 1990-01-01 ( http://test-krankenhaus.de/fhir/sid/patienten#12345)'](DiagnosticReport-molgen-cf-diagnostic.md)

**note**: 

> 

Homozygot für F508del (c.1521_1523delCTT) im CFTR-Gen. Schwerer Phänotyp zu erwarten.




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "example-cf-genetic",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-genetic-diagnosis|2026.0.1"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/condition-assertedDate",
    "valueDateTime" : "2024-08-25"
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
      "code" : "219700",
      "display" : "Cystic fibrosis"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "190905008",
      "display" : "Cystic fibrosis"
    },
    {
      "system" : "http://www.orpha.net",
      "code" : "586",
      "display" : "Cystic fibrosis"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "recordedDate" : "2024-08-25",
  "evidence" : [{
    "code" : [{
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "106221001",
        "display" : "Genetic finding"
      }]
    }],
    "detail" : [{
      "reference" : "Observation/molgen-variant-cftr-f508del-homozygous"
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
      "reference" : "DiagnosticReport/molgen-cf-diagnostic"
    }]
  }],
  "note" : [{
    "text" : "Homozygot für F508del (c.1521_1523delCTT) im CFTR-Gen. Schwerer Phänotyp zu erwarten."
  }]
}

```
