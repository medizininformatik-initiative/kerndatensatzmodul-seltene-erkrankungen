# MII CS SE Therapieempfehlung Strategie - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CS SE Therapieempfehlung Strategie**

## CodeSystem: MII CS SE Therapieempfehlung Strategie 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-therapieempfehlung-strategie | *Version*:2027.0.0-ballot |
| Active as of 2026-08-28 | *Computable Name*:MII_CS_Seltene_TherapieempfehlungStrategie |

 
Strategietypen für Therapieempfehlungen bei seltenen Erkrankungen, abgeleitet aus MV GenomSeq 

This Code system is referenced in the definition of the following value sets:

* [MII VS SE Therapieempfehlung Strategie](ValueSet-mii-vs-seltene-therapieempfehlung-strategie.md)
* [MII VS SE Therapieempfehlung Strategie - Medikamentös](ValueSet-mii-vs-seltene-therapieempfehlung-strategie-medikamentoes.md)
* [MII VS SE Therapieempfehlung Strategie - Nicht-Medikamentös](ValueSet-mii-vs-seltene-therapieempfehlung-strategie-nicht-medikamentoes.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-seltene-therapieempfehlung-strategie",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-therapieempfehlung-strategie",
  "version" : "2027.0.0-ballot",
  "name" : "MII_CS_Seltene_TherapieempfehlungStrategie",
  "title" : "MII CS SE Therapieempfehlung Strategie",
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
  "description" : "Strategietypen für Therapieempfehlungen bei seltenen Erkrankungen, abgeleitet aus MV GenomSeq",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 9,
  "concept" : [{
    "code" : "systemic-medication",
    "display" : "Systemische Medikation",
    "definition" : "Systemische medikamentöse Therapie, die den gesamten Körper betrifft"
  },
  {
    "code" : "targeted-medication",
    "display" : "Zielgerichtete Medikation",
    "definition" : "Zielgerichtete medikamentöse Therapie basierend auf molekularen Targets"
  },
  {
    "code" : "prevention-medication",
    "display" : "Präventive Medikation",
    "definition" : "Medikamentöse Therapie zur Prävention von Krankheitsmanifestationen"
  },
  {
    "code" : "gene-therapy",
    "display" : "Gentherapie",
    "definition" : "Therapeutische Intervention durch Genmodifikation oder Genersatz"
  },
  {
    "code" : "prophylactic",
    "display" : "Prophylaxe",
    "definition" : "Vorbeugende Maßnahmen zur Verhinderung von Komplikationen"
  },
  {
    "code" : "early-detection",
    "display" : "Früherkennung",
    "definition" : "Maßnahmen zur frühzeitigen Erkennung von Krankheitszeichen"
  },
  {
    "code" : "combination",
    "display" : "Kombinationstherapie",
    "definition" : "Kombinierte Anwendung mehrerer Therapieansätze"
  },
  {
    "code" : "nutrition",
    "display" : "Ernährungstherapie",
    "definition" : "Therapeutische Intervention durch spezielle Ernährungsmaßnahmen"
  },
  {
    "code" : "other",
    "display" : "Sonstige",
    "definition" : "Andere Therapiestrategien, die nicht in die definierten Kategorien fallen"
  }]
}

```
