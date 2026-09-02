# MII VS SE Empfehlung Status Begründung - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS SE Empfehlung Status Begründung**

## ValueSet: MII VS SE Empfehlung Status Begründung 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-empfehlung-status-begruendung | *Version*:2027.0.0-ballot |
| Active as of 2026-09-02 | *Computable Name*:MII_VS_Seltene_Empfehlung_StatusBegruendung |

 
ValueSet für Begründung bei fehlender Empfehlung 

 **References** 

* [MII PR SE Therapieplan](StructureDefinition-mii-pr-seltene-therapieplan.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-seltene-empfehlung-status-begruendung",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-empfehlung-status-begruendung",
  "version" : "2027.0.0-ballot",
  "name" : "MII_VS_Seltene_Empfehlung_StatusBegruendung",
  "title" : "MII VS SE Empfehlung Status Begründung",
  "status" : "active",
  "date" : "2026-09-02T16:52:58+00:00",
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
  "description" : "ValueSet für Begründung bei fehlender Empfehlung",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-empfehlung-status-begruendung"
    }]
  }
}

```
