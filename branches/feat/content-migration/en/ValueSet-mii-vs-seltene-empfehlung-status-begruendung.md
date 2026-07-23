# MII VS SE Empfehlung Status Begründung - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2026.0.1

## ValueSet: MII VS SE Empfehlung Status Begründung 

 
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
  "version" : "2026.0.1",
  "name" : "MII_VS_Seltene_Empfehlung_StatusBegruendung",
  "title" : "MII VS SE Empfehlung Status Begründung",
  "status" : "active",
  "date" : "2026-07-23T11:05:37+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "ValueSet für Begründung bei fehlender Empfehlung",
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-empfehlung-status-begruendung"
    }]
  }
}

```
