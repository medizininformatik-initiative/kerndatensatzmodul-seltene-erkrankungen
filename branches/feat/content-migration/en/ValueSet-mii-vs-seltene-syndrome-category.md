# Syndrome Category Value Set - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2026.0.1

## ValueSet: Syndrome Category Value Set 

 
Categories for classifying syndrome types in rare diseases 

 **References** 

* [Syndrome Category Extension](StructureDefinition-mii-ext-seltene-syndrome-category.md)

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
  "version" : "2026.0.1",
  "name" : "SyndromeCategoryVS",
  "title" : "Syndrome Category Value Set",
  "status" : "active",
  "date" : "2026-07-23T11:05:37+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Categories for classifying syndrome types in rare diseases",
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
