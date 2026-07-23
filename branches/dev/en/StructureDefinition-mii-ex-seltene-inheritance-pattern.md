# MII EX SE Inheritance Pattern - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2026.0.1

## Extension: MII EX SE Inheritance Pattern 

Extension to capture the mode of inheritance of a rare disease

**Context of Use**

**Usage info**

**Usages:**

* This Extension is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/mii-ig-seltene-erkrankungen-v2026-de|current/StructureDefinition/StructureDefinition-mii-ex-seltene-inheritance-pattern.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-ex-seltene-inheritance-pattern.csv), [Excel](../StructureDefinition-mii-ex-seltene-inheritance-pattern.xlsx), [Schematron](../StructureDefinition-mii-ex-seltene-inheritance-pattern.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-ex-seltene-inheritance-pattern",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-inheritance-pattern",
  "version" : "2026.0.1",
  "name" : "InheritancePattern",
  "title" : "MII EX SE Inheritance Pattern",
  "status" : "active",
  "date" : "2026-07-23T11:20:28+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Extension to capture the mode of inheritance of a rare disease",
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
      "short" : "MII EX SE Inheritance Pattern",
      "definition" : "Extension to capture the mode of inheritance of a rare disease"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-inheritance-pattern"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Mode of inheritance",
      "definition" : "Mode of inheritance coded using HPO inheritance pattern terms (e.g., HP:0000006 Autosomal dominant, HP:0000007 Autosomal recessive)",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-hpo-inheritance-pattern"
      }
    }]
  }
}

```
