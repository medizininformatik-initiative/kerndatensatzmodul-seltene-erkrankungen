# MII PR Seltene Erkrankungen Therapie Durchgeführt - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2026.0.1

## Resource Profile: MII PR Seltene Erkrankungen Therapie Durchgeführt 

 
Minimales Profil zur Dokumentation durchgeführter Therapien bei Seltenen Erkrankungen gemäß NARSE-Klassifikation. Dieses Profil erfasst Therapien unabhängig vom Durchführungsort (ambulant, stationär, außerhalb des Krankenhauses). 

**Usages:**

* Examples for this Profile: [Procedure/mii-exa-seltene-narse-gentherapie-sma](Procedure-mii-exa-seltene-narse-gentherapie-sma.md) and [Procedure/mii-exa-seltene-narse-stoffwechseltherapie-pompe](Procedure-mii-exa-seltene-narse-stoffwechseltherapie-pompe.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/mii-ig-seltene-erkrankungen-v2026-de|current/StructureDefinition/StructureDefinition-mii-pr-seltene-therapie-durchgefuehrt.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-seltene-therapie-durchgefuehrt.csv), [Excel](../StructureDefinition-mii-pr-seltene-therapie-durchgefuehrt.xlsx), [Schematron](../StructureDefinition-mii-pr-seltene-therapie-durchgefuehrt.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-seltene-therapie-durchgefuehrt",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapie-durchgefuehrt",
  "version" : "2026.0.1",
  "name" : "MII_PR_Seltene_TherapieDurchgefuehrt",
  "title" : "MII PR Seltene Erkrankungen Therapie Durchgeführt",
  "status" : "active",
  "date" : "2026-07-28T16:11:09+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Minimales Profil zur Dokumentation durchgeführter Therapien bei Seltenen Erkrankungen gemäß NARSE-Klassifikation. Dieses Profil erfasst Therapien unabhängig vom Durchführungsort (ambulant, stationär, außerhalb des Krankenhauses).",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
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
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Procedure",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Procedure",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Procedure",
      "path" : "Procedure"
    },
    {
      "id" : "Procedure.status",
      "path" : "Procedure.status",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.code",
      "path" : "Procedure.code",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-narse-therapietyp"
      }
    },
    {
      "id" : "Procedure.code.coding",
      "path" : "Procedure.code.coding",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.code.coding.system",
      "path" : "Procedure.code.coding.system",
      "min" : 1,
      "patternUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-narse-therapietyp"
    },
    {
      "id" : "Procedure.code.coding.code",
      "path" : "Procedure.code.coding.code",
      "min" : 1
    },
    {
      "id" : "Procedure.code.coding.display",
      "path" : "Procedure.code.coding.display",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.subject",
      "path" : "Procedure.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.performed[x]",
      "path" : "Procedure.performed[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "Procedure.performed[x]:performedDateTime",
      "path" : "Procedure.performed[x]",
      "sliceName" : "performedDateTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.performed[x]:performedPeriod",
      "path" : "Procedure.performed[x]",
      "sliceName" : "performedPeriod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }],
      "mustSupport" : true
    }]
  }
}

```
