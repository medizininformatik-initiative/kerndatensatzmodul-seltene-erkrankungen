# Syndrome Category Extension - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2026.0.1

## Extension: Syndrome Category Extension 

Extension to categorize syndrome types for rare diseases (genetic, metabolic, developmental, etc.)

**Context of Use**

**Usage info**

**Usages:**

* This Extension is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/mii-ig-seltene-erkrankungen-v2026-de|current/StructureDefinition/StructureDefinition-mii-ext-seltene-syndrome-category.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-ext-seltene-syndrome-category.csv), [Excel](../StructureDefinition-mii-ext-seltene-syndrome-category.xlsx), [Schematron](../StructureDefinition-mii-ext-seltene-syndrome-category.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-ext-seltene-syndrome-category",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ext-seltene-syndrome-category",
  "version" : "2026.0.1",
  "name" : "SyndromeCategory",
  "title" : "Syndrome Category Extension",
  "status" : "active",
  "date" : "2026-07-23T10:39:42+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Extension to categorize syndrome types for rare diseases (genetic, metabolic, developmental, etc.)",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
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
