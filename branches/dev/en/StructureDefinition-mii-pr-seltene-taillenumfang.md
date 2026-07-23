# MII PR SE Taillenumfang - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2026.0.1

## Resource Profile: MII PR SE Taillenumfang 

 
Profil zur Dokumentation des Taillenumfangs (Bauchumfang auf Nabelhöhe) eines Patienten. Relevant für seltene Erkrankungen mit metabolischen Komponenten oder Skelettdysplasien. 

**Usages:**

* Examples for this Profile: [Observation/mii-exa-seltene-taillenumfang](Observation-mii-exa-seltene-taillenumfang.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/mii-ig-seltene-erkrankungen-v2026-de|current/StructureDefinition/StructureDefinition-mii-pr-seltene-taillenumfang.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-seltene-taillenumfang.csv), [Excel](../StructureDefinition-mii-pr-seltene-taillenumfang.xlsx), [Schematron](../StructureDefinition-mii-pr-seltene-taillenumfang.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-seltene-taillenumfang",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-taillenumfang",
  "version" : "2026.0.1",
  "name" : "MII_PR_Seltene_Taillenumfang",
  "title" : "MII PR SE Taillenumfang",
  "status" : "active",
  "date" : "2026-07-23T15:55:45+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Profil zur Dokumentation des Taillenumfangs (Bauchumfang auf Nabelhöhe) eines Patienten. Relevant für seltene Erkrankungen mit metabolischen Komponenten oder Skelettdysplasien.",
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
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
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
        "map" : "Messbefunde.Taillenumfang",
        "comment" : "Taillenumfang"
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
      "short" : "Taillenumfang auf Nabelhöhe",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "8280-0",
          "display" : "Waist Circumference at umbilicus by Tape measure"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "min" : 1,
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
        "map" : "Messbefunde.Taillenumfang.Datum",
        "comment" : "Datum der Messung"
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
        "map" : "Messbefunde.Taillenumfang",
        "comment" : "Taillenumfang in cm"
      }]
    },
    {
      "id" : "Observation.value[x].unit",
      "path" : "Observation.value[x].unit",
      "fixedString" : "cm"
    },
    {
      "id" : "Observation.value[x].system",
      "path" : "Observation.value[x].system",
      "fixedUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.value[x].code",
      "path" : "Observation.value[x].code",
      "fixedCode" : "cm"
    }]
  }
}

```
