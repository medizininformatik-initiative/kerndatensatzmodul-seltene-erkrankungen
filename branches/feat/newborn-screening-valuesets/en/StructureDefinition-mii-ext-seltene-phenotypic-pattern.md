# Phenotypic Pattern Extension - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Phenotypic Pattern Extension**

## Extension: Phenotypic Pattern Extension 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ext-seltene-phenotypic-pattern | *Version*:2027.0.0-ballot |
| Active as of 2026-09-03 | *Computable Name*:PhenotypicPattern |

Extension to link syndrome diagnoses to characteristic phenotypic patterns or symptom clusters

**Context of Use**

**Usage info**

**Usages:**

* This Extension is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.seltene|current/StructureDefinition/StructureDefinition-mii-ext-seltene-phenotypic-pattern.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-ext-seltene-phenotypic-pattern.csv), [Excel](../StructureDefinition-mii-ext-seltene-phenotypic-pattern.xlsx), [Schematron](../StructureDefinition-mii-ext-seltene-phenotypic-pattern.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-ext-seltene-phenotypic-pattern",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ext-seltene-phenotypic-pattern",
  "version" : "2027.0.0-ballot",
  "name" : "PhenotypicPattern",
  "title" : "Phenotypic Pattern Extension",
  "status" : "active",
  "date" : "2026-09-03T06:42:09+00:00",
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
  "description" : "Extension to link syndrome diagnoses to characteristic phenotypic patterns or symptom clusters",
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
