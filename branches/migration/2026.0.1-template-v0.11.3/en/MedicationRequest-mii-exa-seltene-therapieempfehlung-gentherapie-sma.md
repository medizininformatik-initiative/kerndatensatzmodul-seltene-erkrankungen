# Beispiel Gentherapie bei SMA - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Gentherapie bei SMA**

## Example MedicationRequest: Beispiel Gentherapie bei SMA

-------

**English**

-------

Profile: [MII PR SE Therapieempfehlung Systemische Therapie](StructureDefinition-mii-pr-seltene-therapieempfehlung.md) version: 2027.0.0-ballot.rc1

**status**: Active

**intent**: Proposal

**category**: Gentherapie, Kausal

**medication**: Zolgensma

**subject**: [Anonymous Patient Female, DoB: 2024-07-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#SMA-2024-001)](Patient-patient-sma-001.md)

**reasonReference**: [Spinale Muskelatrophie Typ 1](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=http://fhir.org/packages/de.basisprofil.r4/Condition/sma-diagnosis)

**note**: 

> 

Einmalige intravenöse Infusion der Gentherapie




## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "mii-exa-seltene-therapieempfehlung-gentherapie-sma",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung|2027.0.0-ballot.rc1"]
  },
  "status" : "active",
  "intent" : "proposal",
  "category" : [{
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-therapieempfehlung-strategie",
      "code" : "gene-therapy",
      "display" : "Gentherapie"
    }]
  },
  {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-therapieempfehlung-typ",
      "code" : "causal",
      "display" : "Kausal"
    }]
  }],
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://fdasis.nlm.nih.gov",
      "code" : "MLU3LU3EVV",
      "display" : "ONASEMNOGENE ABEPARVOVEC"
    }],
    "text" : "Zolgensma"
  },
  "subject" : {
    "reference" : "Patient/patient-sma-001"
  },
  "reasonReference" : [{
    "reference" : "Condition/sma-diagnosis",
    "display" : "Spinale Muskelatrophie Typ 1"
  }],
  "note" : [{
    "text" : "Einmalige intravenöse Infusion der Gentherapie"
  }]
}

```
