# MII VS SE HPO Age of Onset - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2026.0.1

## ValueSet: MII VS SE HPO Age of Onset 

 
Value set containing HPO terms for age of onset of diseases 

 **References** 

* [MII EX SE Age of Onset](StructureDefinition-mii-ex-seltene-age-of-onset.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-seltene-hpo-age-of-onset",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-hpo-age-of-onset",
  "version" : "2026.0.1",
  "name" : "HPOAgeOfOnsetValueSet",
  "title" : "MII VS SE HPO Age of Onset",
  "status" : "active",
  "date" : "2026-07-28T16:26:31+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Value set containing HPO terms for age of onset of diseases",
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
