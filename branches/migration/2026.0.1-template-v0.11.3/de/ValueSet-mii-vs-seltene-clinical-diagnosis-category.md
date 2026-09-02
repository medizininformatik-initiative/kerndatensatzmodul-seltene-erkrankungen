# MII VS SE Clinical Diagnosis Category - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS SE Clinical Diagnosis Category**

## ValueSet: MII VS SE Clinical Diagnosis Category 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-clinical-diagnosis-category | *Version*:2027.0.0-ballot |
| Active Stand: 2026-09-02 | *Maschinenlesbarer Name*:ClinicalDiagnosisCategoryVS |

 
Value set for categorizing clinical diagnoses of rare diseases 

 **References** 

* [MII PR SE Clinical Diagnosis](StructureDefinition-mii-pr-seltene-clinical-diagnosis.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-seltene-clinical-diagnosis-category",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-clinical-diagnosis-category",
  "version" : "2027.0.0-ballot",
  "name" : "ClinicalDiagnosisCategoryVS",
  "title" : "MII VS SE Clinical Diagnosis Category",
  "status" : "active",
  "date" : "2026-09-02T17:07:58+00:00",
  "publisher" : "Medizininformatik Initiative",
  "_publisher" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "de"
      },
      {
        "url" : "content",
        "valueString" : "Medizininformatik Initiative"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Value set for categorizing clinical diagnoses of rare diseases",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "439401001",
        "display" : "Diagnosis"
      },
      {
        "code" : "404684003",
        "display" : "Clinical finding"
      },
      {
        "code" : "64572001",
        "display" : "Disease"
      },
      {
        "code" : "66091009",
        "display" : "Congenital disease"
      },
      {
        "code" : "609328004",
        "display" : "Allergic disposition"
      },
      {
        "code" : "85828009",
        "display" : "Autoimmune disease"
      }]
    }]
  }
}

```
