# Beispiel Physiotherapie bei SMA - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Beispiel Physiotherapie bei SMA**

## Beispiel ServiceRequest: Beispiel Physiotherapie bei SMA

-------

**German**

-------

Profile: [MII PR SE Therapieempfehlung Nicht-Medikamentös](StructureDefinition-mii-pr-seltene-therapieempfehlung-nicht-medikamentoes.md) version: 2027.0.0-ballot.rc1

**status**: Active

**intent**: Proposal

**category**: Sonstige, Symptomatisch

**priority**: Routine

**code**: Physiotherapie zur Erhaltung der motorischen Funktionen

**subject**: [Anonymous Patient Female, DoB: 2024-07-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#SMA-2024-001)](Patient-mii-exa-seltene-patient-sma-001.md)

**occurrence**: 2 per 1 week

**authoredOn**: 2024-07-29

**reasonReference**: [Infantile Spinale Muskelatrophie Typ 1](Condition-mii-exa-seltene-condition-sma-genetic.md)

**note**: 

> 

Regelmäßige Physiotherapie 2x wöchentlich zur Kontrakturprophylaxe und Erhaltung der Restfunktion




## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "mii-exa-seltene-therapieempfehlung-physiotherapie-sma",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung-nicht-medikamentoes|2027.0.0-ballot.rc1"]
  },
  "status" : "active",
  "intent" : "proposal",
  "category" : [{
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-therapieempfehlung-strategie",
      "code" : "other",
      "display" : "Sonstige"
    }]
  },
  {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-therapieempfehlung-typ",
      "code" : "symptomatic",
      "display" : "Symptomatisch"
    }]
  }],
  "priority" : "routine",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "91251008",
      "display" : "Physical therapy procedure"
    }],
    "text" : "Physiotherapie zur Erhaltung der motorischen Funktionen"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-seltene-patient-sma-001"
  },
  "occurrenceTiming" : {
    "repeat" : {
      "frequency" : 2,
      "period" : 1,
      "periodUnit" : "wk"
    }
  },
  "authoredOn" : "2024-07-29",
  "reasonReference" : [{
    "reference" : "Condition/mii-exa-seltene-condition-sma-genetic",
    "display" : "Infantile Spinale Muskelatrophie Typ 1"
  }],
  "note" : [{
    "text" : "Regelmäßige Physiotherapie 2x wöchentlich zur Kontrakturprophylaxe und Erhaltung der Restfunktion"
  }]
}

```
