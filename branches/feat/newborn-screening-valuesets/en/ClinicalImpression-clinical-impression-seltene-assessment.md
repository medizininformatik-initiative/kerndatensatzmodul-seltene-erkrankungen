# Konsultation ZSE bei V.a. Marfan-Syndrom - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Konsultation ZSE bei V.a. Marfan-Syndrom**

## Example ClinicalImpression: Konsultation ZSE bei V.a. Marfan-Syndrom

-------

**English**

-------

Profile: [https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-impression|2026.0.1](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-impression|2026.0.1)

**status**: Completed

**subject**: [Anonymous Patient Male, DoB: 2005-01-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#MRF-2024-001)](Patient-patient-marfan-001.md)

**encounter**: [Encounter: status = finished; class = ambulatory (ActCode#AMB); type = Seen in cardiac clinic (finding); period = 2024-12-15 --> 2024-12-15; reasonCode = Chest pain](Encounter-encounter-cardiology.md)

**effective**: 2024-12-15

**date**: 2024-12-15

**problem**: 

* [Condition Marfan-Syndrom](Condition-condition-marfan-suspected.md)
* [Condition Marfan syndrome](Condition-condition-marfan-clinical.md)
* [Condition Marfan syndrome](Condition-condition-marfan-genetic.md)

> **investigation****code**: Echokardiographie**item**: 
* [Observation Aorta root Diameter by US 2D](Observation-observation-echo-aortic.md)
* [Observation Aortic valve Regurgitation degree by US.doppler](Observation-observation-echo-av.md)
* [Observation Mitral valve Regurgitation degree by US.doppler](Observation-observation-echo-mv.md)

**summary**: 19-jähriger Patient mit Z.n. Katarakt-OP im ZSE vorstellig. Kardiologische Mitbeurteilung zeigt: Aortenwurzeldilatation (48mm), AKI Grad II, MKI Grad I. Skelettale Merkmale (Hochwuchs 2,13m, Beinlängendifferenz) bestätigen Marfan-Syndrom. Klinische und genetische Diagnose gesichert.

> **finding****itemReference**: [Condition Marfan syndrome](Condition-condition-marfan-clinical.md)

> **finding****itemReference**: [Condition Marfan syndrome](Condition-condition-marfan-genetic.md)

> **finding****itemCodeableConcept**: Aortic root dilatation**itemReference**: [Observation Aortic root aneurysm](Observation-symptom-aortic-root.md)

> **finding****itemCodeableConcept**: Aortic valve regurgitation**itemReference**: [Observation Aortic regurgitation](Observation-symptom-aortic-regurg.md)

> **finding****itemCodeableConcept**: Mitral valve regurgitation**itemReference**: [Observation Mitral regurgitation](Observation-symptom-mitral-regurg.md)

> **finding****itemCodeableConcept**: Tall stature**itemReference**: [Observation Body height](Observation-observation-height-001.md)

> **finding****itemCodeableConcept**: Leg length discrepancy**itemReference**: [Observation Leg length discrepancy](Observation-observation-leg-asymmetry.md)

**prognosisCodeableConcept**: Guarded prognosis

**note**: , 

> 

Katarakt in jungem Alter war Anlass für ZSE-Konsultation. Marfan-Syndrom klinisch und genetisch (FBN1-Mutation) bestätigt. OP-Indikation für Aortenwurzelersatz durch Kardiologie gestellt. Medikamentöse Therapie mit Losartan eingeleitet.


> 

Multidisziplinäre Betreuung im ZSE etabliert. Regelmäßige kardiologische Kontrollen alle 6 Monate. Genetische Beratung für Familienplanung empfohlen.




## Resource Content

```json
{
  "resourceType" : "ClinicalImpression",
  "id" : "clinical-impression-seltene-assessment",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-impression|2026.0.1"]
  },
  "status" : "completed",
  "subject" : {
    "reference" : "Patient/patient-marfan-001"
  },
  "encounter" : {
    "reference" : "Encounter/encounter-cardiology"
  },
  "effectiveDateTime" : "2024-12-15",
  "date" : "2024-12-15",
  "problem" : [{
    "reference" : "Condition/condition-marfan-suspected"
  },
  {
    "reference" : "Condition/condition-marfan-clinical"
  },
  {
    "reference" : "Condition/condition-marfan-genetic"
  }],
  "investigation" : [{
    "code" : {
      "text" : "Echokardiographie"
    },
    "item" : [{
      "reference" : "Observation/observation-echo-aortic"
    },
    {
      "reference" : "Observation/observation-echo-av"
    },
    {
      "reference" : "Observation/observation-echo-mv"
    }]
  }],
  "summary" : "19-jähriger Patient mit Z.n. Katarakt-OP im ZSE vorstellig. Kardiologische Mitbeurteilung zeigt: Aortenwurzeldilatation (48mm), AKI Grad II, MKI Grad I. Skelettale Merkmale (Hochwuchs 2,13m, Beinlängendifferenz) bestätigen Marfan-Syndrom. Klinische und genetische Diagnose gesichert.",
  "finding" : [{
    "itemReference" : {
      "reference" : "Condition/condition-marfan-clinical"
    }
  },
  {
    "itemReference" : {
      "reference" : "Condition/condition-marfan-genetic"
    }
  },
  {
    "itemCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "251036003",
        "display" : "Aortic root dilatation"
      }]
    },
    "itemReference" : {
      "reference" : "Observation/symptom-aortic-root"
    }
  },
  {
    "itemCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "60234000",
        "display" : "Aortic valve regurgitation"
      }]
    },
    "itemReference" : {
      "reference" : "Observation/symptom-aortic-regurg"
    }
  },
  {
    "itemCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "48724000",
        "display" : "Mitral valve regurgitation"
      }]
    },
    "itemReference" : {
      "reference" : "Observation/symptom-mitral-regurg"
    }
  },
  {
    "itemCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "248328003",
        "display" : "Tall stature"
      }]
    },
    "itemReference" : {
      "reference" : "Observation/observation-height-001"
    }
  },
  {
    "itemCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "707738004",
        "display" : "Leg length discrepancy"
      }]
    },
    "itemReference" : {
      "reference" : "Observation/observation-leg-asymmetry"
    }
  }],
  "prognosisCodeableConcept" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "67334001",
      "display" : "Guarded prognosis"
    }]
  }],
  "note" : [{
    "text" : "Katarakt in jungem Alter war Anlass für ZSE-Konsultation. Marfan-Syndrom klinisch und genetisch (FBN1-Mutation) bestätigt. OP-Indikation für Aortenwurzelersatz durch Kardiologie gestellt. Medikamentöse Therapie mit Losartan eingeleitet."
  },
  {
    "text" : "Multidisziplinäre Betreuung im ZSE etabliert. Regelmäßige kardiologische Kontrollen alle 6 Monate. Genetische Beratung für Familienplanung empfohlen."
  }]
}

```
