# MII VS SE Clinical Diagnosis Category (retired) - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS SE Clinical Diagnosis Category (retired)**

## ValueSet: MII VS SE Clinical Diagnosis Category (retired) 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-clinical-diagnosis-category | *Version*:2027.0.0-ballot |
| Retired Stand: 2026-09-02 | *Maschinenlesbarer Name*:ClinicalDiagnosisCategoryVS |

 
RETIRED. Nicht verwenden. Das ValueSet war zur Kategorisierung klinischer Diagnosen gedacht, beantwortet aber die falsche Frage: Condition.category bezeichnet in FHIR die Rolle der Condition im Datensatz, nicht die Art der Krankheit. Die Krankheitsart gehoert in Condition.code. 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

Expansions are not generated for retired value sets

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
  "title" : "MII VS SE Clinical Diagnosis Category (retired)",
  "status" : "retired",
  "date" : "2026-09-02T17:52:03+00:00",
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
  "description" : "RETIRED. Nicht verwenden. Das ValueSet war zur Kategorisierung klinischer Diagnosen gedacht, beantwortet aber die falsche Frage: Condition.category bezeichnet in FHIR die Rolle der Condition im Datensatz, nicht die Art der Krankheit. Die Krankheitsart gehoert in Condition.code.",
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
