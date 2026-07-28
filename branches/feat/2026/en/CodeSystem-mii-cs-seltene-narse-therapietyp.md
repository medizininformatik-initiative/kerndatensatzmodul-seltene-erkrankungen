# MII CS Seltene Erkrankungen NARSE Therapietyp - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2026.0.1

## CodeSystem: MII CS Seltene Erkrankungen NARSE Therapietyp 

 
CodeSystem für NARSE-spezifische Therapietypen bei Seltenen Erkrankungen 

This Code system is referenced in the definition of the following value sets:

* [MII_VS_Seltene_NARSE_Therapietyp](ValueSet-mii-vs-seltene-narse-therapietyp.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-seltene-narse-therapietyp",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-narse-therapietyp",
  "version" : "2026.0.1",
  "name" : "MII_CS_Seltene_NARSE_Therapietyp",
  "title" : "MII CS Seltene Erkrankungen NARSE Therapietyp",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-28T16:11:09+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "CodeSystem für NARSE-spezifische Therapietypen bei Seltenen Erkrankungen",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 10,
  "property" : [{
    "code" : "status",
    "uri" : "http://hl7.org/fhir/concept-properties#status",
    "description" : "Status of the concept",
    "type" : "code"
  }],
  "concept" : [{
    "code" : "keine",
    "display" : "Keine",
    "definition" : "Keine Therapie"
  },
  {
    "code" : "pharmakotherapie",
    "display" : "Pharmakotherapie",
    "definition" : "Medikamentöse Therapie mit konventionellen Arzneimitteln"
  },
  {
    "code" : "gentherapie",
    "display" : "Gentherapie",
    "definition" : "Therapie mit genetisch veränderten Zellen oder direkter Genmodifikation"
  },
  {
    "code" : "mrna-therapie",
    "display" : "mRNA Therapie",
    "definition" : "Therapie mit mRNA-basierten Therapeutika"
  },
  {
    "code" : "antikoerpertherapie",
    "display" : "Antikörpertherapie",
    "definition" : "Therapie mit monoklonalen oder polyklonalen Antikörpern"
  },
  {
    "code" : "cart-zelltherapie",
    "display" : "CAR-T-Zelltherapie",
    "definition" : "Chimäre Antigenrezeptor-T-Zelltherapie"
  },
  {
    "code" : "stammzelltransplantation",
    "display" : "Stammzelltransplantation",
    "definition" : "Hämatopoetische Stammzelltransplantation (autolog oder allogen)"
  },
  {
    "code" : "stoffwechseltherapie",
    "display" : "Stoffwechseltherapie",
    "definition" : "Therapie zur Korrektur von Stoffwechselstörungen (z.B. Enzymersatztherapie, Substratreduktion)"
  },
  {
    "code" : "sonstiges",
    "display" : "Sonstiges",
    "definition" : "Andere Therapieform, nicht näher spezifiziert"
  },
  {
    "code" : "unbekannt",
    "display" : "Unbekannt",
    "definition" : "Therapietyp ist nicht bekannt"
  }]
}

```
