# MII VS SE Genetic Basis - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS SE Genetic Basis**

## ValueSet: MII VS SE Genetic Basis 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-genetic-basis | *Version*:2027.0.0-ballot |
| Active as of 2026-09-01 | *Computable Name*:GeneticBasisValueSet |

 
Value set for types of genetic basis of rare diseases 

 **References** 

* [MII EX SE Genetic Basis](StructureDefinition-mii-ex-seltene-genetic-basis.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unsupported Code System Version)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-seltene-genetic-basis",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-genetic-basis",
  "version" : "2027.0.0-ballot",
  "name" : "GeneticBasisValueSet",
  "title" : "MII VS SE Genetic Basis",
  "status" : "active",
  "date" : "2026-09-01T21:34:57+00:00",
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
  "description" : "Value set for types of genetic basis of rare diseases",
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
