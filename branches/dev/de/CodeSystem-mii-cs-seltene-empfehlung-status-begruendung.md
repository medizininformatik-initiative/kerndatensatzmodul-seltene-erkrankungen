# MII CS SE Empfehlung Status Begründung - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CS SE Empfehlung Status Begründung**

## CodeSystem: MII CS SE Empfehlung Status Begründung 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-empfehlung-status-begruendung | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2026-09-04 | *Maschinenlesbarer Name*:MII_CS_Seltene_Empfehlung_StatusBegruendung |

 
Begründung bei fehlender Empfehlung 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MII VS SE Empfehlung Status Begründung](ValueSet-mii-vs-seltene-empfehlung-status-begruendung.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-seltene-empfehlung-status-begruendung",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-empfehlung-status-begruendung",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_CS_Seltene_Empfehlung_StatusBegruendung",
  "title" : "MII CS SE Empfehlung Status Begründung",
  "status" : "active",
  "date" : "2026-09-04T06:37:14+00:00",
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
  "description" : "Begründung bei fehlender Empfehlung",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "content" : "complete",
  "count" : 1,
  "concept" : [{
    "code" : "no-target",
    "display" : "Keine therapeutische Konsequenz",
    "definition" : "Keine therapeutische Konsequenz durch fehlende Empfehlung"
  }]
}

```
