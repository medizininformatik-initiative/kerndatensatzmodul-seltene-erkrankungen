# Beispiel Aortenwurzelersatz bei Marfan-Syndrom - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2026.0.1

## Example ServiceRequest: Beispiel Aortenwurzelersatz bei Marfan-Syndrom

Profile: [MII PR SE Therapieempfehlung Nicht-Medikamentös](StructureDefinition-mii-pr-seltene-therapieempfehlung-nicht-medikamentoes.md) version: 2026.0.1

**status**: Active

**intent**: Proposal

**category**: Prophylaxe, Symptomatisch

**priority**: Routine

**code**: Composite-Graft-Implantation (David-OP)

**subject**: [Anonymous Patient Male, DoB: 2005-01-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#MRF-2024-001)](Patient-patient-marfan-001.md)

**occurrence**: 2025-03-15

**authoredOn**: 2024-12-15

**reasonReference**: [Progrediente Aortenwurzeldilatation bei Marfan-Syndrom](Condition-condition-marfan-clinical.md)

**note**: 

> 

Geplanter elektiver Eingriff bei progredienter Aortenwurzeldilatation (48mm) zur Prävention einer Aortendissektion




## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "mii-exa-seltene-therapieempfehlung-aortenwurzelersatz-marfan",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung-nicht-medikamentoes|2026.0.1"]
  },
  "status" : "active",
  "intent" : "proposal",
  "category" : [{
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-therapieempfehlung-strategie",
      "code" : "prophylactic",
      "display" : "Prophylaxe"
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
      "system" : "http://fhir.de/CodeSystem/bfarm/ops",
      "code" : "5-354.0a",
      "display" : "Andere Operationen an Herzklappen: Aortenklappe: Rekonstruktion der Aortenwurzel mit Implantation einer Gefäßprothese nach David"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "428179006",
      "display" : "Replacement of aortic root"
    }],
    "text" : "Composite-Graft-Implantation (David-OP)"
  },
  "subject" : {
    "reference" : "Patient/patient-marfan-001"
  },
  "occurrenceDateTime" : "2025-03-15",
  "authoredOn" : "2024-12-15",
  "reasonReference" : [{
    "reference" : "Condition/condition-marfan-clinical",
    "display" : "Progrediente Aortenwurzeldilatation bei Marfan-Syndrom"
  }],
  "note" : [{
    "text" : "Geplanter elektiver Eingriff bei progredienter Aortenwurzeldilatation (48mm) zur Prävention einer Aortendissektion"
  }]
}

```
