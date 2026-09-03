# MII VS SE Penetrance - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS SE Penetrance**

## ValueSet: MII VS SE Penetrance 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-penetrance | *Version*:2027.0.0-ballot.rc1 |
| Active as of 2026-09-03 | *Computable Name*:MII_VS_Seltene_Penetrance |

 
Value set for qualitative descriptions of genetic penetrance, drawn from the HPO branch Inheritance qualifier (HP:0034335). Note that the graded terms (high/moderate/low penetrance) are subtypes of incomplete penetrance, not alternatives to complete penetrance. 

 **References** 

* [MII EX SE Penetrance](StructureDefinition-mii-ex-seltene-penetrance.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-seltene-penetrance",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-penetrance",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_VS_Seltene_Penetrance",
  "title" : "MII VS SE Penetrance",
  "status" : "active",
  "date" : "2026-09-03T17:01:55+00:00",
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
  "description" : "Value set for qualitative descriptions of genetic penetrance, drawn from the HPO branch Inheritance qualifier (HP:0034335). Note that the graded terms (high/moderate/low penetrance) are subtypes of incomplete penetrance, not alternatives to complete penetrance.",
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
      "concept" : [{
        "code" : "HP:0034950",
        "display" : "Typified by complete penetrance"
      },
      {
        "code" : "HP:0003829",
        "display" : "Typified by incomplete penetrance"
      },
      {
        "code" : "HP:4000158",
        "display" : "Typified by high penetrance"
      },
      {
        "code" : "HP:4000159",
        "display" : "Typified by moderate penetrance"
      },
      {
        "code" : "HP:4000160",
        "display" : "Typified by low penetrance"
      },
      {
        "code" : "HP:0003831",
        "display" : "Typified by age-related disease onset"
      }]
    }]
  }
}

```
