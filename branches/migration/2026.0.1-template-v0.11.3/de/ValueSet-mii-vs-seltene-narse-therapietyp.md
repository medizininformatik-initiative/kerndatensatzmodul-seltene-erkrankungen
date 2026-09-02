# MII VS Seltene Erkrankungen NARSE Therapietyp - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Seltene Erkrankungen NARSE Therapietyp**

## ValueSet: MII VS Seltene Erkrankungen NARSE Therapietyp 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-narse-therapietyp | *Version*:2027.0.0-ballot |
| Active Stand: 2026-09-02 | *Maschinenlesbarer Name*:MII_VS_Seltene_NARSE_Therapietyp |

 
ValueSet für NARSE-spezifische Therapietypen bei Seltenen Erkrankungen 

 **References** 

* [MII PR Seltene Erkrankungen Therapie Durchgeführt](StructureDefinition-mii-pr-seltene-therapie-durchgefuehrt.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-seltene-narse-therapietyp",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-narse-therapietyp",
  "version" : "2027.0.0-ballot",
  "name" : "MII_VS_Seltene_NARSE_Therapietyp",
  "title" : "MII VS Seltene Erkrankungen NARSE Therapietyp",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-02T06:41:45+00:00",
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
  "description" : "ValueSet für NARSE-spezifische Therapietypen bei Seltenen Erkrankungen",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-narse-therapietyp"
    }]
  }
}

```
