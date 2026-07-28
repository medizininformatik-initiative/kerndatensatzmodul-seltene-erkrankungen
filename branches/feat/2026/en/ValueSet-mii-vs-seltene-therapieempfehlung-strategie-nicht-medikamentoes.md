# MII VS SE Therapieempfehlung Strategie - Nicht-Medikamentös - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2026.0.1

## ValueSet: MII VS SE Therapieempfehlung Strategie - Nicht-Medikamentös 

 
ValueSet für nicht-medikamentöse Therapiestrategien (für ServiceRequest Profile) - Verwendet für ServiceRequest-basierte Therapieempfehlungen im Kontext Modellvorhaben GenomSeq 

 **References** 

* [MII PR SE Therapieempfehlung Nicht-Medikamentös](StructureDefinition-mii-pr-seltene-therapieempfehlung-nicht-medikamentoes.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-seltene-therapieempfehlung-strategie-nicht-medikamentoes",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-therapieempfehlung-strategie-nicht-medikamentoes",
  "version" : "2026.0.1",
  "name" : "MII_VS_Seltene_TherapieempfehlungStrategieNichtMedikamentoes",
  "title" : "MII VS SE Therapieempfehlung Strategie - Nicht-Medikamentös",
  "status" : "active",
  "date" : "2026-07-28T16:26:31+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "ValueSet für nicht-medikamentöse Therapiestrategien (für ServiceRequest Profile) - Verwendet für ServiceRequest-basierte Therapieempfehlungen im Kontext Modellvorhaben GenomSeq",
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
