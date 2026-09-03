# MII CS SE Therapieempfehlung Typ - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CS SE Therapieempfehlung Typ**

## CodeSystem: MII CS SE Therapieempfehlung Typ 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-therapieempfehlung-typ | *Version*:2027.0.0-ballot.rc1 |
| Active as of 2026-09-03 | *Computable Name*:MII_CS_Seltene_TherapieempfehlungTyp |

 
Therapietyp (kausal vs. symptomatisch) für Therapieempfehlungen bei seltenen Erkrankungen, abgeleitet aus MV GenomSeq 

This Code system is referenced in the definition of the following value sets:

* [MII VS SE Therapieempfehlung Typ](ValueSet-mii-vs-seltene-therapieempfehlung-typ.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-seltene-therapieempfehlung-typ",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-therapieempfehlung-typ",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_CS_Seltene_TherapieempfehlungTyp",
  "title" : "MII CS SE Therapieempfehlung Typ",
  "status" : "active",
  "date" : "2026-09-03T09:08:22+00:00",
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
  "description" : "Therapietyp (kausal vs. symptomatisch) für Therapieempfehlungen bei seltenen Erkrankungen, abgeleitet aus MV GenomSeq",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "causal",
    "display" : "Kausal",
    "definition" : "Kausale Therapie - adressiert die zugrundeliegende Ursache der Erkrankung"
  },
  {
    "code" : "symptomatic",
    "display" : "Symptomatisch",
    "definition" : "Symptomatische Therapie - behandelt Symptome und Manifestationen der Erkrankung"
  }]
}

```
