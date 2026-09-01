# MII VS SE ICF Generic Qualifier - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS SE ICF Generic Qualifier**

## ValueSet: MII VS SE ICF Generic Qualifier 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-icf-qualifier | *Version*:2027.0.0-ballot |
| Active as of 2026-09-01 | *Computable Name*:MII_VS_Seltene_ICFQualifier |

 
The full WHO generic qualifier scale (0-4, 8, 9) for grading an ICF category. 

 **References** 

* [MII PR SE ICF Assessment](StructureDefinition-mii-pr-seltene-icf-assessment.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-seltene-icf-qualifier",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-icf-qualifier",
  "version" : "2027.0.0-ballot",
  "name" : "MII_VS_Seltene_ICFQualifier",
  "title" : "MII VS SE ICF Generic Qualifier",
  "status" : "active",
  "experimental" : false,
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
  "description" : "The full WHO generic qualifier scale (0-4, 8, 9) for grading an ICF category.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-icf-qualifier"
    }]
  }
}

```
