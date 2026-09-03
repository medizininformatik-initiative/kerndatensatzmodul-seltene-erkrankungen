# Losartan Therapie - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Losartan Therapie**

## Example MedicationStatement: Losartan Therapie

-------

**English**

-------

**status**: Active

**medication**: Losartan 50mg

**subject**: [Anonymous Patient Male, DoB: 2005-01-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#MRF-2024-001)](Patient-patient-marfan-001.md)

**effective**: 2024-12-15

**reasonReference**: [Condition Marfan syndrome](Condition-condition-marfan-clinical.md)

**note**: 

> 

Zur Progressionshemmung der Aortenwurzeldilatation bei Marfan-Syndrom


> **dosage****text**: 50mg einmal täglich**timing**: Once per 1 day**route**: Oral route

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 50 mg (Details: UCUM codemg = 'mg') |




## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "medication-losartan",
  "status" : "active",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/atc",
      "code" : "C09CA01",
      "display" : "Losartan"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "373567002",
      "display" : "Losartan"
    }],
    "text" : "Losartan 50mg"
  },
  "subject" : {
    "reference" : "Patient/patient-marfan-001"
  },
  "effectiveDateTime" : "2024-12-15",
  "reasonReference" : [{
    "reference" : "Condition/condition-marfan-clinical"
  }],
  "note" : [{
    "text" : "Zur Progressionshemmung der Aortenwurzeldilatation bei Marfan-Syndrom"
  }],
  "dosage" : [{
    "text" : "50mg einmal täglich",
    "timing" : {
      "repeat" : {
        "frequency" : 1,
        "period" : 1,
        "periodUnit" : "d"
      }
    },
    "route" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "26643006",
        "display" : "Oral route"
      }]
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
