# Syndrome Category Extension - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Syndrome Category Extension**

## Extension: Syndrome Category Extension 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ext-seltene-syndrome-category | *Version*:2027.0.0-ballot |
| Active as of 2026-08-28 | *Computable Name*:SyndromeCategory |

Extension to categorize syndrome types for rare diseases (genetic, metabolic, developmental, etc.)

**Context of Use**

**Usage info**

**Usages:**

* This Extension is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.seltene|current/StructureDefinition/StructureDefinition-mii-ext-seltene-syndrome-category.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-ext-seltene-syndrome-category.csv), [Excel](../StructureDefinition-mii-ext-seltene-syndrome-category.xlsx), [Schematron](../StructureDefinition-mii-ext-seltene-syndrome-category.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-ext-seltene-syndrome-category",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ext-seltene-syndrome-category",
  "version" : "2027.0.0-ballot",
  "name" : "SyndromeCategory",
  "title" : "Syndrome Category Extension",
  "status" : "active",
  "date" : "2026-08-28T15:01:21+00:00",
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
  "description" : "Extension to categorize syndrome types for rare diseases (genetic, metabolic, developmental, etc.)",
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
    "expression" : "Condition"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Syndrome Category Extension",
      "definition" : "Extension to categorize syndrome types for rare diseases (genetic, metabolic, developmental, etc.)"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ext-seltene-syndrome-category"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Syndromkategorie",
      "definition" : "Kategorie zur Klassifizierung des Syndromtyps",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-syndrome-category"
      }
    }]
  }
}

```
