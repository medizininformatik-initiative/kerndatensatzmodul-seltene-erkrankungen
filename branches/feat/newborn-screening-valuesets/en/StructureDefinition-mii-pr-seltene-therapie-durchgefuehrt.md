# MII PR Seltene Erkrankungen Therapie Durchgeführt - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR Seltene Erkrankungen Therapie Durchgeführt**

## Resource Profile: MII PR Seltene Erkrankungen Therapie Durchgeführt 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapie-durchgefuehrt | *Version*:2027.0.0-ballot |
| Active as of 2026-08-28 | *Computable Name*:MII_PR_Seltene_TherapieDurchgefuehrt |

 
Minimales Profil zur Dokumentation durchgeführter Therapien bei Seltenen Erkrankungen gemäß NARSE-Klassifikation. Dieses Profil erfasst Therapien unabhängig vom Durchführungsort (ambulant, stationär, außerhalb des Krankenhauses). 

This profile describes a **performed therapy** in patients with rare diseases according to the NARSE classification. It is a minimal profile that can be used regardless of where the therapy was performed (outpatient, inpatient, outside the hospital).

### Context and usage

The profile was developed specifically for documentation within the **German National Action League for People with Rare Diseases (NAMSE)** and the **NARSE registry**. It records the therapy type from a predefined list covering the most common therapy forms in rare diseases.

### NARSE therapy types

The following therapy types are defined in the code system:

| | | |
| :--- | :--- | :--- |
| `keine` | None | No therapy |
| `pharmakotherapie` | Pharmacotherapy | Drug therapy with conventional medicines |
| `gentherapie` | Gene therapy | Therapy with genetically modified cells or direct gene modification |
| `mrna-therapie` | mRNA therapy | Therapy with mRNA-based therapeutics |
| `antikoerpertherapie` | Antibody therapy | Therapy with monoclonal or polyclonal antibodies |
| `cart-zelltherapie` | CAR-T cell therapy | Chimeric antigen receptor T-cell therapy |
| `stammzelltransplantation` | Stem cell transplantation | Hematopoietic stem cell transplantation (autologous or allogeneic) |
| `stoffwechseltherapie` | Metabolic therapy | Therapy to correct metabolic disorders (e.g. enzyme replacement therapy) |
| `sonstiges` | Other | Other therapy form, not further specified |
| `unbekannt` | Unknown | The therapy type is not known |

### Implementation notes

#### Minimal data set

This profile deliberately defines only the minimal requirements:

* **status**: mandatory field (from the FHIR base)
* **subject**: reference to the patient (mandatory)
* **code**: NARSE therapy type (mandatory)
* **performed[x]**: time of performance (if available)

#### Use outside the hospital

Since many therapies for rare diseases take place outside the inpatient setting (e.g. at home, in specialized centers), this profile is **not** bound to the MII Procedure module. An MII procedure can optionally contain an additional NARSE code.

#### Integration with other profiles

* Can reference therapy recommendations via `basedOn`
* Can reference diagnoses via `reasonReference` (optional)
* Can be included in CarePlan.activity.detail

-------

Example instances are linked in the "Examples" section of the profile page.

-------

**Search parameters**

The following search parameters are relevant for the Rare Diseases module, also in combination:

1. The search parameter `_id` MUST be supported:Examples:`GET [base]/Procedure?_id=1234`Usage notes: Further information on searching for "_id" can be found in the [FHIR base specification, section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. The search parameter "_profile" MUST be supported:Examples:`GET [base]/Procedure?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapie-durchgefuehrt`Usage notes: Further information on searching for "_profile" can be found in the [FHIR base specification, section "token"](http://hl7.org/fhir/R4/search.html#all).
1. The search parameter "code" MUST be supported:Examples:`GET [base]/Procedure?code=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-narse-therapietyp|gentherapie`Usage notes: Further information on searching for "code" can be found in the FHIR base specification, section "token".
1. The search parameter "subject" MUST be supported:Examples:`GET [base]/Procedure?subject=Patient/example`Usage notes: Further information on searching for "subject" can be found in the FHIR base specification, section "reference".
1. The search parameter "date" MUST be supported:Examples:`GET [base]/Procedure?date=2024-02-08`Usage notes: Further information on searching for "date" can be found in the FHIR base specification, section "date".
1. The search parameter "status" MUST be supported:Examples:`GET [base]/Procedure?status=completed`Usage notes: Further information on searching for "status" can be found in the FHIR base specification, section "token".

-------

### Related profiles

* [Therapieempfehlung-Medikamentös](StructureDefinition-mii-pr-seltene-therapieempfehlung.md) — for therapy recommendations
* [Therapieempfehlung-Nicht-Medikamentös](StructureDefinition-mii-pr-seltene-therapieempfehlung-nicht-medikamentoes.md) — for non-medicinal recommendations
* [Therapieplan](StructureDefinition-mii-pr-seltene-therapieplan.md) — overarching therapy plan

**Usages:**

* Examples for this Profile: [Procedure/mii-exa-seltene-narse-gentherapie-sma](Procedure-mii-exa-seltene-narse-gentherapie-sma.md) and [Procedure/mii-exa-seltene-narse-stoffwechseltherapie-pompe](Procedure-mii-exa-seltene-narse-stoffwechseltherapie-pompe.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.seltene|current/StructureDefinition/StructureDefinition-mii-pr-seltene-therapie-durchgefuehrt.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-seltene-therapie-durchgefuehrt.csv), [Excel](../StructureDefinition-mii-pr-seltene-therapie-durchgefuehrt.xlsx), [Schematron](../StructureDefinition-mii-pr-seltene-therapie-durchgefuehrt.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-seltene-therapie-durchgefuehrt",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapie-durchgefuehrt",
  "version" : "2027.0.0-ballot",
  "name" : "MII_PR_Seltene_TherapieDurchgefuehrt",
  "title" : "MII PR Seltene Erkrankungen Therapie Durchgeführt",
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
  "description" : "Minimales Profil zur Dokumentation durchgeführter Therapien bei Seltenen Erkrankungen gemäß NARSE-Klassifikation. Dieses Profil erfasst Therapien unabhängig vom Durchführungsort (ambulant, stationär, außerhalb des Krankenhauses).",
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
