# Body Mass Index (BMI) of the patient - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Body Mass Index (BMI) of the patient**

## Resource Profile: Body Mass Index (BMI) of the patient 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-bodymassindex | *Version*:2027.0.0-ballot |
| Active as of 2026-09-02 | *Computable Name*:MII_PR_Seltene_Bodymassindex |

 
Describes the Body Mass Index (BMI) of the patient. 

This profile describes the body mass index of a patient and is needed, among other things, for musculoskeletal and metabolic diseases. The profile is not specific to rare diseases but had not been implemented elsewhere so far.

**Search parameters**

The following search parameters are relevant for the Rare Diseases module, also in combination:

1. The search parameter `_id` MUST be supported:Examples:`GET [base]/Observation?_id=1234`Usage notes: Further information on searching for "_id" can be found in the [FHIR base specification, section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. The search parameter "_profile" MUST be supported:Examples:`GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-bodymassindex`Usage notes: Further information on searching for "_profile" can be found in the [FHIR base specification, section "token"](http://hl7.org/fhir/R4/search.html#all).
1. The search parameter "category" MUST be supported:Examples:`GET [base]/Observation?category=http://terminology.hl7.org/CodeSystem/observation-category|laboratory`Usage notes: Further information on searching for "category" can be found in the FHIR base specification, section "token".
1. The search parameter "code" MUST be supported:Examples:`GET [base]/Observation?code=http://fhir.de/CodeSystem/sct|184305005`Usage notes: Further information on searching for "code" can be found in the FHIR base specification, section "token".
1. The search parameter "subject" MUST be supported:Examples:`GET [base]/Observation?subject=Patient/example`Usage notes: Further information on searching for "subject" can be found in the FHIR base specification, section "reference".
1. The search parameter "focus" MUST be supported:Examples:`GET [base]/Observation?focus=Condition/example`Usage notes: Further information on searching for "focus" can be found in the FHIR base specification, section "reference".
1. The search parameter "encounter" MUST be supported:Examples:`GET [base]/Observation?encounter=Encounter/example`Usage notes: Further information on searching for "encounter" can be found in the FHIR base specification, section "reference".
1. The search parameter "date" MUST be supported:Examples:`GET [base]/Observation?date=2024-02-08`Usage notes: Further information on searching for "date" can be found in the FHIR base specification, section "date".
1. The search parameter "derived-from" MUST be supported:Examples:`GET [base]/Observation?derived-from=Observation/example`Usage notes: Further information on searching for "derived-from" can be found in the FHIR base specification, section "reference".

Example instances are linked in the "Examples" section of the profile page.

**Usages:**

* Examples for this Profile: [Observation/mii-exa-seltene-bodymassindex](Observation-mii-exa-seltene-bodymassindex.md)
* CapabilityStatements using this Profile: [MII CPS Seltene Erkrankungen CapabilityStatement](CapabilityStatement-mii-cps-seltene-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.seltene|current/StructureDefinition/StructureDefinition-mii-pr-seltene-bodymassindex.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-seltene-bodymassindex.csv), [Excel](../StructureDefinition-mii-pr-seltene-bodymassindex.xlsx), [Schematron](../StructureDefinition-mii-pr-seltene-bodymassindex.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-seltene-bodymassindex",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-bodymassindex",
  "version" : "2027.0.0-ballot",
  "name" : "MII_PR_Seltene_Bodymassindex",
  "title" : "Body Mass Index (BMI) of the patient",
  "status" : "active",
  "date" : "2026-09-02T06:59:28+00:00",
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
  "description" : "Describes the Body Mass Index (BMI) of the patient.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "SE-LogicalModel",
    "uri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/LogicalModel/Seltene",
    "name" : "Mapping FHIR zu Seltene Erkrankungen Logical Model"
  },
  {
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation",
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "Messbefunde.BMI",
        "comment" : "BMI"
      }]
    },
    {
      "id" : "Observation.status",
      "path" : "Observation.status",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "Status der Messung",
        "comment" : "Beobachtungsstatus"
      }]
    },
    {
      "id" : "Observation.category",
      "path" : "Observation.category",
      "mustSupport" : true
    },
    {
      "id" : "Observation.category.coding.system",
      "path" : "Observation.category.coding.system",
      "fixedUri" : "http://terminology.hl7.org/CodeSystem/observation-category"
    },
    {
      "id" : "Observation.category.coding.code",
      "path" : "Observation.category.coding.code",
      "fixedCode" : "vital-signs"
    },
    {
      "id" : "Observation.category.coding.display",
      "path" : "Observation.category.coding.display",
      "patternString" : "Vital Signs"
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "39156-5",
          "display" : "Body mass index (BMI) [Ratio]"
        }]
      },
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "Messbefunde.BMI",
        "comment" : "BMI-Code (LOINC 39156-5)"
      }]
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "Patient",
        "comment" : "Patient/Indexpatient"
      }]
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
      "type" : [{
        "code" : "dateTime"
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "Messbefunde.BMI.DatumBMI",
        "comment" : "Datum des BMI"
      }]
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "type" : [{
        "code" : "Quantity"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x].value",
      "path" : "Observation.value[x].value",
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "Messbefunde.BMI.BMI",
        "comment" : "BMI SE-Patient"
      }]
    },
    {
      "id" : "Observation.value[x].unit",
      "path" : "Observation.value[x].unit",
      "fixedString" : "kg/m2"
    },
    {
      "id" : "Observation.value[x].system",
      "path" : "Observation.value[x].system",
      "fixedUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.value[x].code",
      "path" : "Observation.value[x].code",
      "fixedCode" : "kg/m2"
    }]
  }
}

```
