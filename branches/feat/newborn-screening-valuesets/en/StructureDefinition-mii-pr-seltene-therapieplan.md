# MII PR SE Therapieplan - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR SE Therapieplan**

## Resource Profile: MII PR SE Therapieplan 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieplan | *Version*:2027.0.0-ballot |
| Active as of 2026-08-28 | *Computable Name*:MII_PR_Seltene_Therapieplan |

 
Therapieplan 

This profile describes a therapy plan for patients with rare diseases, according to the requirements of the Model Project Genome Sequencing. It is modeled on the MTB implementation (Molecular Tumor Board). The therapy plan bundles planned measures and can comprise one or more therapy recommendations that give concrete form to the plan.

**Search parameters**

The following search parameters are relevant for the Rare Diseases module, also in combination:

1. The search parameter `_id` MUST be supported:Examples:`GET [base]/CarePlan?_id=1234`Usage notes: Further information on searching for "_id" can be found in the [FHIR base specification, section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. The search parameter "_profile" MUST be supported:Examples:`GET [base]/CarePlan?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieplan`Usage notes: Further information on searching for "_profile" can be found in the [FHIR base specification, section "token"](http://hl7.org/fhir/R4/search.html#all).
1. The search parameter "category" MUST be supported:Examples:`GET [base]/CarePlan?category=http://snomed.info/sct|734163000`Usage notes: Further information on searching for "category" can be found in the FHIR base specification, section "token".
1. The search parameter "subject" MUST be supported:Examples:`GET [base]/CarePlan?subject=Patient/example`Usage notes: Further information on searching for "subject" can be found in the FHIR base specification, section "reference".
1. The search parameter "encounter" MUST be supported:Examples:`GET [base]/CarePlan?encounter=Encounter/example`Usage notes: Further information on searching for "encounter" can be found in the FHIR base specification, section "reference".
1. The search parameter "date" MUST be supported:Examples:`GET [base]/CarePlan?date=2024-02-08`Usage notes: Further information on searching for "date" can be found in the FHIR base specification, section "date".
1. The search parameter "activity-reference" MUST be supported:Examples:`GET [base]/CarePlan?activity-reference=ServiceRequest/example`Usage notes: Further information on searching for "activity-reference" can be found in the FHIR base specification, section "reference".

Example instances are linked in the "Examples" section of the profile page.

**Usages:**

* Examples for this Profile: [CarePlan/mii-exa-seltene-therapieplan](CarePlan-mii-exa-seltene-therapieplan.md)
* CapabilityStatements using this Profile: [MII CPS Seltene Erkrankungen CapabilityStatement](CapabilityStatement-mii-cps-seltene-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.seltene|current/StructureDefinition/StructureDefinition-mii-pr-seltene-therapieplan.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-seltene-therapieplan.csv), [Excel](../StructureDefinition-mii-pr-seltene-therapieplan.xlsx), [Schematron](../StructureDefinition-mii-pr-seltene-therapieplan.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-seltene-therapieplan",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieplan",
  "version" : "2027.0.0-ballot",
  "name" : "MII_PR_Seltene_Therapieplan",
  "title" : "MII PR SE Therapieplan",
  "status" : "active",
  "date" : "2026-08-28T15:14:21+00:00",
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
  "description" : "Therapieplan",
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
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "CarePlan",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/CarePlan",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "CarePlan",
      "path" : "CarePlan"
    },
    {
      "id" : "CarePlan.status",
      "path" : "CarePlan.status",
      "definition" : "Status der Umsetzung des beschlossenen Therapieplans",
      "comment" : "\n    active: Empfehlung bzw. Therapieoption in Umsetzung (Regelfall), \n    revoked: Fall ist abgeschlossen, \n    completed: Alle Empfehlungen bzw. Therapieoptionen ausgeschöpft oder Patient verstorben"
    },
    {
      "id" : "CarePlan.description",
      "path" : "CarePlan.description",
      "short" : "Protokollauszug",
      "definition" : "Protokollauszug aus dem Beschluss",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.created",
      "path" : "CarePlan.created",
      "short" : "Erstellungsdatum",
      "definition" : "Erstellungsdatum des Therapieplans",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.supportingInfo",
      "path" : "CarePlan.supportingInfo",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "description" : "Slice für weitere Informationen",
        "ordered" : false,
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity",
      "path" : "CarePlan.activity",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "reference.resolve()"
        }],
        "description" : "Slice für Empfehlung zum weiteren Vorgehen auf Basis des referenzierten Ressourcentyps",
        "ordered" : false,
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity:MedikamentoesTherapie",
      "path" : "CarePlan.activity",
      "sliceName" : "MedikamentoesTherapie",
      "short" : "Medikamentöse Therapieempfehlung",
      "definition" : "Therapieempfehlung für eine medikamentöse Therapie (Systemtherapie, gezielte Therapie, Präventivmedikation, Gentherapie, Kombinationstherapie)",
      "comment" : "Referenziert MedicationRequest-basierte Profile für alle medikamentösen Therapien",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity:MedikamentoesTherapie.reference",
      "path" : "CarePlan.activity.reference",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung-kombination",
        "http://hl7.org/fhir/StructureDefinition/MedicationRequest",
        "http://hl7.org/fhir/StructureDefinition/RequestGroup"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity:MedikamentoesTherapie.detail",
      "path" : "CarePlan.activity.detail",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity:MedikamentoesTherapie.detail.statusReason",
      "path" : "CarePlan.activity.detail.statusReason",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-empfehlung-status-begruendung"
      }
    },
    {
      "id" : "CarePlan.activity:NichtMedikamentoesTherapie",
      "path" : "CarePlan.activity",
      "sliceName" : "NichtMedikamentoesTherapie",
      "short" : "Nicht-medikamentöse Therapieempfehlung",
      "definition" : "Therapieempfehlung für nicht-medikamentöse Interventionen (Ernährungstherapie, Prophylaxe, Früherkennung, humangenetische Beratung, andere)",
      "comment" : "Referenziert ServiceRequest-basierte Profile für alle nicht-medikamentösen Therapien einschließlich humangenetischer Beratung",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity:NichtMedikamentoesTherapie.reference",
      "path" : "CarePlan.activity.reference",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung-nicht-medikamentoes",
        "http://hl7.org/fhir/StructureDefinition/ServiceRequest"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity:NichtMedikamentoesTherapie.detail",
      "path" : "CarePlan.activity.detail",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity:NichtMedikamentoesTherapie.detail.statusReason",
      "path" : "CarePlan.activity.detail.statusReason",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-empfehlung-status-begruendung"
      }
    },
    {
      "id" : "CarePlan.activity:Studieneinschlussempfehlung",
      "path" : "CarePlan.activity",
      "sliceName" : "Studieneinschlussempfehlung",
      "short" : "Studieneinschlussempfehlung",
      "definition" : "Anfrage zum Studieneinschluss",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity:Studieneinschlussempfehlung.reference",
      "path" : "CarePlan.activity.reference",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-studieneinschluss-anfrage"]
      }],
      "mustSupport" : true
    }]
  }
}

```
