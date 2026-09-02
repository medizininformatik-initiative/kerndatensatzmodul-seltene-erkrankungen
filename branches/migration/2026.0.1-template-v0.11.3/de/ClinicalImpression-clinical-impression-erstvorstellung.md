# Klinische Beurteilung - Erstvorstellung - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Klinische Beurteilung - Erstvorstellung**

## Beispiel ClinicalImpression: Klinische Beurteilung - Erstvorstellung

-------

**German**

-------

Profile: [https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-impression|2026.0.1](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-impression|2026.0.1)

**status**: Completed

**subject**: [Anonymous Patient Female, DoB: 2024-07-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#SMA-2024-001)](Patient-patient-sma-001.md)

**encounter**: [Encounter: status = finished; class = ambulatory (ActCode#AMB); type = Follow-up encounter; period = 2024-07-22 --> 2024-07-22](Encounter-encounter-ambulant-001.md)

**effective**: 2024-07-22

**date**: 2024-07-22

**problem**: [Condition Werdnig-Hoffmann disease](Condition-condition-sma-suspected.md)

> **investigation****code**: Familienanamnese**item**: [FamilyMemberHistory: extension = Unknown; status = completed; date = 2024-07-22; relationship = Great grandmother](FamilyMemberHistory-family-history-001.md)

> **investigation****code**: Labordiagnostik**item**: [Observation Troponin T.cardiac [Mass/volume] in Serum or Plasma](Observation-observation-troponin-001.md)

**summary**: Neugeborenes mit V.a. SMA aus Neugeborenenscreening. Familienanamnese zeigt unklare Muskelerkrankung der Urgroßmutter. Troponin T bereits erhöht (92 ng/l).

> **finding****itemReference**: [Condition Infantile spinale Muskelatrophie, Typ I [Typ Werdnig-Hoffmann]](Condition-condition-sma-clinical.md)

> **finding****itemReference**: [Condition Spinal muscular atrophy, type I](Condition-condition-sma-genetic.md)

> **finding****itemCodeableConcept**: Troponin above reference range**itemReference**: [Observation Troponin T.cardiac [Mass/volume] in Serum or Plasma](Observation-observation-troponin-001.md)

**prognosisCodeableConcept**: Guarded prognosis

**note**: , 

> 

Klinische Untersuchung gemäß SMA-Diagnoseprotokoll. Blutentnahme für Genetik veranlasst.


> 

Klinisches Bild vereinbar mit SMA Typ 1. Molekulargenetische Bestätigung ausstehend. Eltern über Therapieoptionen informiert.




## Resource Content

```json
{
  "resourceType" : "ClinicalImpression",
  "id" : "clinical-impression-erstvorstellung",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-impression|2026.0.1"]
  },
  "status" : "completed",
  "subject" : {
    "reference" : "Patient/patient-sma-001"
  },
  "encounter" : {
    "reference" : "Encounter/encounter-ambulant-001"
  },
  "effectiveDateTime" : "2024-07-22",
  "date" : "2024-07-22",
  "problem" : [{
    "reference" : "Condition/condition-sma-suspected"
  }],
  "investigation" : [{
    "code" : {
      "text" : "Familienanamnese"
    },
    "item" : [{
      "reference" : "FamilyMemberHistory/family-history-001"
    }]
  },
  {
    "code" : {
      "text" : "Labordiagnostik"
    },
    "item" : [{
      "reference" : "Observation/observation-troponin-001"
    }]
  }],
  "summary" : "Neugeborenes mit V.a. SMA aus Neugeborenenscreening. Familienanamnese zeigt unklare Muskelerkrankung der Urgroßmutter. Troponin T bereits erhöht (92 ng/l).",
  "finding" : [{
    "itemReference" : {
      "reference" : "Condition/condition-sma-clinical"
    }
  },
  {
    "itemReference" : {
      "reference" : "Condition/condition-sma-genetic"
    }
  },
  {
    "itemCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "1363512008",
        "display" : "Troponin above reference range"
      }]
    },
    "itemReference" : {
      "reference" : "Observation/observation-troponin-001"
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
    "text" : "Klinische Untersuchung gemäß SMA-Diagnoseprotokoll. Blutentnahme für Genetik veranlasst."
  },
  {
    "text" : "Klinisches Bild vereinbar mit SMA Typ 1. Molekulargenetische Bestätigung ausstehend. Eltern über Therapieoptionen informiert."
  }]
}

```
