# MII VS SE Therapieempfehlung Strategie - Medikamentös - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS SE Therapieempfehlung Strategie - Medikamentös**

## ValueSet: MII VS SE Therapieempfehlung Strategie - Medikamentös 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-therapieempfehlung-strategie-medikamentoes | *Version*:2027.0.0-ballot |
| Active as of 2026-09-01 | *Computable Name*:MII_VS_Seltene_TherapieempfehlungStrategieMedikamentoes |

 
ValueSet für medikamentöse Therapiestrategien (für MedicationRequest Profile) - Verwendet für MedicationRequest-basierte Therapieempfehlungen im Kontext Modellvorhaben GenomSeq 

 **References** 

* [MII PR SE Therapieempfehlung Systemische Therapie](StructureDefinition-mii-pr-seltene-therapieempfehlung.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-seltene-therapieempfehlung-strategie-medikamentoes",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-therapieempfehlung-strategie-medikamentoes",
  "version" : "2027.0.0-ballot",
  "name" : "MII_VS_Seltene_TherapieempfehlungStrategieMedikamentoes",
  "title" : "MII VS SE Therapieempfehlung Strategie - Medikamentös",
  "status" : "active",
  "date" : "2026-09-01T21:34:57+00:00",
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
  "description" : "ValueSet für medikamentöse Therapiestrategien (für MedicationRequest Profile) - Verwendet für MedicationRequest-basierte Therapieempfehlungen im Kontext Modellvorhaben GenomSeq",
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
        "code" : "systemic-medication",
        "display" : "Systemische Medikation"
      },
      {
        "code" : "targeted-medication",
        "display" : "Zielgerichtete Medikation"
      },
      {
        "code" : "prevention-medication",
        "display" : "Präventive Medikation"
      },
      {
        "code" : "gene-therapy",
        "display" : "Gentherapie"
      },
      {
        "code" : "combination",
        "display" : "Kombinationstherapie"
      }]
    }]
  }
}

```
