# MII VS SE Penetrance - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS SE Penetrance**

## ValueSet: MII VS SE Penetrance 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-penetrance | *Version*:2027.0.0-ballot |
| Active Stand: 2026-09-01 | *Maschinenlesbarer Name*:PenetranceValueSet |

 
Value set for qualitative descriptions of genetic penetrance 

 **References** 

* [MII EX SE Penetrance](StructureDefinition-mii-ex-seltene-penetrance.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-seltene-penetrance",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-penetrance",
  "version" : "2027.0.0-ballot",
  "name" : "PenetranceValueSet",
  "title" : "MII VS SE Penetrance",
  "status" : "active",
  "date" : "2026-09-01T21:00:36+00:00",
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
  "description" : "Value set for qualitative descriptions of genetic penetrance",
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
        "code" : "HP:0003829",
        "display" : "Incomplete penetrance"
      },
      {
        "code" : "HP:0003828",
        "display" : "Variable penetrance"
      },
      {
        "code" : "HP:0025169",
        "display" : "Complete penetrance"
      },
      {
        "code" : "HP:0003831",
        "display" : "Age-dependent penetrance"
      }]
    }]
  }
}

```
