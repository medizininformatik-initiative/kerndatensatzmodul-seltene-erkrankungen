# Marfan-Syndrom - Klinische Diagnose - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Marfan-Syndrom - Klinische Diagnose**

## Beispiel Condition: Marfan-Syndrom - Klinische Diagnose

-------

**German**

-------

Profile: [MII PR SE Clinical Diagnosis](StructureDefinition-mii-pr-seltene-clinical-diagnosis.md) version: 2027.0.0-ballot.rc1

**Condition Asserted Date**: 2024-12-15

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**category**: Encounter Diagnosis

**code**: Marfan-Syndrom

**subject**: [Anonymous Patient Male, DoB: 2005-01-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#MRF-2024-001)](Patient-mii-exa-seltene-patient-marfan-001.md)

**encounter**: [Encounter: status = finished; class = ambulatory (ActCode#AMB); type = Seen in cardiac clinic (finding); period = 2024-12-15 --> 2024-12-15; reasonCode = Chest pain](Encounter-mii-exa-seltene-encounter-cardiology.md)

**recordedDate**: 2024-12-15

> **evidence****code**: Aortic root aneurysm**detail**: [Observation Aortic root aneurysm](Observation-mii-exa-seltene-symptom-aortic-root.md)

> **evidence****code**: Aortic regurgitation**detail**: [Observation Aortic regurgitation](Observation-mii-exa-seltene-symptom-aortic-regurg.md)

> **evidence****code**: Mitral regurgitation**detail**: [Observation Mitral regurgitation](Observation-mii-exa-seltene-symptom-mitral-regurg.md)

> **evidence****code**: Tall stature**detail**: [Observation Body height](Observation-mii-exa-seltene-observation-height-001.md)

> **evidence****code**: Lower limb asymmetry**detail**: [Observation Leg length discrepancy](Observation-mii-exa-seltene-observation-leg-asymmetry.md)

> **evidence****code**: Chest pain**detail**: [Observation Chest pain](Observation-mii-exa-seltene-symptom-chest-pain.md)

**note**: 

> 

Marfan-Syndrom klinisch diagnostiziert basierend auf kardialen Befunden, Skelettmerkmalen und ophthalmologischer Manifestation




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "mii-exa-seltene-condition-marfan-clinical",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis|2027.0.0-ballot.rc1"]
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
      "code" : "confirmed"
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
    "text" : "Marfan-Syndrom"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-seltene-patient-marfan-001"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-seltene-encounter-cardiology"
  },
  "recordedDate" : "2024-12-15",
  "evidence" : [{
    "code" : [{
      "coding" : [{
        "system" : "http://human-phenotype-ontology.org",
        "code" : "HP:0002616",
        "display" : "Aortic root aneurysm"
      }]
    }],
    "detail" : [{
      "reference" : "Observation/mii-exa-seltene-symptom-aortic-root"
    }]
  },
  {
    "code" : [{
      "coding" : [{
        "system" : "http://human-phenotype-ontology.org",
        "code" : "HP:0001659",
        "display" : "Aortic regurgitation"
      }]
    }],
    "detail" : [{
      "reference" : "Observation/mii-exa-seltene-symptom-aortic-regurg"
    }]
  },
  {
    "code" : [{
      "coding" : [{
        "system" : "http://human-phenotype-ontology.org",
        "code" : "HP:0001653",
        "display" : "Mitral regurgitation"
      }]
    }],
    "detail" : [{
      "reference" : "Observation/mii-exa-seltene-symptom-mitral-regurg"
    }]
  },
  {
    "code" : [{
      "coding" : [{
        "system" : "http://human-phenotype-ontology.org",
        "code" : "HP:0000098",
        "display" : "Tall stature"
      }]
    }],
    "detail" : [{
      "reference" : "Observation/mii-exa-seltene-observation-height-001"
    }]
  },
  {
    "code" : [{
      "coding" : [{
        "system" : "http://human-phenotype-ontology.org",
        "code" : "HP:0100559",
        "display" : "Lower limb asymmetry"
      }]
    }],
    "detail" : [{
      "reference" : "Observation/mii-exa-seltene-observation-leg-asymmetry"
    }]
  },
  {
    "code" : [{
      "coding" : [{
        "system" : "http://human-phenotype-ontology.org",
        "code" : "HP:0100749",
        "display" : "Chest pain"
      }]
    }],
    "detail" : [{
      "reference" : "Observation/mii-exa-seltene-symptom-chest-pain"
    }]
  }],
  "note" : [{
    "text" : "Marfan-Syndrom klinisch diagnostiziert basierend auf kardialen Befunden, Skelettmerkmalen und ophthalmologischer Manifestation"
  }]
}

```
