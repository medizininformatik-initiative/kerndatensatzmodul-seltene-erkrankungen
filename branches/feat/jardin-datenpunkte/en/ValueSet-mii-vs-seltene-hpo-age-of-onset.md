# MII VS SE HPO Age of Onset - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS SE HPO Age of Onset**

## ValueSet: MII VS SE HPO Age of Onset 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-hpo-age-of-onset | *Version*:2027.0.0-ballot |
| Active as of 2026-09-01 | *Computable Name*:HPOAgeOfOnsetValueSet |

 
Value set containing HPO terms for age of onset of diseases 

 **References** 

* [MII EX SE Age of Onset](StructureDefinition-mii-ex-seltene-age-of-onset.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-seltene-hpo-age-of-onset",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-hpo-age-of-onset",
  "version" : "2027.0.0-ballot",
  "name" : "HPOAgeOfOnsetValueSet",
  "title" : "MII VS SE HPO Age of Onset",
  "status" : "active",
  "date" : "2026-09-01T19:54:19+00:00",
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
        "code" : "HP:0003577",
        "display" : "Congenital onset"
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
        "code" : "HP:0003581",
        "display" : "Adult onset"
      },
      {
        "code" : "HP:0003584",
        "display" : "Late onset"
      },
      {
        "code" : "HP:0011462",
        "display" : "Young adult onset"
      },
      {
        "code" : "HP:0025708",
        "display" : "Middle age onset"
      },
      {
        "code" : "HP:0003596",
        "display" : "Neonatal onset"
      },
      {
        "code" : "HP:0034198",
        "display" : "Fetal onset"
      },
      {
        "code" : "HP:0034199",
        "display" : "Embryonal onset"
      }]
    }]
  }
}

```
