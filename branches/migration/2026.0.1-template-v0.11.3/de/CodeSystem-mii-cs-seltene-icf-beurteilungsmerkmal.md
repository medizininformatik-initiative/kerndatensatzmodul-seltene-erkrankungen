# MII CS SE ICF Qualifier Kind - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CS SE ICF Qualifier Kind**

## CodeSystem: MII CS SE ICF Qualifier Kind 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-icf-beurteilungsmerkmal | *Version*:2027.0.0-ballot |
| Active Stand: 2026-09-02 | *Maschinenlesbarer Name*:MII_CS_Seltene_ICFBeurteilungsmerkmal |

 
Names which ICF qualifier a component carries. This is a slot name, not a scale — the scales themselves are the seven BfArM code systems. Defined locally because neither the ICF nor BfArM publishes identifiers for the qualifier positions, and because capacity and performance share one scale and can only be told apart here. 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MII VS SE ICF Qualifier Kind](ValueSet-mii-vs-seltene-icf-beurteilungsmerkmal.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-seltene-icf-beurteilungsmerkmal",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-icf-beurteilungsmerkmal",
  "version" : "2027.0.0-ballot",
  "name" : "MII_CS_Seltene_ICFBeurteilungsmerkmal",
  "title" : "MII CS SE ICF Qualifier Kind",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-02T18:22:51+00:00",
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
  "description" : "Names which ICF qualifier a component carries. This is a slot name, not a scale — the scales themselves are the seven BfArM code systems. Defined locally because neither the ICF nor BfArM publishes identifiers for the qualifier positions, and because capacity and performance share one scale and can only be told apart here.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 8,
  "concept" : [{
    "code" : "extent-of-impairment",
    "display" : "Extent of impairment (body functions)",
    "definition" : "First and only qualifier of chapter b."
  },
  {
    "code" : "extent-of-impairment-structure",
    "display" : "Extent of impairment (body structures)",
    "definition" : "First qualifier of chapter s."
  },
  {
    "code" : "nature-of-change",
    "display" : "Nature of change (body structures)",
    "definition" : "Second qualifier of chapter s."
  },
  {
    "code" : "anatomical-location",
    "display" : "Anatomical location (body structures)",
    "definition" : "Third qualifier of chapter s; marked by the ICF as still under development."
  },
  {
    "code" : "capacity",
    "display" : "Capacity",
    "definition" : "What the person can do in a standardised environment, chapter d."
  },
  {
    "code" : "performance",
    "display" : "Performance",
    "definition" : "What the person actually does in their current environment, chapter d."
  },
  {
    "code" : "barrier",
    "display" : "Barrier",
    "definition" : "Extent to which an environmental factor hinders, chapter e."
  },
  {
    "code" : "facilitator",
    "display" : "Facilitator",
    "definition" : "Extent to which an environmental factor helps, chapter e."
  }]
}

```
