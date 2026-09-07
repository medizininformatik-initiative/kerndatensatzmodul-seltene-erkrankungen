# Muskelbiopsie - Normalbefund - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Muskelbiopsie - Normalbefund**

## Beispiel DiagnosticReport: Muskelbiopsie - Normalbefund

-------

**German**

-------

## Comprehensive pathology report panel (Laboratory) 

| | |
| :--- | :--- |
| Subject | Max Mustermann (official) Male, DoB: 1990-01-01 ( http://test-krankenhaus.de/fhir/sid/patienten#12345) |
| Relevant Time | 2024-10-01 |

**Report Details**

Regelrechte Faserstruktur, keine ragged-red fibers, Atmungskettenenzyme unauffaellig. Kein Hinweis auf mitochondriale Pathologie.

**Coded Conclusions:**

* Normal



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "mii-exa-seltene-muscle-biopsy-normal",
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
      "code" : "60567-5",
      "display" : "Comprehensive pathology report panel"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-seltene-patient"
  },
  "effectiveDateTime" : "2024-10-01",
  "conclusion" : "Regelrechte Faserstruktur, keine ragged-red fibers, Atmungskettenenzyme unauffaellig. Kein Hinweis auf mitochondriale Pathologie.",
  "conclusionCode" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "17621005",
      "display" : "Normal"
    }]
  }]
}

```
