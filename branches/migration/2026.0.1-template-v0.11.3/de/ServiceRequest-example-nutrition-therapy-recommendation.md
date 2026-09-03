# Beispiel Ernährungstherapie-Empfehlung - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Beispiel Ernährungstherapie-Empfehlung**

## Beispiel ServiceRequest: Beispiel Ernährungstherapie-Empfehlung

-------

**German**

-------

Profile: [MII PR SE Therapieempfehlung Nicht-Medikamentös](StructureDefinition-mii-pr-seltene-therapieempfehlung-nicht-medikamentoes.md) version: 2027.0.0-ballot.rc1

**status**: Active

**intent**: Proposal

**category**: Ernährungstherapie, Kausal

**priority**: Routine

**code**: Phenylalaninreduzierte Diät bei Phenylketonurie

**subject**: [Max Mustermann (official) Male, DoB: 1990-01-01 ( http://test-krankenhaus.de/fhir/sid/patienten#12345)](Patient-mii-exa-seltene-patient.md)

**occurrence**: 2024-01-01 --> (ongoing)

**reasonReference**: [Condition Phenylketonuria](Condition-condition-pku-diagnosis.md)

**note**: 

> 

Lebenslange phenylalaninarme Diät erforderlich, regelmäßige Kontrolle der Phe-Spiegel




## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "example-nutrition-therapy-recommendation",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung-nicht-medikamentoes|2027.0.0-ballot.rc1"]
  },
  "status" : "active",
  "intent" : "proposal",
  "category" : [{
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-therapieempfehlung-strategie",
      "code" : "nutrition",
      "display" : "Ernährungstherapie"
    }]
  },
  {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-therapieempfehlung-typ",
      "code" : "causal",
      "display" : "Kausal"
    }]
  }],
  "priority" : "routine",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "61310001",
      "display" : "Nutrition education"
    }],
    "text" : "Phenylalaninreduzierte Diät bei Phenylketonurie"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-seltene-patient"
  },
  "occurrencePeriod" : {
    "start" : "2024-01-01"
  },
  "reasonReference" : [{
    "reference" : "Condition/condition-pku-diagnosis"
  }],
  "note" : [{
    "text" : "Lebenslange phenylalaninarme Diät erforderlich, regelmäßige Kontrolle der Phe-Spiegel"
  }]
}

```
