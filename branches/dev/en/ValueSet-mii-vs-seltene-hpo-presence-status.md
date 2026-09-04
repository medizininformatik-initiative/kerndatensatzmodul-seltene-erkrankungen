# HPO Phenotype Presence Status - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HPO Phenotype Presence Status**

## ValueSet: HPO Phenotype Presence Status 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-hpo-presence-status | *Version*:2027.0.0-ballot.rc1 |
| Active as of 2026-09-04 | *Computable Name*:MII_VS_Seltene_HPOPresenceStatus |
| **Copyright/Legal**: This value set includes content from LOINC which is copyrighted by Regenstrief Institute, Inc. | |

 
LOINC codes for indicating presence or absence of phenotypic features. Follows HL7 Phenomics IG pattern. 

 **References** 

* [MII Profile SE HPO Assessment](StructureDefinition-mii-pr-seltene-hpo-assessment.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-seltene-hpo-presence-status",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-hpo-presence-status",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_VS_Seltene_HPOPresenceStatus",
  "title" : "HPO Phenotype Presence Status",
  "status" : "active",
  "date" : "2026-09-04T07:02:52+00:00",
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
  "description" : "LOINC codes for indicating presence or absence of phenotypic features. Follows HL7 Phenomics IG pattern.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "copyright" : "This value set includes content from LOINC which is copyrighted by Regenstrief Institute, Inc.",
  "compose" : {
    "include" : [{
      "system" : "http://loinc.org",
      "concept" : [{
        "code" : "LA9633-4",
        "display" : "Present"
      },
      {
        "code" : "LA9634-2",
        "display" : "Absent"
      }]
    }]
  }
}

```
