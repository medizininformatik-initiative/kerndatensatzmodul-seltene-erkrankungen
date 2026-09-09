# DMD Exon 45 - Diagnostische Implikation (Duchenne) - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **DMD Exon 45 - Diagnostische Implikation (Duchenne)**

## Beispiel DiagnosticReport: DMD Exon 45 - Diagnostische Implikation (Duchenne)

-------

**German**

-------

## Genetic analysis report (Laboratory) 

| | |
| :--- | :--- |
| Subject | Max Mustermann (official) Male, DoB: 1990-01-01 ( http://test-krankenhaus.de/fhir/sid/patienten#12345) |
| Relevant Time | 2024-09-15 |

**Report Details**

* **Code**: [Genetic variant assessment](Observation-mii-exa-seltene-molgen-variant-dmd-deletion-exon45.md)
  * **Value**: Positive
  * **Flags**: Final
  * **Note**: > Deletion des Exons 45 (176 Basen, nicht durch drei teilbar). Das Leseraster verschiebt sich, es entsteht ein vorzeitiges Stopcodon und kein funktionsfaehiges Dystrophin. Duchenne-Muskeldystrophie.

Out-of-frame Deletion des Exons 45 im DMD-Gen. Leserasterverschiebung mit vorzeitigem Stopcodon und komplettem Verlust des funktionsfaehigen Dystrophins. Diagnose: Duchenne-Muskeldystrophie.

**Coded Conclusions:**

* Duchenne muscular dystrophy



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "mii-exa-seltene-molgen-diagnostic-dmd-duchenne",
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
    "reference" : "Observation/mii-exa-seltene-molgen-variant-dmd-deletion-exon45"
  }],
  "conclusion" : "Out-of-frame Deletion des Exons 45 im DMD-Gen. Leserasterverschiebung mit vorzeitigem Stopcodon und komplettem Verlust des funktionsfaehigen Dystrophins. Diagnose: Duchenne-Muskeldystrophie.",
  "conclusionCode" : [{
    "coding" : [{
      "system" : "http://omim.org",
      "code" : "310200",
      "display" : "Duchenne muscular dystrophy"
    }]
  }]
}

```
