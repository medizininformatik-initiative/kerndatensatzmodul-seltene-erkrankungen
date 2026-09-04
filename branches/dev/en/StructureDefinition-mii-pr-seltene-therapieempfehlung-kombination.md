# MII PR SE Therapieempfehlung Kombinationstherapie - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR SE Therapieempfehlung Kombinationstherapie**

## Resource Profile: MII PR SE Therapieempfehlung Kombinationstherapie 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung-kombination | *Version*:2027.0.0-ballot.rc1 |
| Active as of 2026-09-04 | *Computable Name*:MII_PR_Seltene_Therapieempfehlung_Kombination |

 
Therapieempfehlung für eine medikamentöse Kombinationstherapie 

This profile describes a combined therapy recommendation for patients with rare diseases. It enables the structured recording of therapy recommendations that comprise several coordinated treatment approaches to be applied together. It is modeled on the MTB implementation (Molecular Tumor Board).

**Search parameters** are declared module-wide in the [CapabilityStatement](CapabilityStatement-mii-cps-seltene-capabilitystatement.md) — machine-readable and complete there, rather than repeated by hand per profile.

Example instances are linked in the "Examples" section of the profile page.

**Usages:**

* Refer to this Profile: [MII PR SE Therapieplan](StructureDefinition-mii-pr-seltene-therapieplan.md)
* CapabilityStatements using this Profile: [MII CPS Seltene Erkrankungen CapabilityStatement](CapabilityStatement-mii-cps-seltene-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.seltene|current/StructureDefinition/StructureDefinition-mii-pr-seltene-therapieempfehlung-kombination.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-seltene-therapieempfehlung-kombination.csv), [Excel](../StructureDefinition-mii-pr-seltene-therapieempfehlung-kombination.xlsx), [Schematron](../StructureDefinition-mii-pr-seltene-therapieempfehlung-kombination.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-seltene-therapieempfehlung-kombination",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung-kombination",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_PR_Seltene_Therapieempfehlung_Kombination",
  "title" : "MII PR SE Therapieempfehlung Kombinationstherapie",
  "status" : "active",
  "date" : "2026-09-04T12:44:12+00:00",
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
  "description" : "Therapieempfehlung für eine medikamentöse Kombinationstherapie",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "RequestGroup",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/RequestGroup",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "RequestGroup",
      "path" : "RequestGroup"
    },
    {
      "id" : "RequestGroup.extension",
      "path" : "RequestGroup.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "RequestGroup.extension:Prioritaet",
      "path" : "RequestGroup.extension",
      "sliceName" : "Prioritaet",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-prioritaet"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "RequestGroup.extension:Publikation",
      "path" : "RequestGroup.extension",
      "sliceName" : "Publikation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-publikation"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "RequestGroup.identifier",
      "path" : "RequestGroup.identifier",
      "mustSupport" : true
    },
    {
      "id" : "RequestGroup.status",
      "path" : "RequestGroup.status",
      "definition" : "Status der Umsetzung der Therapieempfehlung",
      "comment" : "\n    draft: Nicht umgesetzt, \n    active: In Umsetzung, \n    completed: Abgeschlossen oder abgebrochen (Patient verstorben)"
    },
    {
      "id" : "RequestGroup.intent",
      "path" : "RequestGroup.intent",
      "short" : "proposal | option",
      "definition" : "Da nur Empfehlungen abgegeben werden, wird hier typischerweise 'proposal' stehen. Es sei denn,\ndiese Therapieempfehlung ist selbst nochmal Teil einer RequestGroup. In dem Fall muss hier 'option' stehen.",
      "mustSupport" : true
    },
    {
      "id" : "RequestGroup.subject",
      "path" : "RequestGroup.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "RequestGroup.author",
      "path" : "RequestGroup.author",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Practitioner",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole"]
      }]
    },
    {
      "id" : "RequestGroup.action",
      "path" : "RequestGroup.action",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "RequestGroup.action.resource",
      "path" : "RequestGroup.action.resource",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung",
        "http://hl7.org/fhir/StructureDefinition/MedicationRequest"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "RequestGroup.action.action",
      "path" : "RequestGroup.action.action",
      "max" : "0"
    }]
  }
}

```
