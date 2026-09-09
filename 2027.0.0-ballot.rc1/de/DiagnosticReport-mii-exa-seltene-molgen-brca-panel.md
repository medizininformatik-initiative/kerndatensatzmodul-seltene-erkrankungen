# BRCA1/2 Panel - Diagnostische Implikation - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **BRCA1/2 Panel - Diagnostische Implikation**

## Beispiel DiagnosticReport: BRCA1/2 Panel - Diagnostische Implikation

-------

**German**

-------

## Master HL7 genetic variant reporting panel (Laboratory) 

| | |
| :--- | :--- |
| Subject | Max Mustermann (official) Male, DoB: 1990-01-01 ( http://test-krankenhaus.de/fhir/sid/patienten#12345) |
| Relevant Time | 2024-11-01 |

**Report Details**

* **Code**: [Genetic variant assessment](Observation-mii-exa-seltene-molgen-variant-brca1-pathogenic.md)
  * **Value**: Positive
  * **Flags**: Final

Pathogene Variante c.68_69del (p.Glu23Valfs*17) in BRCA1 nachgewiesen. Diese Frameshift-Mutation führt zu einem vorzeitigen Stopcodon. Erhöhtes Risiko für Mamma- und Ovarialkarzinom. Lebenszeitrisiko Mammakarzinom: 60-72%, Ovarialkarzinom: 40-44%.

**Coded Conclusions:**

* Breast-ovarian cancer, familial, 1



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "mii-exa-seltene-molgen-brca-panel",
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
      "code" : "81247-9",
      "display" : "Master HL7 genetic variant reporting panel"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-seltene-patient"
  },
  "effectiveDateTime" : "2024-11-01",
  "result" : [{
    "reference" : "Observation/mii-exa-seltene-molgen-variant-brca1-pathogenic"
  }],
  "conclusion" : "Pathogene Variante c.68_69del (p.Glu23Valfs*17) in BRCA1 nachgewiesen. Diese Frameshift-Mutation führt zu einem vorzeitigen Stopcodon. Erhöhtes Risiko für Mamma- und Ovarialkarzinom. Lebenszeitrisiko Mammakarzinom: 60-72%, Ovarialkarzinom: 40-44%.",
  "conclusionCode" : [{
    "coding" : [{
      "system" : "http://omim.org",
      "code" : "604370",
      "display" : "Breast-ovarian cancer, familial, 1"
    }]
  }]
}

```
