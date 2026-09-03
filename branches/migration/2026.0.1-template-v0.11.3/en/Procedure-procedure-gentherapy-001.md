# Gentherapie Verabreichung - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Gentherapie Verabreichung**

## Example Procedure: Gentherapie Verabreichung

-------

**English**

-------

**status**: Completed

**category**: Therapeutic procedure

**code**: Gentherapie mit Onasemnogene abeparvovec (Zolgensma)

**subject**: [Anonymous Patient Female, DoB: 2024-07-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#SMA-2024-001)](Patient-patient-sma-001.md)

**performed**: 2024-07-29

**reasonReference**: [Condition Spinal muscular atrophy, type I](Condition-condition-sma-genetic.md)

**note**: 

> 

Gentherapeutikum ohne Komplikationen verabreicht, vorherige Gabe von Prednisolon




## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "procedure-gentherapy-001",
  "status" : "completed",
  "category" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "277132007",
      "display" : "Therapeutic procedure"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://fdasis.nlm.nih.gov",
      "code" : "MLU3LU3EVV",
      "display" : "ONASEMNOGENE ABEPARVOVEC"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "788110002",
      "display" : "Onasemnogene abeparvovec"
    }],
    "text" : "Gentherapie mit Onasemnogene abeparvovec (Zolgensma)"
  },
  "subject" : {
    "reference" : "Patient/patient-sma-001"
  },
  "performedDateTime" : "2024-07-29",
  "reasonReference" : [{
    "reference" : "Condition/condition-sma-genetic"
  }],
  "note" : [{
    "text" : "Gentherapeutikum ohne Komplikationen verabreicht, vorherige Gabe von Prednisolon"
  }]
}

```
