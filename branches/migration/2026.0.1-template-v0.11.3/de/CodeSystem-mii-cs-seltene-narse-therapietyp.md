# MII CS Seltene Erkrankungen NARSE Therapietyp - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CS Seltene Erkrankungen NARSE Therapietyp**

## CodeSystem: MII CS Seltene Erkrankungen NARSE Therapietyp 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-narse-therapietyp | *Version*:2027.0.0-ballot |
| Active Stand: 2026-09-02 | *Maschinenlesbarer Name*:MII_CS_Seltene_NARSE_Therapietyp |

 
CodeSystem für NARSE-spezifische Therapietypen bei Seltenen Erkrankungen 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MII VS Seltene Erkrankungen NARSE Therapietyp](ValueSet-mii-vs-seltene-narse-therapietyp.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-seltene-narse-therapietyp",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-narse-therapietyp",
  "version" : "2027.0.0-ballot",
  "name" : "MII_CS_Seltene_NARSE_Therapietyp",
  "title" : "MII CS Seltene Erkrankungen NARSE Therapietyp",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-02T17:52:03+00:00",
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
  "description" : "CodeSystem für NARSE-spezifische Therapietypen bei Seltenen Erkrankungen",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
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
