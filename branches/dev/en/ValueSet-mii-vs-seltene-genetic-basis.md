# MII VS SE Genetic Basis - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2026.0.1

## ValueSet: MII VS SE Genetic Basis 

 
Value set for types of genetic basis of rare diseases 

 **References** 

* [MII EX SE Genetic Basis](StructureDefinition-mii-ex-seltene-genetic-basis.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-seltene-genetic-basis",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-genetic-basis",
  "version" : "2026.0.1",
  "name" : "GeneticBasisValueSet",
  "title" : "MII VS SE Genetic Basis",
  "status" : "active",
  "date" : "2026-07-23T10:39:42+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Value set for types of genetic basis of rare diseases",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "409709004",
        "display" : "Chromosomal disorder"
      },
      {
        "code" : "264530000",
        "display" : "Single gene disorder"
      },
      {
        "code" : "16402000",
        "display" : "Mitochondrial disorder"
      },
      {
        "code" : "268298002",
        "display" : "Polygenic disorder"
      },
      {
        "code" : "429962007",
        "display" : "Disorder due to copy number variation"
      },
      {
        "code" : "718211000119104",
        "display" : "Disorder due to trinucleotide repeat expansion"
      },
      {
        "code" : "416010008",
        "display" : "Disorder due to uniparental disomy"
      },
      {
        "code" : "429252008",
        "display" : "Disorder due to genomic imprinting"
      },
      {
        "code" : "363235000",
        "display" : "Multifactorial disorder"
      }]
    }]
  }
}

```
