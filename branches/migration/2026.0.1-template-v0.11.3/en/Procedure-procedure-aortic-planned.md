# Geplante Aortenwurzelersatz-Operation - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Geplante Aortenwurzelersatz-Operation**

## Example Procedure: Geplante Aortenwurzelersatz-Operation

-------

**English**

-------

**status**: Preparation

**category**: Surgical procedure

**code**: Aortenwurzelersatz (David-Operation)

**subject**: [Anonymous Patient Male, DoB: 2005-01-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#MRF-2024-001)](Patient-patient-marfan-001.md)

**performed**: 2025-03-15 --> (ongoing)

**reasonReference**: [Condition Marfan syndrome](Condition-condition-marfan-clinical.md)

**note**: 

> 

Geplante klappensparende Aortenwurzelersatz-Operation nach David bei progredienter Aortenwurzeldilatation




## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "procedure-aortic-planned",
  "status" : "preparation",
  "category" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "387713003",
      "display" : "Surgical procedure"
    }]
  },
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
    "text" : "Aortenwurzelersatz (David-Operation)"
  },
  "subject" : {
    "reference" : "Patient/patient-marfan-001"
  },
  "performedPeriod" : {
    "start" : "2025-03-15"
  },
  "reasonReference" : [{
    "reference" : "Condition/condition-marfan-clinical"
  }],
  "note" : [{
    "text" : "Geplante klappensparende Aortenwurzelersatz-Operation nach David bei progredienter Aortenwurzeldilatation"
  }]
}

```
