# MII VS Seltene Erkrankungen Symptom Change Status (Combined) - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Seltene Erkrankungen Symptom Change Status (Combined)**

## ValueSet: MII VS Seltene Erkrankungen Symptom Change Status (Combined) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-symptom-change-status-combined | *Version*:2027.0.0-ballot |
| Active as of 2026-09-01 | *Computable Name*:MII_VS_Seltene_Symptom_ChangeStatus_Combined |

 
ValueSet zur Dokumentation von Änderungen bei Symptomen/Phänotypen über Zeit. Kombiniert MVGenomSeq-spezifische Codes mit SNOMED CT-Codes für internationale Interoperabilität. 

 **References** 

* [MII Profile SE HPO Assessment](StructureDefinition-mii-pr-seltene-hpo-assessment.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-seltene-symptom-change-status-combined",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-symptom-change-status-combined",
  "version" : "2027.0.0-ballot",
  "name" : "MII_VS_Seltene_Symptom_ChangeStatus_Combined",
  "title" : "MII VS Seltene Erkrankungen Symptom Change Status (Combined)",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-01T20:45:00+00:00",
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
  "description" : "ValueSet zur Dokumentation von Änderungen bei Symptomen/Phänotypen über Zeit. Kombiniert MVGenomSeq-spezifische Codes mit SNOMED CT-Codes für internationale Interoperabilität.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-hpo-change-status",
      "concept" : [{
        "code" : "newly-added",
        "display" : "Neu hinzugefügt"
      },
      {
        "code" : "improved",
        "display" : "Verbessert"
      },
      {
        "code" : "degraded",
        "display" : "Verschlechtert"
      },
      {
        "code" : "no-longer-observed",
        "display" : "Nicht mehr beobachtet"
      },
      {
        "code" : "unchanged",
        "display" : "Unverändert"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "385425000",
        "display" : "Improved"
      },
      {
        "code" : "231877006",
        "display" : "Worse"
      },
      {
        "code" : "385630006",
        "display" : "Maintained"
      },
      {
        "code" : "2667000",
        "display" : "Absent"
      },
      {
        "code" : "35105006",
        "display" : "Increased"
      },
      {
        "code" : "1250004",
        "display" : "Decreased"
      }]
    }]
  }
}

```
