# DMD Diagnostische Implikation - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DMD Diagnostische Implikation**

## Example DiagnosticReport: DMD Diagnostische Implikation

-------

**English**

-------

## Genetic analysis report (Laboratory) 

| | |
| :--- | :--- |
| Subject | Max Mustermann (official) Male, DoB: 1990-01-01 ( http://test-krankenhaus.de/fhir/sid/patienten#12345) |
| Relevant Time | 2024-09-15 |

**Report Details**

* **Code**: [Genetic variant assessment](Observation-mii-exa-seltene-molgen-variant-dmd-deletion-exon45-47.md)
  * **Value**: Positive
  * **Flags**: Final

Out-of-frame Deletion der Exons 45-47 im DMD-Gen. Diese Mutation führt zu einem vorzeitigen Stopcodon und komplettem Verlust des funktionsfähigen Dystrophin-Proteins. Diagnose: Duchenne-Muskeldystrophie.

**Coded Conclusions:**

* Duchenne muscular dystrophy



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "mii-exa-seltene-molgen-diagnostic-dmd",
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
  "effectiveDateTime" : "2024-09-15",
  "result" : [{
    "reference" : "Observation/mii-exa-seltene-molgen-variant-dmd-deletion-exon45-47"
  }],
  "conclusion" : "Out-of-frame Deletion der Exons 45-47 im DMD-Gen. Diese Mutation führt zu einem vorzeitigen Stopcodon und komplettem Verlust des funktionsfähigen Dystrophin-Proteins. Diagnose: Duchenne-Muskeldystrophie.",
  "conclusionCode" : [{
    "coding" : [{
      "system" : "http://omim.org",
      "code" : "310200",
      "display" : "Duchenne muscular dystrophy"
    }]
  }]
}

```
