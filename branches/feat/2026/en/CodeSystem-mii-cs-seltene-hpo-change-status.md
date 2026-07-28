# MII CS Seltene Erkrankungen HPO Change Status - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2026.0.1

## CodeSystem: MII CS Seltene Erkrankungen HPO Change Status 

 
CodeSystem zur Dokumentation von Änderungen bei HPO-Phänotypen über Zeit 

This Code system is referenced in the definition of the following value sets:

* [MII_VS_Seltene_HPO_ChangeStatus](ValueSet-mii-vs-seltene-hpo-change-status.md)
* [MII_VS_Seltene_Symptom_ChangeStatus_Combined](ValueSet-mii-vs-seltene-symptom-change-status-combined.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-seltene-hpo-change-status",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-hpo-change-status",
  "version" : "2026.0.1",
  "name" : "MII_CS_Seltene_HPO_ChangeStatus",
  "title" : "MII CS Seltene Erkrankungen HPO Change Status",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-28T16:11:09+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "CodeSystem zur Dokumentation von Änderungen bei HPO-Phänotypen über Zeit",
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
