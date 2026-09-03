# MII VS SE Genetic Basis (retired) - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS SE Genetic Basis (retired)**

## ValueSet: MII VS SE Genetic Basis (retired) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-genetic-basis | *Version*:2027.0.0-ballot.rc1 |
| Retired as of 2026-09-03 | *Computable Name*:MII_VS_Seltene_GeneticBasis |

 
RETIRED. Nicht verwenden. Acht der neun enthaltenen SNOMED-Codes bezeichnen etwas anderes als ihr Display behauptet oder existieren nicht; das ValueSet muss neu erstellt werden. 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

Expansions are not generated for retired value sets

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-seltene-genetic-basis",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-genetic-basis",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_VS_Seltene_GeneticBasis",
  "title" : "MII VS SE Genetic Basis (retired)",
  "status" : "retired",
  "date" : "2026-09-03T09:44:41+00:00",
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
  "description" : "RETIRED. Nicht verwenden. Acht der neun enthaltenen SNOMED-Codes bezeichnen etwas anderes als ihr Display behauptet oder existieren nicht; das ValueSet muss neu erstellt werden.",
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
