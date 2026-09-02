# Von SE betroffen Value Set - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Von SE betroffen Value Set**

## ValueSet: Von SE betroffen Value Set 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/von-seltene-betroffen-vs | *Version*:2027.0.0-ballot |
| Active Stand: 2026-09-02 | *Maschinenlesbarer Name*:VonSEBetroffenVS |

 
ValueSet zur Angabe ob ein Familienmitglied an der gleichen SE erkrankt ist. Verwendet SNOMED CT codes für internationale Interoperabilität. 

 **References** 

* [VonSEBetroffen](StructureDefinition-von-seltene-betroffen.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "von-seltene-betroffen-vs",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/von-seltene-betroffen-vs",
  "version" : "2027.0.0-ballot",
  "name" : "VonSEBetroffenVS",
  "title" : "Von SE betroffen Value Set",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-02T06:59:28+00:00",
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
  "description" : "ValueSet zur Angabe ob ein Familienmitglied an der gleichen SE erkrankt ist. Verwendet SNOMED CT codes für internationale Interoperabilität.",
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
        "code" : "373066001",
        "display" : "Yes"
      },
      {
        "code" : "373067005",
        "display" : "No"
      },
      {
        "code" : "261665006",
        "display" : "Unknown"
      }]
    },
    {
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
      "concept" : [{
        "code" : "Y",
        "display" : "Yes"
      },
      {
        "code" : "N",
        "display" : "No"
      },
      {
        "code" : "ASKU",
        "display" : "asked but unknown"
      }]
    }]
  }
}

```
