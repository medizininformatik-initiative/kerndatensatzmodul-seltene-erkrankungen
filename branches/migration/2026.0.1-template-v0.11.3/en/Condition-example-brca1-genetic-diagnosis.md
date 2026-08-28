# Hereditäres Mamma- und Ovarialkarzinom-Syndrom - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Hereditäres Mamma- und Ovarialkarzinom-Syndrom**

## Example Condition: Hereditäres Mamma- und Ovarialkarzinom-Syndrom

-------

**English**

-------

Profile: [https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-genetic-diagnosis|2026.0.1](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-genetic-diagnosis|2026.0.1)

**Condition Asserted Date**: 2024-11-01

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**category**: Genetic disease

**code**: Hereditäres Mamma- und Ovarialkarzinom-Syndrom (BRCA1)

**subject**: [Max Mustermann Male, DoB: 1990-01-01 ( http://test-krankenhaus.de/fhir/sid/patienten#12345)](Patient-example.md)

**recordedDate**: 2024-11-01

> **evidence****code**: Genetic finding**detail**: [Observation Genetic variant assessment](Observation-molgen-variant-brca1-pathogenic.md)

> **evidence****code**: Genetic test**detail**: [Diagnostic Report for 'Master HL7 genetic variant reporting panel' for '->Max Mustermann Male, DoB: 1990-01-01 ( http://test-krankenhaus.de/fhir/sid/patienten#12345)'](DiagnosticReport-molgen-brca-panel.md)

**note**: 

> 

Pathogene Variante c.68_69del (p.Glu23Valfs*17) in BRCA1 nachgewiesen. Penetranz für Mammakarzinom bis 80 Jahre: 72%.




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "example-brca1-genetic-diagnosis",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-genetic-diagnosis|2026.0.1"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/condition-assertedDate",
    "valueDateTime" : "2024-11-01"
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
      "code" : "604370",
      "display" : "Breast-ovarian cancer, familial, 1"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "718220008",
      "display" : "Hereditary breast and ovarian cancer syndrome"
    },
    {
      "system" : "http://www.orpha.net",
      "code" : "145",
      "display" : "Hereditary breast and/or ovarian cancer syndrome"
    }],
    "text" : "Hereditäres Mamma- und Ovarialkarzinom-Syndrom (BRCA1)"
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "recordedDate" : "2024-11-01",
  "evidence" : [{
    "code" : [{
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "106221001",
        "display" : "Genetic finding"
      }]
    }],
    "detail" : [{
      "reference" : "Observation/molgen-variant-brca1-pathogenic"
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
      "reference" : "DiagnosticReport/molgen-brca-panel"
    }]
  }],
  "note" : [{
    "text" : "Pathogene Variante c.68_69del (p.Glu23Valfs*17) in BRCA1 nachgewiesen. Penetranz für Mammakarzinom bis 80 Jahre: 72%."
  }]
}

```
