# Marfan-Syndrom - Klinische Diagnose - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Marfan-Syndrom - Klinische Diagnose**

## Example Condition: Marfan-Syndrom - Klinische Diagnose

-------

**English**

-------

Profile: [https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis|2026.0.1](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis|2026.0.1)

**Condition Asserted Date**: 2024-12-15

**clinicalStatus**: Active

**verificationStatus**: Provisional

**category**: Encounter Diagnosis

**code**: Marfan-Syndrom, klinisch diagnostiziert

**subject**: [Max Mustermann (official) Male, DoB: 1990-01-01 ( http://test-krankenhaus.de/fhir/sid/patienten#12345)](Patient-mii-exa-seltene-patient.md)

**encounter**: [Encounter/cardiology-consultation](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=http://fhir.org/packages/de.basisprofil.r4/Encounter/cardiology-consultation)

**recordedDate**: 2024-12-15

> **evidence****code**: Aortenwurzeldilatation**detail**: [Observation Aortic root aneurysm](Observation-aortic-root-dilatation.md)

> **evidence****code**: Linsenluxation**detail**: [Observation Ectopia lentis](Observation-lens-dislocation.md)

> **evidence****code**: Hochwuchs**detail**: [Observation Tall stature](Observation-tall-stature.md)

> **evidence****code**: Arachnodaktylie**detail**: [Observation Arachnodactyly](Observation-arachnodactyly.md)

**note**: 

> 

Klinische Diagnose basierend auf Ghent-Kriterien. Patient erfüllt Major-Kriterien in kardiovaskulärem und ophthalmologischem System. Genetische Testung wird veranlasst.




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "example-marfan-clinical-diagnosis",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis|2026.0.1"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/condition-assertedDate",
    "valueDateTime" : "2024-12-15"
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
      "code" : "provisional"
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
      "system" : "http://omim.org",
      "version" : "2024",
      "code" : "154700",
      "display" : "Marfan syndrome"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "19346006",
      "display" : "Marfan syndrome"
    },
    {
      "system" : "http://www.orpha.net",
      "code" : "558",
      "display" : "Marfan syndrome"
    }],
    "text" : "Marfan-Syndrom, klinisch diagnostiziert"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-seltene-patient"
  },
  "encounter" : {
    "reference" : "Encounter/cardiology-consultation"
  },
  "recordedDate" : "2024-12-15",
  "evidence" : [{
    "code" : [{
      "coding" : [{
        "system" : "http://human-phenotype-ontology.org",
        "code" : "HP:0002616",
        "display" : "Aortic root aneurysm"
      }],
      "text" : "Aortenwurzeldilatation"
    }],
    "detail" : [{
      "reference" : "Observation/aortic-root-dilatation"
    }]
  },
  {
    "code" : [{
      "coding" : [{
        "system" : "http://human-phenotype-ontology.org",
        "code" : "HP:0001083",
        "display" : "Ectopia lentis"
      }],
      "text" : "Linsenluxation"
    }],
    "detail" : [{
      "reference" : "Observation/lens-dislocation"
    }]
  },
  {
    "code" : [{
      "coding" : [{
        "system" : "http://human-phenotype-ontology.org",
        "code" : "HP:0000098",
        "display" : "Tall stature"
      }],
      "text" : "Hochwuchs"
    }],
    "detail" : [{
      "reference" : "Observation/tall-stature"
    }]
  },
  {
    "code" : [{
      "coding" : [{
        "system" : "http://human-phenotype-ontology.org",
        "code" : "HP:0001166",
        "display" : "Arachnodactyly"
      }],
      "text" : "Arachnodaktylie"
    }],
    "detail" : [{
      "reference" : "Observation/arachnodactyly"
    }]
  }],
  "note" : [{
    "text" : "Klinische Diagnose basierend auf Ghent-Kriterien. Patient erfüllt Major-Kriterien in kardiovaskulärem und ophthalmologischem System. Genetische Testung wird veranlasst."
  }]
}

```
