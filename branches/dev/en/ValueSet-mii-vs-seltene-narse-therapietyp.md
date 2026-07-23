# MII VS Seltene Erkrankungen NARSE Therapietyp - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2026.0.1

## ValueSet: MII VS Seltene Erkrankungen NARSE Therapietyp 

 
ValueSet für NARSE-spezifische Therapietypen bei Seltenen Erkrankungen 

 **References** 

* [MII PR Seltene Erkrankungen Therapie Durchgeführt](StructureDefinition-mii-pr-seltene-therapie-durchgefuehrt.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-seltene-narse-therapietyp",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-narse-therapietyp",
  "version" : "2026.0.1",
  "name" : "MII_VS_Seltene_NARSE_Therapietyp",
  "title" : "MII VS Seltene Erkrankungen NARSE Therapietyp",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-23T11:20:28+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "ValueSet für NARSE-spezifische Therapietypen bei Seltenen Erkrankungen",
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-narse-therapietyp"
    }]
  }
}

```
