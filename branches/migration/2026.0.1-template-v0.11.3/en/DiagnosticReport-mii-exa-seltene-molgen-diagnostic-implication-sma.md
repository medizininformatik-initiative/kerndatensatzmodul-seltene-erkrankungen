# SMA Diagnostische Implikation - MolGen - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SMA Diagnostische Implikation - MolGen**

## Example DiagnosticReport: SMA Diagnostische Implikation - MolGen

-------

**English**

-------

## Genetic analysis report (Laboratory) 

| | |
| :--- | :--- |
| Subject | Max Mustermann (official) Male, DoB: 1990-01-01 ( http://test-krankenhaus.de/fhir/sid/patienten#12345) |
| Relevant Time | 2024-07-26 |

**Report Details**

* **Code**: [Genetic variant assessment](Observation-mii-exa-seltene-molgen-variant-smn1-deletion.md)
  * **Value**: Positive
  * **Flags**: Final,Positive

Homozygote Deletion des SMN1-Gens nachgewiesen. Diagnose: Spinale Muskelatrophie. 2 Kopien des SMN2-Gens vorhanden, vereinbar mit schwerem Phänotyp (Typ 1).

**Coded Conclusions:**

* Spinal muscular atrophy, type I



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "mii-exa-seltene-molgen-diagnostic-implication-sma",
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
      "code" : "LAB",
      "display" : "Laboratory"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "51969-4",
      "display" : "Genetic analysis report"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-seltene-patient"
  },
  "effectiveDateTime" : "2024-07-26",
  "result" : [{
    "reference" : "Observation/mii-exa-seltene-molgen-variant-smn1-deletion"
  }],
  "conclusion" : "Homozygote Deletion des SMN1-Gens nachgewiesen. Diagnose: Spinale Muskelatrophie. 2 Kopien des SMN2-Gens vorhanden, vereinbar mit schwerem Phänotyp (Typ 1).",
  "conclusionCode" : [{
    "coding" : [{
      "system" : "http://omim.org",
      "code" : "253300",
      "display" : "Spinal muscular atrophy, type I"
    }]
  }]
}

```
