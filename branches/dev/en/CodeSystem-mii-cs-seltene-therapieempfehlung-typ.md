# MII CS SE Therapieempfehlung Typ - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2026.0.1

## CodeSystem: MII CS SE Therapieempfehlung Typ 

 
Therapietyp (kausal vs. symptomatisch) für Therapieempfehlungen bei seltenen Erkrankungen, abgeleitet aus MV GenomSeq 

This Code system is referenced in the definition of the following value sets:

* [MII_VS_Seltene_TherapieempfehlungTyp](ValueSet-mii-vs-seltene-therapieempfehlung-typ.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-seltene-therapieempfehlung-typ",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-therapieempfehlung-typ",
  "version" : "2026.0.1",
  "name" : "MII_CS_Seltene_TherapieempfehlungTyp",
  "title" : "MII CS SE Therapieempfehlung Typ",
  "status" : "active",
  "date" : "2026-07-23T15:55:45+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Therapietyp (kausal vs. symptomatisch) für Therapieempfehlungen bei seltenen Erkrankungen, abgeleitet aus MV GenomSeq",
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
