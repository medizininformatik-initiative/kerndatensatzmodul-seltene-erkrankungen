# MII PR SE Therapieempfehlung Systemische Therapie - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR SE Therapieempfehlung Systemische Therapie**

## Resource Profile: MII PR SE Therapieempfehlung Systemische Therapie 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung | *Version*:2027.0.0-ballot |
| Active as of 2026-09-14 | *Computable Name*:MII_PR_Seltene_Therapieempfehlung |

 
Therapieempfehlung für eine medikamentöse Systemische Therapie 

This profile describes a **medicinal therapy recommendation** for patients with rare diseases. It is based on the FHIR resource MedicationRequest and covers systemic, targeted, preventive and gene-therapeutic treatment approaches.

### Use cases

Medicinal therapy recommendations include:

* **Systemic therapies**: chemotherapy, immunotherapy, hormone therapy
* **Targeted therapies**: targeted therapy based on molecular markers
* **Preventive therapies**: prophylactic medication to avoid complications
* **Gene therapies**: gene therapeutics for rare genetic diseases (e.g. onasemnogene abeparvovec for SMA)
* **Combination therapies**: see the separate profile [Therapy recommendation, combination](StructureDefinition-mii-pr-seltene-therapieempfehlung-kombination.md)

### Implementation notes

#### Coding of medications

* Use of **ATC codes** for classification
* **UNII codes** for newer substances (particularly in studies)

#### Status and intent

* `status`: typically "draft" for recommendations, "active" after approval
* `intent`: "proposal" for therapy recommendations, "order" upon implementation

#### Dosage

* Structured dose specifications with `dosageInstruction`
* Support for complex schedules (e.g. titration, cyclic administration)
* For the correct specification of the dosage, the requirements of the [Medication Dosage IG DE specification](https://build.fhir.org/ig/hl7germany/medication-dosage-ig/index.html) are to be observed

#### Justification

* Link to the diagnosis via `reasonReference`
* Molecular markers via extensions where relevant

-------

### Search parameters

The following search parameters are relevant for medicinal therapy recommendations:

1. **_id**: search by resource id `GET [base]/MedicationRequest?_id=1234`
1. **_profile**: search by profile `GET [base]/MedicationRequest?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung`
1. **subject**: search by patient `GET [base]/MedicationRequest?subject=Patient/example`
1. **status**: search by status `GET [base]/MedicationRequest?status=active`
1. **intent**: search by intent `GET [base]/MedicationRequest?intent=proposal`
1. **medication**: search by medication `GET [base]/MedicationRequest?medication=http://fhir.de/CodeSystem/ifa/pzn|12345678`
1. **authored-on**: search by authoring date `GET [base]/MedicationRequest?authored-on=2024-02-08`

-------

Example instances are linked in the "Examples" section of the profile page.

### Related profiles

* [Therapieempfehlung-Kombination](StructureDefinition-mii-pr-seltene-therapieempfehlung-kombination.md) — for combination therapies
* [Therapieempfehlung-Nicht-Medikamentoes](StructureDefinition-mii-pr-seltene-therapieempfehlung-nicht-medikamentoes.md) — for non-medicinal therapies
* [Therapieplan](StructureDefinition-mii-pr-seltene-therapieplan.md) — overarching therapy plan

**Usages:**

* Refer to this Profile: [MII PR SE Therapieempfehlung Kombinationstherapie](StructureDefinition-mii-pr-seltene-therapieempfehlung-kombination.md) and [MII PR SE Therapieplan](StructureDefinition-mii-pr-seltene-therapieplan.md)
* Examples for this Profile: [MedicationRequest/mii-exa-seltene-therapieempfehlung-gentherapie-sma](MedicationRequest-mii-exa-seltene-therapieempfehlung-gentherapie-sma.md) and [MedicationRequest/mii-exa-seltene-therapieempfehlung-losartan-marfan](MedicationRequest-mii-exa-seltene-therapieempfehlung-losartan-marfan.md)
* CapabilityStatements using this Profile: [MII CPS Seltene Erkrankungen CapabilityStatement](CapabilityStatement-mii-cps-seltene-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.seltene|current/StructureDefinition/StructureDefinition-mii-pr-seltene-therapieempfehlung.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-seltene-therapieempfehlung.csv), [Excel](../StructureDefinition-mii-pr-seltene-therapieempfehlung.xlsx), [Schematron](../StructureDefinition-mii-pr-seltene-therapieempfehlung.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-seltene-therapieempfehlung",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablestructuredefinition",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablestructuredefinition"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "shareable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "publishable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionPolicy",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/artifact-version-policy-codes",
        "version" : "3.0.0",
        "code" : "package",
        "display" : "Package"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-usage",
    "valueMarkdown" : "Use this profile as the technical FHIR representation of the corresponding Medical Informatics Initiative logical model. The profile constrains a base FHIR resource for the MII module context by specifying how elements are used, which elements are required or not used, which extensions and terminology bindings apply, and how the resource maps to the module-specific content model. Implementers should produce and consume resource instances that conform to this profile when exchanging data for the corresponding MII module."
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-topic",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl",
        "code" : "C459"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-author",
    "valueContactDetail" : {
      "telecom" : [{
        "system" : "email",
        "value" : "julian.sass@charite.de"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-editor",
    "valueContactDetail" : {
      "name" : "Taskforce Core Data Set"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-editor",
    "valueContactDetail" : {
      "telecom" : [{
        "system" : "email",
        "value" : "thomas.debertshaeuser@charite.de"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-reviewer",
    "valueContactDetail" : {
      "name" : "Interoperability Working Group",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/interoperability-working-group"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-reviewer",
    "valueContactDetail" : {
      "name" : "National Steering Committee",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/national-steering-committee"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-endorser",
    "valueContactDetail" : {
      "name" : "Interoperability Working Group",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/interoperability-working-group"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-endorser",
    "valueContactDetail" : {
      "name" : "National Steering Committee",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/national-steering-committee"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm",
    "valueCoding" : {
      "system" : "http://hl7.org/fhir/version-algorithm",
      "code" : "semver",
      "display" : "SemVer"
    }
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/modul-meta/StructureDefinition/mii-ex-meta-license-codeable",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://hl7.org/fhir/spdx-license",
        "code" : "CC-BY-4.0",
        "display" : "Creative Commons Attribution 4.0 International"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/resource-approvalDate",
    "valueDate" : "2026-09-09"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/resource-effectivePeriod",
    "valuePeriod" : {
      "start" : "2027"
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung",
  "version" : "2027.0.0-ballot",
  "name" : "MII_PR_Seltene_Therapieempfehlung",
  "title" : "MII PR SE Therapieempfehlung Systemische Therapie",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-14T18:57:54+00:00",
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
  "description" : "Therapieempfehlung für eine medikamentöse Systemische Therapie",
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
    "identity" : "script10.6",
    "uri" : "http://ncpdp.org/SCRIPT10_6",
    "name" : "Mapping to NCPDP SCRIPT 10.6"
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
  "type" : "MedicationRequest",
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationRequest",
      "path" : "MedicationRequest"
    },
    {
      "id" : "MedicationRequest.extension",
      "path" : "MedicationRequest.extension",
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
      "id" : "MedicationRequest.extension:Prioritaet",
      "path" : "MedicationRequest.extension",
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
      "id" : "MedicationRequest.extension:Publikation",
      "path" : "MedicationRequest.extension",
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
      "id" : "MedicationRequest.status",
      "path" : "MedicationRequest.status",
      "short" : "active | on-hold | cancelled | completed | entered-in-error | stopped | draft | unknown",
      "definition" : "Status der Umsetzung der Therapieempfehlung",
      "comment" : "\n    draft: Nicht umgesetzt, \n    active: In Umsetzung, \n    completed: Abgeschlossen oder abgebrochen (Patient verstorben)"
    },
    {
      "id" : "MedicationRequest.intent",
      "path" : "MedicationRequest.intent",
      "short" : "proposal | option",
      "definition" : "Da nur Empfehlungen abgegeben werden, wird hier typischerweise 'proposal' stehen. Es sei denn,\n        diese Therapieempfehlung ist Teil einer RequestGroup (z.B. Kombinationstherapie). In dem Fall muss hier 'option' stehen."
    },
    {
      "id" : "MedicationRequest.category",
      "path" : "MedicationRequest.category",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "coding.system"
        }],
        "description" : "Slice für Therapiestrategie-Kategorisierung aus Modellvorhaben GenomSeq",
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.category:MVGenomSeqTherapieStrategie",
      "path" : "MedicationRequest.category",
      "sliceName" : "MVGenomSeqTherapieStrategie",
      "short" : "Modellvorhaben GenomSeq Therapiestrategie-Typ (Medikamentös)",
      "definition" : "Kategorisierung der medikamentösen Therapieempfehlung nach Modellvorhaben GenomSeq Strategietyp",
      "comment" : "Dieses Feld ist spezifisch für die Integration mit Modellvorhaben GenomSeq. Es ermöglicht die Kategorisierung gemäß RareDiseasesPlan.recommendedTherapies.strategy. Nur für medikamentöse Strategien: systemic-medication, targeted-medication, prevention-medication, gene-therapy, combination.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-therapieempfehlung-strategie-medikamentoes"
      }
    },
    {
      "id" : "MedicationRequest.category:MVGenomSeqTherapieStrategie.coding",
      "path" : "MedicationRequest.category.coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "MedicationRequest.category:MVGenomSeqTherapieStrategie.coding.system",
      "path" : "MedicationRequest.category.coding.system",
      "min" : 1,
      "patternUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-therapieempfehlung-strategie"
    },
    {
      "id" : "MedicationRequest.category:MVGenomSeqTherapieStrategie.coding.code",
      "path" : "MedicationRequest.category.coding.code",
      "min" : 1
    },
    {
      "id" : "MedicationRequest.category:MVGenomSeqTherapieTyp",
      "path" : "MedicationRequest.category",
      "sliceName" : "MVGenomSeqTherapieTyp",
      "short" : "Modellvorhaben GenomSeq Therapietyp (Kausal/Symptomatisch)",
      "definition" : "Kategorisierung der Therapieempfehlung nach Therapietyp (kausal vs. symptomatisch) gemäß Modellvorhaben GenomSeq",
      "comment" : "Dieses Feld ermöglicht die Unterscheidung, ob die Therapie die zugrundeliegende Ursache der Erkrankung adressiert (kausal) oder Symptome und Manifestationen behandelt (symptomatisch). Entspricht RareDiseasesPlan.recommendedTherapies.therapyType aus MV GenomSeq.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-therapieempfehlung-typ"
      }
    },
    {
      "id" : "MedicationRequest.category:MVGenomSeqTherapieTyp.coding",
      "path" : "MedicationRequest.category.coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "MedicationRequest.category:MVGenomSeqTherapieTyp.coding.system",
      "path" : "MedicationRequest.category.coding.system",
      "min" : 1,
      "patternUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-therapieempfehlung-typ"
    },
    {
      "id" : "MedicationRequest.category:MVGenomSeqTherapieTyp.coding.code",
      "path" : "MedicationRequest.category.coding.code",
      "min" : 1
    },
    {
      "id" : "MedicationRequest.reasonReference",
      "path" : "MedicationRequest.reasonReference",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "$this.resolve()"
        }],
        "description" : "Slice für stützende Angaben zur Systemischen Therapie auf Basis des referenzierten Ressourcentyps",
        "ordered" : false,
        "rules" : "open"
      }
    }]
  }
}

```
