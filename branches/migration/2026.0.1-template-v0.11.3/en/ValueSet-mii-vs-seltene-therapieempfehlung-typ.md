# MII VS SE Therapieempfehlung Typ - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS SE Therapieempfehlung Typ**

## ValueSet: MII VS SE Therapieempfehlung Typ 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-therapieempfehlung-typ | *Version*:2027.0.0-ballot |
| Active as of 2026-08-31 | *Computable Name*:MII_VS_Seltene_TherapieempfehlungTyp |

 
ValueSet für Therapietypen (kausal/symptomatisch) bei seltenen Erkrankungen (Modellvorhaben GenomSeq) 

 **References** 

* [MII PR SE Therapieempfehlung Systemische Therapie](StructureDefinition-mii-pr-seltene-therapieempfehlung.md)
* [MII PR SE Therapieempfehlung Nicht-Medikamentös](StructureDefinition-mii-pr-seltene-therapieempfehlung-nicht-medikamentoes.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-seltene-therapieempfehlung-typ",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-therapieempfehlung-typ",
  "version" : "2027.0.0-ballot",
  "name" : "MII_VS_Seltene_TherapieempfehlungTyp",
  "title" : "MII VS SE Therapieempfehlung Typ",
  "status" : "active",
  "date" : "2026-08-31T13:41:24+00:00",
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
  "description" : "ValueSet für Therapietypen (kausal/symptomatisch) bei seltenen Erkrankungen (Modellvorhaben GenomSeq)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-therapieempfehlung-typ"
    }]
  }
}

```
