# Beispiel Losartan bei Marfan-Syndrom - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Beispiel Losartan bei Marfan-Syndrom**

## Beispiel MedicationRequest: Beispiel Losartan bei Marfan-Syndrom

-------

**German**

-------

Profile: [MII PR SE Therapieempfehlung Systemische Therapie](StructureDefinition-mii-pr-seltene-therapieempfehlung.md) version: 2027.0.0-ballot.rc1

**status**: Active

**intent**: Proposal

**category**: Präventive Medikation, Symptomatisch

**medication**: Losartan

**subject**: [Anonymous Patient Male, DoB: 2005-01-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#MRF-2024-001)](Patient-mii-exa-seltene-patient-marfan-001.md)

**reasonReference**: [Marfan-Syndrom mit Aortenwurzeldilatation](Condition-mii-exa-seltene-condition-marfan-clinical.md)

> **dosageInstruction****text**: 50mg 1x täglich**timing**: Once per 1 day

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 50 mg (Details: UCUM codemg = 'mg') |




## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "mii-exa-seltene-therapieempfehlung-losartan-marfan",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung|2027.0.0-ballot.rc1"]
  },
  "status" : "active",
  "intent" : "proposal",
  "category" : [{
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-therapieempfehlung-strategie",
      "code" : "prevention-medication",
      "display" : "Präventive Medikation"
    }]
  },
  {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-therapieempfehlung-typ",
      "code" : "symptomatic",
      "display" : "Symptomatisch"
    }]
  }],
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/atc",
      "code" : "C09CA01",
      "display" : "Losartan"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-seltene-patient-marfan-001"
  },
  "reasonReference" : [{
    "reference" : "Condition/mii-exa-seltene-condition-marfan-clinical",
    "display" : "Marfan-Syndrom mit Aortenwurzeldilatation"
  }],
  "dosageInstruction" : [{
    "text" : "50mg 1x täglich",
    "timing" : {
      "repeat" : {
        "frequency" : 1,
        "period" : 1,
        "periodUnit" : "d"
      }
    },
    "doseAndRate" : [{
      "doseQuantity" : {
        "value" : 50,
        "unit" : "mg",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      }
    }]
  }]
}

```
