# MII CS SE ICF Generic Qualifier - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CS SE ICF Generic Qualifier**

## CodeSystem: MII CS SE ICF Generic Qualifier 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-icf-qualifier | *Version*:2027.0.0-ballot |
| Active Stand: 2026-09-01 | *Maschinenlesbarer Name*:MII_CS_Seltene_ICFQualifier |

 
The WHO generic qualifier scale used with ICF categories. Defined locally because the qualifiers are not concepts in the ICF classification itself — WHO specifies them as a scale appended to a category. Wording and percentage ranges are quoted from the ICF. 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MII VS SE ICF Generic Qualifier](ValueSet-mii-vs-seltene-icf-qualifier.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-seltene-icf-qualifier",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-icf-qualifier",
  "version" : "2027.0.0-ballot",
  "name" : "MII_CS_Seltene_ICFQualifier",
  "title" : "MII CS SE ICF Generic Qualifier",
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
  "description" : "The WHO generic qualifier scale used with ICF categories. Defined locally because the qualifiers are not concepts in the ICF classification itself — WHO specifies them as a scale appended to a category. Wording and percentage ranges are quoted from the ICF.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 7,
  "concept" : [{
    "code" : "0",
    "display" : "NO problem",
    "definition" : "No problem (none, absent, negligible) — 0-4 %"
  },
  {
    "code" : "1",
    "display" : "MILD problem",
    "definition" : "Mild problem (slight, low) — 5-24 %"
  },
  {
    "code" : "2",
    "display" : "MODERATE problem",
    "definition" : "Moderate problem (medium, fair) — 25-49 %"
  },
  {
    "code" : "3",
    "display" : "SEVERE problem",
    "definition" : "Severe problem (high, extreme) — 50-95 %"
  },
  {
    "code" : "4",
    "display" : "COMPLETE problem",
    "definition" : "Complete problem (total) — 96-100 %"
  },
  {
    "code" : "8",
    "display" : "not specified",
    "definition" : "Insufficient information to specify the severity of the problem."
  },
  {
    "code" : "9",
    "display" : "not applicable",
    "definition" : "The category is not applicable to this person."
  }]
}

```
