# MII VS SE Therapieempfehlung Typ - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2026.0.1

## ValueSet: MII VS SE Therapieempfehlung Typ 

 
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
  "version" : "2026.0.1",
  "name" : "MII_VS_Seltene_TherapieempfehlungTyp",
  "title" : "MII VS SE Therapieempfehlung Typ",
  "status" : "active",
  "date" : "2026-07-28T16:41:18+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "ValueSet für Therapietypen (kausal/symptomatisch) bei seltenen Erkrankungen (Modellvorhaben GenomSeq)",
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-therapieempfehlung-typ"
    }]
  }
}

```
