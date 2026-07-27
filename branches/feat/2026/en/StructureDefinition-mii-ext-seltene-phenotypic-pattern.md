# Phenotypic Pattern Extension - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2026.0.1

## Extension: Phenotypic Pattern Extension 

Extension to link syndrome diagnoses to characteristic phenotypic patterns or symptom clusters

**Context of Use**

**Usage info**

**Usages:**

* This Extension is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/mii-ig-seltene-erkrankungen-v2026-de|current/StructureDefinition/StructureDefinition-mii-ext-seltene-phenotypic-pattern.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-ext-seltene-phenotypic-pattern.csv), [Excel](../StructureDefinition-mii-ext-seltene-phenotypic-pattern.xlsx), [Schematron](../StructureDefinition-mii-ext-seltene-phenotypic-pattern.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-ext-seltene-phenotypic-pattern",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ext-seltene-phenotypic-pattern",
  "version" : "2026.0.1",
  "name" : "PhenotypicPattern",
  "title" : "Phenotypic Pattern Extension",
  "status" : "active",
  "date" : "2026-07-27T16:21:59+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Extension to link syndrome diagnoses to characteristic phenotypic patterns or symptom clusters",
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
      "short" : "Phenotypic Pattern Extension",
      "definition" : "Extension to link syndrome diagnoses to characteristic phenotypic patterns or symptom clusters"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ext-seltene-phenotypic-pattern"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Phänotypisches Muster",
      "definition" : "Referenz auf charakteristische Symptommuster oder Phänotyp-Cluster des Syndroms",
      "comment" : "Kann auf HPO-Assessment Observationen oder Symptom-Conditions verweisen, die typische Muster für das Syndrom darstellen",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Observation",
        "http://hl7.org/fhir/StructureDefinition/Condition"]
      }],
      "mustSupport" : true
    }]
  }
}

```
