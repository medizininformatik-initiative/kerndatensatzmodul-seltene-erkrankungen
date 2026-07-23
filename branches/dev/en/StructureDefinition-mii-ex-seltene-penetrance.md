# MII EX SE Penetrance - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2026.0.1

## Extension: MII EX SE Penetrance 

Extension to capture the penetrance of genetic variants associated with a rare disease

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MII PR SE Familienanamnese](StructureDefinition-mii-pr-seltene-familienanamnese.md) and [MII PR SE Genetic Diagnosis](StructureDefinition-mii-pr-seltene-genetic-diagnosis.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/mii-ig-seltene-erkrankungen-v2026-de|current/StructureDefinition/StructureDefinition-mii-ex-seltene-penetrance.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-ex-seltene-penetrance.csv), [Excel](../StructureDefinition-mii-ex-seltene-penetrance.xlsx), [Schematron](../StructureDefinition-mii-ex-seltene-penetrance.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-ex-seltene-penetrance",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-penetrance",
  "version" : "2026.0.1",
  "name" : "Penetrance",
  "title" : "MII EX SE Penetrance",
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
  "description" : "Extension to capture the penetrance of genetic variants associated with a rare disease",
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
  },
  {
    "type" : "element",
    "expression" : "FamilyMemberHistory.condition"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "MII EX SE Penetrance",
      "definition" : "Extension to capture the penetrance of genetic variants associated with a rare disease"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-penetrance"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "type" : [{
        "code" : "CodeableConcept"
      },
      {
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Extension.value[x]:valueCodeableConcept",
      "path" : "Extension.value[x]",
      "sliceName" : "valueCodeableConcept",
      "short" : "Qualitative penetrance description",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-penetrance"
      }
    },
    {
      "id" : "Extension.value[x]:valueQuantity",
      "path" : "Extension.value[x]",
      "sliceName" : "valueQuantity",
      "short" : "Quantitative penetrance percentage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Extension.value[x]:valueQuantity.unit",
      "path" : "Extension.value[x].unit",
      "patternString" : "%"
    },
    {
      "id" : "Extension.value[x]:valueQuantity.system",
      "path" : "Extension.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Extension.value[x]:valueQuantity.code",
      "path" : "Extension.value[x].code",
      "patternCode" : "%"
    }]
  }
}

```
