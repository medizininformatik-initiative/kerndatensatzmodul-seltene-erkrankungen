# Beispiel Früherkennungsprogramm-Empfehlung - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Beispiel Früherkennungsprogramm-Empfehlung**

## Beispiel ServiceRequest: Beispiel Früherkennungsprogramm-Empfehlung

-------

**German**

-------

Profile: [MII PR SE Therapieempfehlung Nicht-Medikamentös](StructureDefinition-mii-pr-seltene-therapieempfehlung-nicht-medikamentoes.md) version: 2027.0.0-ballot.rc1

**status**: Draft

**intent**: Proposal

**category**: Früherkennung, Symptomatisch

**priority**: Routine

**code**: Jährliche kardiologische Kontrolle bei Marfan-Syndrom

**subject**: [Anonymous Patient Male, DoB: 2005-01-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#MRF-2024-001)](Patient-mii-exa-seltene-patient-marfan-001.md)

**reasonReference**: [Condition Marfan syndrome](Condition-mii-exa-seltene-condition-marfan-clinical.md)

**note**: 

> 

Jährliche Echokardiographie zur Früherkennung von Aortenwurzeldilatation empfohlen




## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "mii-exa-seltene-example-early-detection-recommendation",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung-nicht-medikamentoes|2027.0.0-ballot.rc1"]
  },
  "status" : "draft",
  "intent" : "proposal",
  "category" : [{
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-therapieempfehlung-strategie",
      "code" : "early-detection",
      "display" : "Früherkennung"
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
      "code" : "312851005",
      "display" : "Screening for disorder"
    }],
    "text" : "Jährliche kardiologische Kontrolle bei Marfan-Syndrom"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-seltene-patient-marfan-001"
  },
  "reasonReference" : [{
    "reference" : "Condition/mii-exa-seltene-condition-marfan-clinical"
  }],
  "note" : [{
    "text" : "Jährliche Echokardiographie zur Früherkennung von Aortenwurzeldilatation empfohlen"
  }]
}

```
