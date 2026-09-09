# Klinische Beurteilung - Nachsorge - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Klinische Beurteilung - Nachsorge**

## Beispiel ClinicalImpression: Klinische Beurteilung - Nachsorge

-------

**German**

-------

Profile: [MII Profile SE Clinical Impression](StructureDefinition-mii-pr-seltene-clinical-impression.md) version: 2027.0.0-ballot.rc1

**status**: Completed

**subject**: [Anonymous Patient Female, DoB: 2024-07-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#SMA-2024-001)](Patient-mii-exa-seltene-patient-sma-001.md)

**encounter**: [Encounter: status = finished; class = ambulatory (ActCode#AMB); type = Follow-up encounter; period = 2024-08-12 --> 2024-08-12](Encounter-mii-exa-seltene-encounter-nachsorge-001.md)

**effective**: 2024-08-12

**date**: 2024-08-12

**previous**: [ClinicalImpression: status = completed; effective[x] = 2024-07-22; date = 2024-07-22; summary = Neugeborenes mit V.a. SMA aus Neugeborenenscreening. Familienanamnese zeigt unklare Muskelerkrankung der Urgroßmutter. Troponin T bereits erhöht (92 ng/l).; prognosisCodeableConcept = Guarded prognosis; note = Klinische Untersuchung gemäß SMA-Diagnoseprotokoll. Blutentnahme für Genetik veranlasst.,Klinisches Bild vereinbar mit SMA Typ 1. Molekulargenetische Bestätigung ausstehend. Eltern über Therapieoptionen informiert.](ClinicalImpression-mii-exa-seltene-clinical-impression-erstvorstellung.md)

**problem**: 

* [Condition Infantile spinale Muskelatrophie, Typ I [Typ Werdnig-Hoffmann]](Condition-mii-exa-seltene-condition-sma-clinical.md)
* [Condition Spinal muscular atrophy, type I](Condition-mii-exa-seltene-condition-sma-genetic.md)

**summary**: Erste Nachsorge 14 Tage nach Gentherapie. Klinisch stabil. Troponin T weiter erhöht (106 ng/l), war jedoch bereits prätherapeutisch erhöht.

> **finding****itemCodeableConcept**: Troponin above reference range**itemReference**: [Observation Troponin T.cardiac [Mass/volume] in Serum or Plasma](Observation-mii-exa-seltene-observation-troponin-004.md)**basis**: Troponin-Verlauf: 22.07: 92 ng/l, 28.07: 58 ng/l, 01.08: 57 ng/l, 12.08: 106 ng/l

> **finding****itemCodeableConcept**: Alanine aminotransferase level within reference range**basis**: ALT normwertig

> **finding****itemCodeableConcept**: Aspartate aminotransferase/serum glutamic oxaloacetic transaminase level within reference range**basis**: AST normwertig

> **finding****itemCodeableConcept**: Platelet count normal**basis**: Thrombozytenzahl normwertig

**prognosisCodeableConcept**: Guarded prognosis

**note**: , 

> 

Standardisierte Nachsorgeuntersuchung nach Gentherapie gemäß Zentrumsprotokoll


> 

Troponin-Erhöhung präexistent, nicht therapieassoziiert. Gentherapie gut vertragen. Weiterführung der Prednisolon-Therapie. Nächste Kontrolle in 4 Wochen.




## Resource Content

```json
{
  "resourceType" : "ClinicalImpression",
  "id" : "mii-exa-seltene-clinical-impression-nachsorge",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-impression|2027.0.0-ballot.rc1"]
  },
  "status" : "completed",
  "subject" : {
    "reference" : "Patient/mii-exa-seltene-patient-sma-001"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-seltene-encounter-nachsorge-001"
  },
  "effectiveDateTime" : "2024-08-12",
  "date" : "2024-08-12",
  "previous" : {
    "reference" : "ClinicalImpression/mii-exa-seltene-clinical-impression-erstvorstellung"
  },
  "problem" : [{
    "reference" : "Condition/mii-exa-seltene-condition-sma-clinical"
  },
  {
    "reference" : "Condition/mii-exa-seltene-condition-sma-genetic"
  }],
  "summary" : "Erste Nachsorge 14 Tage nach Gentherapie. Klinisch stabil. Troponin T weiter erhöht (106 ng/l), war jedoch bereits prätherapeutisch erhöht.",
  "finding" : [{
    "itemCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "1363512008",
        "display" : "Troponin above reference range"
      }]
    },
    "itemReference" : {
      "reference" : "Observation/mii-exa-seltene-observation-troponin-004"
    },
    "basis" : "Troponin-Verlauf: 22.07: 92 ng/l, 28.07: 58 ng/l, 01.08: 57 ng/l, 12.08: 106 ng/l"
  },
  {
    "itemCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "166645004",
        "display" : "Alanine aminotransferase level within reference range"
      }]
    },
    "basis" : "ALT normwertig"
  },
  {
    "itemCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "166667003",
        "display" : "Aspartate aminotransferase/serum glutamic oxaloacetic transaminase level within reference range"
      }]
    },
    "basis" : "AST normwertig"
  },
  {
    "itemCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "165555003",
        "display" : "Platelet count normal"
      }]
    },
    "basis" : "Thrombozytenzahl normwertig"
  }],
  "prognosisCodeableConcept" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "67334001",
      "display" : "Guarded prognosis"
    }]
  }],
  "note" : [{
    "text" : "Standardisierte Nachsorgeuntersuchung nach Gentherapie gemäß Zentrumsprotokoll"
  },
  {
    "text" : "Troponin-Erhöhung präexistent, nicht therapieassoziiert. Gentherapie gut vertragen. Weiterführung der Prednisolon-Therapie. Nächste Kontrolle in 4 Wochen."
  }]
}

```
