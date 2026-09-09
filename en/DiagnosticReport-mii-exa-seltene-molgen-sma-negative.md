# SMA Genetik - Negativbefund - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SMA Genetik - Negativbefund**

## Example DiagnosticReport: SMA Genetik - Negativbefund

-------

**English**

-------

## Genetic analysis report (Laboratory) 

| | |
| :--- | :--- |
| Subject | Max Mustermann (official) Male, DoB: 1990-01-01 ( http://test-krankenhaus.de/fhir/sid/patienten#12345) |
| Relevant Time | 2024-07-26 |

**Report Details**

* **Code**: [Genetic variant assessment](Observation-mii-exa-seltene-molgen-smn1-normal-copies.md)
  * **Value**: Normal result
  * **Flags**: Final,Normal
  * **Note**: > Normale Kopienanzahl des SMN1-Gens. SMA ausgeschlossen.

SMN1-Gen: 2 Kopien (Normalbefund). SMN2-Gen: 2 Kopien. Spinale Muskelatrophie ausgeschlossen.

**Coded Conclusions:**

* Normal result



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "mii-exa-seltene-molgen-sma-negative",
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
    "reference" : "Observation/mii-exa-seltene-molgen-smn1-normal-copies"
  }],
  "conclusion" : "SMN1-Gen: 2 Kopien (Normalbefund). SMN2-Gen: 2 Kopien. Spinale Muskelatrophie ausgeschlossen.",
  "conclusionCode" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "280413001",
      "display" : "Normal result"
    }]
  }]
}

```
