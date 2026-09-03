# MII VS SE ICF Categories - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS SE ICF Categories**

## ValueSet: MII VS SE ICF Categories 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-icf | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2026-09-03 | *Maschinenlesbarer Name*:MII_VS_Seltene_ICF |

 
All categories of the WHO International Classification of Functioning, Disability and Health. Defined intensionally over the whole classification rather than enumerated: which categories are relevant depends entirely on the disease, and any curated subset would be wrong for the next rare disease. German display text comes from the BfArM language supplement, so the value set does not need a German twin. 

 **References** 

* [MII PR SE ICF Assessment](StructureDefinition-mii-pr-seltene-icf-assessment.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-seltene-icf",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-icf",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_VS_Seltene_ICF",
  "title" : "MII VS SE ICF Categories",
  "status" : "active",
  "experimental" : false,
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
  "description" : "All categories of the WHO International Classification of Functioning, Disability and Health. Defined intensionally over the whole classification rather than enumerated: which categories are relevant depends entirely on the disease, and any curated subset would be wrong for the next rare disease. German display text comes from the BfArM language supplement, so the value set does not need a German twin.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://hl7.org/fhir/sid/icf"
    }]
  }
}

```
