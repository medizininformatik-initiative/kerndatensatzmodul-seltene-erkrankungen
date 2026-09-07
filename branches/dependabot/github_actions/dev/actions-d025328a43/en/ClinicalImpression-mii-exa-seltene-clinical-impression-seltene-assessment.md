# Konsultation ZSE bei V.a. Marfan-Syndrom - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Konsultation ZSE bei V.a. Marfan-Syndrom**

## Example ClinicalImpression: Konsultation ZSE bei V.a. Marfan-Syndrom

-------

**English**

-------

Profile: [MII Profile SE Clinical Impression](StructureDefinition-mii-pr-seltene-clinical-impression.md) version: 2027.0.0-ballot.rc1

**status**: Completed

**subject**: [Anonymous Patient Male, DoB: 2005-01-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#MRF-2024-001)](Patient-mii-exa-seltene-patient-marfan-001.md)

**encounter**: [Encounter: status = finished; class = ambulatory (ActCode#AMB); type = Seen in cardiac clinic (finding); period = 2024-12-15 --> 2024-12-15; reasonCode = Chest pain](Encounter-mii-exa-seltene-encounter-cardiology.md)

**effective**: 2024-12-15

**date**: 2024-12-15

**problem**: 

* [Condition Marfan-Syndrom](Condition-mii-exa-seltene-condition-marfan-suspected.md)
* [Condition Marfan syndrome](Condition-mii-exa-seltene-condition-marfan-clinical.md)
* [Condition Marfan syndrome](Condition-mii-exa-seltene-condition-marfan-genetic.md)

> **investigation****code**: Echokardiographie**item**: 
* [Observation Aorta root Diameter by US 2D](Observation-mii-exa-seltene-observation-echo-aortic.md)
* [Observation Aortic valve Regurgitation degree by US.doppler](Observation-mii-exa-seltene-observation-echo-av.md)
* [Observation Mitral valve Regurgitation degree by US.doppler](Observation-mii-exa-seltene-observation-echo-mv.md)

**summary**: 19-jähriger Patient mit Z.n. Katarakt-OP im ZSE vorstellig. Kardiologische Mitbeurteilung zeigt: Aortenwurzeldilatation (48mm), AKI Grad II, MKI Grad I. Skelettale Merkmale (Hochwuchs 2,13m, Beinlängendifferenz) bestätigen Marfan-Syndrom. Klinische und genetische Diagnose gesichert.

> **finding****itemReference**: [Condition Marfan syndrome](Condition-mii-exa-seltene-condition-marfan-clinical.md)

> **finding****itemReference**: [Condition Marfan syndrome](Condition-mii-exa-seltene-condition-marfan-genetic.md)

> **finding****itemCodeableConcept**: Aortic root dilatation**itemReference**: [Observation Aortic root aneurysm](Observation-mii-exa-seltene-symptom-aortic-root.md)

> **finding****itemCodeableConcept**: Aortic valve regurgitation**itemReference**: [Observation Aortic regurgitation](Observation-mii-exa-seltene-symptom-aortic-regurg.md)

> **finding****itemCodeableConcept**: Mitral valve regurgitation**itemReference**: [Observation Mitral regurgitation](Observation-mii-exa-seltene-symptom-mitral-regurg.md)

> **finding****itemCodeableConcept**: Tall stature**itemReference**: [Observation Body height](Observation-mii-exa-seltene-observation-height-001.md)

> **finding****itemCodeableConcept**: Leg length discrepancy**itemReference**: [Observation Leg length discrepancy](Observation-mii-exa-seltene-observation-leg-asymmetry.md)

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
  "id" : "mii-exa-seltene-clinical-impression-seltene-assessment",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-impression|2027.0.0-ballot.rc1"]
  },
  "status" : "completed",
  "subject" : {
    "reference" : "Patient/mii-exa-seltene-patient-marfan-001"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-seltene-encounter-cardiology"
  },
  "effectiveDateTime" : "2024-12-15",
  "date" : "2024-12-15",
  "problem" : [{
    "reference" : "Condition/mii-exa-seltene-condition-marfan-suspected"
  },
  {
    "reference" : "Condition/mii-exa-seltene-condition-marfan-clinical"
  },
  {
    "reference" : "Condition/mii-exa-seltene-condition-marfan-genetic"
  }],
  "investigation" : [{
    "code" : {
      "text" : "Echokardiographie"
    },
    "item" : [{
      "reference" : "Observation/mii-exa-seltene-observation-echo-aortic"
    },
    {
      "reference" : "Observation/mii-exa-seltene-observation-echo-av"
    },
    {
      "reference" : "Observation/mii-exa-seltene-observation-echo-mv"
    }]
  }],
  "summary" : "19-jähriger Patient mit Z.n. Katarakt-OP im ZSE vorstellig. Kardiologische Mitbeurteilung zeigt: Aortenwurzeldilatation (48mm), AKI Grad II, MKI Grad I. Skelettale Merkmale (Hochwuchs 2,13m, Beinlängendifferenz) bestätigen Marfan-Syndrom. Klinische und genetische Diagnose gesichert.",
  "finding" : [{
    "itemReference" : {
      "reference" : "Condition/mii-exa-seltene-condition-marfan-clinical"
    }
  },
  {
    "itemReference" : {
      "reference" : "Condition/mii-exa-seltene-condition-marfan-genetic"
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
      "reference" : "Observation/mii-exa-seltene-symptom-aortic-root"
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
      "reference" : "Observation/mii-exa-seltene-symptom-aortic-regurg"
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
      "reference" : "Observation/mii-exa-seltene-symptom-mitral-regurg"
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
      "reference" : "Observation/mii-exa-seltene-observation-height-001"
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
      "reference" : "Observation/mii-exa-seltene-observation-leg-asymmetry"
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
