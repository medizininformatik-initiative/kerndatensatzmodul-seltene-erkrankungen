# MII VS Seltene Erkrankungen Geschlecht bei Geburt - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Seltene Erkrankungen Geschlecht bei Geburt**

## ValueSet: MII VS Seltene Erkrankungen Geschlecht bei Geburt 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-geschlecht-bei-geburt | *Version*:2027.0.0-ballot |
| Active as of 2026-09-01 | *Computable Name*:MII_VS_Seltene_GeschlechtBeiGeburt |

 
Biologisches Geschlecht bei Geburt nach JARDIN-MDS/ERDRI-CDS: Male, Female, Indeterminate sex. Ergaenzt um Unknown fuer den Fall, dass die Angabe nicht erhoben wurde — dieser Fall ist ausdruecklich NICHT mit Indeterminate sex zu verwechseln, das eine klinische Feststellung ist. 

 **References** 

* [MII PR SE Geschlecht bei Geburt](StructureDefinition-mii-pr-seltene-geschlecht-bei-geburt.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unsupported Code System Version)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-seltene-geschlecht-bei-geburt",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-geschlecht-bei-geburt",
  "version" : "2027.0.0-ballot",
  "name" : "MII_VS_Seltene_GeschlechtBeiGeburt",
  "title" : "MII VS Seltene Erkrankungen Geschlecht bei Geburt",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-01T19:54:19+00:00",
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
  "description" : "Biologisches Geschlecht bei Geburt nach JARDIN-MDS/ERDRI-CDS: Male, Female, Indeterminate sex. Ergaenzt um Unknown fuer den Fall, dass die Angabe nicht erhoben wurde — dieser Fall ist ausdruecklich NICHT mit Indeterminate sex zu verwechseln, das eine klinische Feststellung ist.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "248153007",
        "display" : "Male"
      },
      {
        "code" : "248152002",
        "display" : "Female"
      },
      {
        "code" : "37791004",
        "display" : "Indeterminate sex"
      },
      {
        "code" : "261665006",
        "display" : "Unknown"
      }]
    }]
  }
}

```
