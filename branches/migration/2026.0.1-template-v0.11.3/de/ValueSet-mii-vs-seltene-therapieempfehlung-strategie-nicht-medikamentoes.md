# MII VS SE Therapieempfehlung Strategie - Nicht-Medikamentös - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS SE Therapieempfehlung Strategie - Nicht-Medikamentös**

## ValueSet: MII VS SE Therapieempfehlung Strategie - Nicht-Medikamentös 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-therapieempfehlung-strategie-nicht-medikamentoes | *Version*:2027.0.0-ballot |
| Active Stand: 2026-08-28 | *Maschinenlesbarer Name*:MII_VS_Seltene_TherapieempfehlungStrategieNichtMedikamentoes |

 
ValueSet für nicht-medikamentöse Therapiestrategien (für ServiceRequest Profile) - Verwendet für ServiceRequest-basierte Therapieempfehlungen im Kontext Modellvorhaben GenomSeq 

 **References** 

* [MII PR SE Therapieempfehlung Nicht-Medikamentös](StructureDefinition-mii-pr-seltene-therapieempfehlung-nicht-medikamentoes.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-seltene-therapieempfehlung-strategie-nicht-medikamentoes",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-therapieempfehlung-strategie-nicht-medikamentoes",
  "version" : "2027.0.0-ballot",
  "name" : "MII_VS_Seltene_TherapieempfehlungStrategieNichtMedikamentoes",
  "title" : "MII VS SE Therapieempfehlung Strategie - Nicht-Medikamentös",
  "status" : "active",
  "date" : "2026-08-28T14:00:29+00:00",
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
  "description" : "ValueSet für nicht-medikamentöse Therapiestrategien (für ServiceRequest Profile) - Verwendet für ServiceRequest-basierte Therapieempfehlungen im Kontext Modellvorhaben GenomSeq",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-therapieempfehlung-strategie",
      "concept" : [{
        "code" : "prophylactic",
        "display" : "Prophylaxe"
      },
      {
        "code" : "early-detection",
        "display" : "Früherkennung"
      },
      {
        "code" : "nutrition",
        "display" : "Ernährungstherapie"
      },
      {
        "code" : "other",
        "display" : "Sonstige"
      }]
    }]
  }
}

```
