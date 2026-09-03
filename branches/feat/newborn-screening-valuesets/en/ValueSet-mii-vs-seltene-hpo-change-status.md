# MII VS Seltene Erkrankungen HPO Change Status - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Seltene Erkrankungen HPO Change Status**

## ValueSet: MII VS Seltene Erkrankungen HPO Change Status 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-hpo-change-status | *Version*:2027.0.0-ballot |
| Active as of 2026-09-03 | *Computable Name*:MII_VS_Seltene_HPO_ChangeStatus |

 
ValueSet für Änderungsstatus von HPO-Phänotypen gemäß Modellvorhaben Genomsequenzierung 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-seltene-hpo-change-status",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-hpo-change-status",
  "version" : "2027.0.0-ballot",
  "name" : "MII_VS_Seltene_HPO_ChangeStatus",
  "title" : "MII VS Seltene Erkrankungen HPO Change Status",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-03T06:42:09+00:00",
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
  "description" : "ValueSet für Änderungsstatus von HPO-Phänotypen gemäß Modellvorhaben Genomsequenzierung",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-hpo-change-status"
    }]
  }
}

```
