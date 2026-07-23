# Onset Age Extension - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2026.0.1

## Extension: Onset Age Extension 

Extension to capture the age at onset of a condition. This backports the onsetAge functionality from FHIR R5 to R4.

**Context of Use**

**Usage info**

**Usages:**

* This Extension is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/mii-ig-seltene-erkrankungen-v2026-de|current/StructureDefinition/StructureDefinition-mii-ext-seltene-onset-age.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-ext-seltene-onset-age.csv), [Excel](../StructureDefinition-mii-ext-seltene-onset-age.xlsx), [Schematron](../StructureDefinition-mii-ext-seltene-onset-age.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-ext-seltene-onset-age",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ext-seltene-onset-age",
  "version" : "2026.0.1",
  "name" : "OnsetAge",
  "title" : "Onset Age Extension",
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
  "description" : "Extension to capture the age at onset of a condition. This backports the onsetAge functionality from FHIR R5 to R4.",
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
    "expression" : "Condition.onset[x]"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Onset Age Extension",
      "definition" : "Extension to capture the age at onset of a condition. This backports the onsetAge functionality from FHIR R5 to R4."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ext-seltene-onset-age"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Alter bei Erkrankungsbeginn",
      "definition" : "Das Alter des Patienten zum Zeitpunkt des Erkrankungsbeginns",
      "comment" : "Diese Erweiterung ermöglicht es, das Alter bei Erkrankungsbeginn anzugeben, ähnlich der onsetAge-Funktionalität in FHIR R5",
      "type" : [{
        "code" : "Age"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.value[x].value",
      "path" : "Extension.value[x].value",
      "short" : "Numerischer Alterswert",
      "min" : 1
    },
    {
      "id" : "Extension.value[x].unit",
      "path" : "Extension.value[x].unit",
      "short" : "Alterseinheit",
      "min" : 1
    },
    {
      "id" : "Extension.value[x].system",
      "path" : "Extension.value[x].system",
      "min" : 1,
      "fixedUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Extension.value[x].code",
      "path" : "Extension.value[x].code",
      "short" : "UCUM-Code für Alterseinheit",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/age-units"
      }
    }]
  }
}

```
