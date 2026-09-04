# MII VS SE HPO Age of Onset - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS SE HPO Age of Onset**

## ValueSet: MII VS SE HPO Age of Onset 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-hpo-age-of-onset | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2026-09-04 | *Maschinenlesbarer Name*:MII_VS_Seltene_HPOAgeOfOnset |

 
Value set containing HPO terms for age of onset of diseases 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-seltene-hpo-age-of-onset",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-hpo-age-of-onset",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_VS_Seltene_HPOAgeOfOnset",
  "title" : "MII VS SE HPO Age of Onset",
  "status" : "active",
  "date" : "2026-09-04T12:44:12+00:00",
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
  "description" : "Value set containing HPO terms for age of onset of diseases",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://human-phenotype-ontology.org",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "HP:0003674"
      }]
    },
    {
      "system" : "http://human-phenotype-ontology.org",
      "concept" : [{
        "code" : "HP:0011460",
        "display" : "Embryonal onset"
      },
      {
        "code" : "HP:0011461",
        "display" : "Fetal onset"
      },
      {
        "code" : "HP:0003577",
        "display" : "Congenital onset"
      },
      {
        "code" : "HP:0003623",
        "display" : "Neonatal onset"
      },
      {
        "code" : "HP:0003593",
        "display" : "Infantile onset"
      },
      {
        "code" : "HP:0011463",
        "display" : "Childhood onset"
      },
      {
        "code" : "HP:0003621",
        "display" : "Juvenile onset"
      },
      {
        "code" : "HP:0011462",
        "display" : "Young adult onset"
      },
      {
        "code" : "HP:0025708",
        "display" : "Early young adult onset"
      },
      {
        "code" : "HP:0003581",
        "display" : "Adult onset"
      },
      {
        "code" : "HP:0003596",
        "display" : "Middle age onset"
      },
      {
        "code" : "HP:0003584",
        "display" : "Late onset"
      }]
    }]
  }
}

```
