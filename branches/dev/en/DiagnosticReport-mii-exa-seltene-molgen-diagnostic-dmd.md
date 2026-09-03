# DMD Exon 45-47 - Diagnostische Implikation (Becker) - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DMD Exon 45-47 - Diagnostische Implikation (Becker)**

## Example DiagnosticReport: DMD Exon 45-47 - Diagnostische Implikation (Becker)

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

In-frame Deletion der Exons 45-47 im DMD-Gen (c.6439-?_6912+?del, 474 Basen — durch drei teilbar, das Leseraster bleibt erhalten). Es entsteht ein verkürztes, aber teilfunktionsfähiges Dystrophin. Vereinbar mit Becker-Muskeldystrophie; Duchenne-Muskeldystrophie ist damit ausgeschlossen.

**Coded Conclusions:**

* Becker muscular dystrophy



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
  "conclusion" : "In-frame Deletion der Exons 45-47 im DMD-Gen (c.6439-?_6912+?del, 474 Basen — durch drei teilbar, das Leseraster bleibt erhalten). Es entsteht ein verkürztes, aber teilfunktionsfähiges Dystrophin. Vereinbar mit Becker-Muskeldystrophie; Duchenne-Muskeldystrophie ist damit ausgeschlossen.",
  "conclusionCode" : [{
    "coding" : [{
      "system" : "http://omim.org",
      "code" : "300376",
      "display" : "Becker muscular dystrophy"
    }]
  }]
}

```
