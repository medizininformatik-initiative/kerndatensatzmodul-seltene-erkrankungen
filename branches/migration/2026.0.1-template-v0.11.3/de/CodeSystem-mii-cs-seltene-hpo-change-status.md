# MII CS Seltene Erkrankungen HPO Change Status - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CS Seltene Erkrankungen HPO Change Status**

## CodeSystem: MII CS Seltene Erkrankungen HPO Change Status 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-hpo-change-status | *Version*:2027.0.0-ballot |
| Active Stand: 2026-08-28 | *Maschinenlesbarer Name*:MII_CS_Seltene_HPO_ChangeStatus |

 
CodeSystem zur Dokumentation von Änderungen bei HPO-Phänotypen über Zeit 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MII VS Seltene Erkrankungen HPO Change Status](ValueSet-mii-vs-seltene-hpo-change-status.md)
* [MII VS Seltene Erkrankungen Symptom Change Status (Combined)](ValueSet-mii-vs-seltene-symptom-change-status-combined.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-seltene-hpo-change-status",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-hpo-change-status",
  "version" : "2027.0.0-ballot",
  "name" : "MII_CS_Seltene_HPO_ChangeStatus",
  "title" : "MII CS Seltene Erkrankungen HPO Change Status",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-28T13:49:20+00:00",
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
  "description" : "CodeSystem zur Dokumentation von Änderungen bei HPO-Phänotypen über Zeit",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "newly-added",
    "display" : "Neu hinzugefügt",
    "definition" : "Phänotyp wurde neu beobachtet/diagnostiziert"
  },
  {
    "code" : "improved",
    "display" : "Verbessert",
    "definition" : "Phänotyp hat sich verbessert"
  },
  {
    "code" : "degraded",
    "display" : "Verschlechtert",
    "definition" : "Phänotyp hat sich verschlechtert"
  },
  {
    "code" : "no-longer-observed",
    "display" : "Nicht mehr beobachtet",
    "definition" : "Phänotyp wird nicht mehr beobachtet/ist verschwunden"
  },
  {
    "code" : "unchanged",
    "display" : "Unverändert",
    "definition" : "Phänotyp ist unverändert geblieben"
  }]
}

```
