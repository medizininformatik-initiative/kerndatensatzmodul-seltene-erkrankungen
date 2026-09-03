# CF Diagnostische Implikation - MolGen - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CF Diagnostische Implikation - MolGen**

## Example DiagnosticReport: CF Diagnostische Implikation - MolGen

-------

**English**

-------

## Genetic analysis report (Laboratory) 

| | |
| :--- | :--- |
| Subject | Max Mustermann (official) Male, DoB: 1990-01-01 ( http://test-krankenhaus.de/fhir/sid/patienten#12345) |
| Relevant Time | 2024-08-25 |

**Report Details**

* **Code**: [Genetic variant assessment](Observation-molgen-variant-cftr-f508del-homozygous.md)
  * **Value**: Positive
  * **Flags**: Final

Homozygot für die F508del-Mutation (p.Phe508del, c.1521_1523delCTT) im CFTR-Gen. Dies ist die häufigste CF-verursachende Mutation. Bei Homozygotie ist mit einem klassischen, schweren CF-Phänotyp zu rechnen.

**Coded Conclusions:**

* Cystic fibrosis



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "molgen-cf-diagnostic",
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
  "effectiveDateTime" : "2024-08-25",
  "result" : [{
    "reference" : "Observation/molgen-variant-cftr-f508del-homozygous"
  }],
  "conclusion" : "Homozygot für die F508del-Mutation (p.Phe508del, c.1521_1523delCTT) im CFTR-Gen. Dies ist die häufigste CF-verursachende Mutation. Bei Homozygotie ist mit einem klassischen, schweren CF-Phänotyp zu rechnen.",
  "conclusionCode" : [{
    "coding" : [{
      "system" : "http://omim.org",
      "code" : "219700",
      "display" : "Cystic fibrosis"
    }]
  }]
}

```
