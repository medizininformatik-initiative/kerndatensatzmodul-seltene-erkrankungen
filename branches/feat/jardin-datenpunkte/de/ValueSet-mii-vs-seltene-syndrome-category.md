# Syndrome Category Value Set - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Syndrome Category Value Set**

## ValueSet: Syndrome Category Value Set 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-syndrome-category | *Version*:2027.0.0-ballot |
| Active Stand: 2026-09-02 | *Maschinenlesbarer Name*:SyndromeCategoryVS |

 
Categories for classifying syndrome types in rare diseases 

 **References** 

* [Syndrome Category Extension](StructureDefinition-mii-ext-seltene-syndrome-category.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unsupported Code System Version)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-seltene-syndrome-category",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-syndrome-category",
  "version" : "2027.0.0-ballot",
  "name" : "SyndromeCategoryVS",
  "title" : "Syndrome Category Value Set",
  "status" : "active",
  "date" : "2026-09-02T02:52:32+00:00",
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
  "description" : "Categories for classifying syndrome types in rare diseases",
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
        "code" : "32895009",
        "display" : "Genetic disorder"
      },
      {
        "code" : "75934005",
        "display" : "Metabolic disease"
      },
      {
        "code" : "128139000",
        "display" : "Inflammatory disorder"
      },
      {
        "code" : "276654001",
        "display" : "Congenital malformation"
      },
      {
        "code" : "371097004",
        "display" : "Developmental disorder"
      },
      {
        "code" : "254829008",
        "display" : "Degenerative disorder"
      }]
    }]
  }
}

```
