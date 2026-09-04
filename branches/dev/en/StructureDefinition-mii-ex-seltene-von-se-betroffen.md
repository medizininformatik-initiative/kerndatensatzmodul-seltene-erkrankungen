# MII_EX_Seltene_VonSEBetroffen - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII_EX_Seltene_VonSEBetroffen**

## Extension: 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-von-se-betroffen | *Version*:2027.0.0-ballot.rc1 |
| Active as of 2026-09-04 | *Computable Name*:MII_EX_Seltene_VonSEBetroffen |

Wird in der MII Modul SE Familienanamnese genutzt um zu bestimmen ob ein Familienmitglied an der gleichen SE erkrankt ist.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MII PR SE Familienanamnese](StructureDefinition-mii-pr-seltene-familienanamnese.md)
* Examples for this Extension: [Bundle/mii-exa-seltene-bundle-sma-complete](Bundle-mii-exa-seltene-bundle-sma-complete.md), [FamilyMemberHistory/mii-exa-seltene-familienanamnese](FamilyMemberHistory-mii-exa-seltene-familienanamnese.md) and [FamilyMemberHistory/mii-exa-seltene-family-history-001](FamilyMemberHistory-mii-exa-seltene-family-history-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.seltene|current/StructureDefinition/StructureDefinition-mii-ex-seltene-von-se-betroffen.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-ex-seltene-von-se-betroffen.csv), [Excel](../StructureDefinition-mii-ex-seltene-von-se-betroffen.xlsx), [Schematron](../StructureDefinition-mii-ex-seltene-von-se-betroffen.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-ex-seltene-von-se-betroffen",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-von-se-betroffen",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_EX_Seltene_VonSEBetroffen",
  "status" : "active",
  "date" : "2026-09-04T12:44:12+00:00",
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
  "description" : "Wird in der MII Modul SE Familienanamnese genutzt um zu bestimmen ob ein Familienmitglied an der gleichen SE erkrankt ist.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Element"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "definition" : "Wird in der MII Modul SE Familienanamnese genutzt um zu bestimmen ob ein Familienmitglied an der gleichen SE erkrankt ist."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-von-se-betroffen"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-von-se-betroffen"
      }
    }]
  }
}

```
