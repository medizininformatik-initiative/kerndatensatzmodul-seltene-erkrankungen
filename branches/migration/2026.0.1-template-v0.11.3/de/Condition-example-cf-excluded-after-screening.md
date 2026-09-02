# Mukoviszidose - Nach positivem Screening ausgeschlossen - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Mukoviszidose - Nach positivem Screening ausgeschlossen**

## Beispiel Condition: Mukoviszidose - Nach positivem Screening ausgeschlossen

-------

**German**

-------

Profile: [https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-genetic-diagnosis|2026.0.1](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-genetic-diagnosis|2026.0.1)

**Condition Asserted Date**: 2024-08-25

**clinicalStatus**: Inactive

**verificationStatus**: Refuted

**category**: Genetic disease

**code**: Mukoviszidose (ausgeschlossen)

**subject**: [Max Mustermann (official) Male, DoB: 1990-01-01 ( http://test-krankenhaus.de/fhir/sid/patienten#12345)](Patient-mii-exa-seltene-patient.md)

**abatement**: 2024-08-25

**recordedDate**: 2024-08-25

### Evidences

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Detail** |
| * | Genetic finding | [Observation/molgen-cftr-heterozygous-carrier](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=http://fhir.org/packages/de.basisprofil.r4/Observation/molgen-cftr-heterozygous-carrier) |

**note**: 

> 

Heterozygoter Anlageträger für F508del. Zweite Mutation ausgeschlossen. IRT-Erhöhung im Screening war transient. Mukoviszidose ausgeschlossen.




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "example-cf-excluded-after-screening",
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
      "code" : "219700",
      "display" : "Cystic fibrosis"
    },
    {
      "system" : "http://www.orpha.net",
      "code" : "586",
      "display" : "Cystic fibrosis"
    }],
    "text" : "Mukoviszidose (ausgeschlossen)"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-seltene-patient"
  },
  "abatementDateTime" : "2024-08-25",
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
      "reference" : "Observation/molgen-cftr-heterozygous-carrier"
    }]
  }],
  "note" : [{
    "text" : "Heterozygoter Anlageträger für F508del. Zweite Mutation ausgeschlossen. IRT-Erhöhung im Screening war transient. Mukoviszidose ausgeschlossen."
  }]
}

```
