# Syndrome Category Value Set - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Syndrome Category Value Set**

## ValueSet: Syndrome Category Value Set 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-syndrome-category | *Version*:2027.0.0-ballot.rc1 |
| Active as of 2026-09-03 | *Computable Name*:SyndromeCategoryVS |

 
Categories for classifying syndrome types in rare diseases 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-seltene-syndrome-category",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-syndrome-category",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "SyndromeCategoryVS",
  "title" : "Syndrome Category Value Set",
  "status" : "active",
  "date" : "2026-09-03T07:17:59+00:00",
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
        "display" : "Hereditary disease"
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
        "code" : "5294002",
        "display" : "Developmental disorder"
      },
      {
        "code" : "362975008",
        "display" : "Degenerative disorder"
      }]
    }]
  }
}

```
