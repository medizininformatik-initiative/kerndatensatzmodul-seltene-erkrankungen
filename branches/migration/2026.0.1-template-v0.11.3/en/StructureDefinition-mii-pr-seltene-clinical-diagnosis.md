# MII PR SE Clinical Diagnosis - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR SE Clinical Diagnosis**

## Resource Profile: MII PR SE Clinical Diagnosis 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis | *Version*:2027.0.0-ballot |
| Active as of 2026-09-02 | *Computable Name*:MII_PR_Seltene_ClinicalDiagnosis |

 
Profile for clinical diagnosis of rare diseases with HPO phenotype codes. This profile is used for clinically diagnosed rare diseases based on phenotypic presentation. 

This profile describes a clinically established diagnosis of a rare disease. It is used when the diagnosis is based on clinical findings and phenotypic features.

**Search parameters**

The following search parameters are relevant for the Rare Diseases module, also in combination:

1. The search parameter `_id` MUST be supported:Examples:`GET [base]/Condition?_id=1234`Usage notes: Further information on searching for "_id" can be found in the [FHIR base specification, section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. The search parameter "_profile" MUST be supported:Examples:`GET [base]/Condition?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis`Usage notes: Further information on searching for "_profile" can be found in the [FHIR base specification, section "token"](http://hl7.org/fhir/R4/search.html#all).
1. The search parameter "category" MUST be supported:Examples:`GET [base]/Condition?category=http://terminology.hl7.org/CodeSystem/condition-category|encounter-diagnosis`Usage notes: Further information on searching for "category" can be found in the FHIR base specification, section "token".
1. The search parameter "code" MUST be supported:Examples:`GET [base]/Condition?code=http://fhir.de/CodeSystem/bfarm/icd-10-gm|Q87.4`Usage notes: Further information on searching for "code" can be found in the FHIR base specification, section "token".
1. The search parameter "subject" MUST be supported:Examples:`GET [base]/Condition?subject=Patient/example`Usage notes: Further information on searching for "subject" can be found in the FHIR base specification, section "reference".
1. The search parameter "encounter" MUST be supported:Examples:`GET [base]/Condition?encounter=Encounter/example`Usage notes: Further information on searching for "encounter" can be found in the FHIR base specification, section "reference".
1. The search parameter "recorded-date" MUST be supported:Examples:`GET [base]/Condition?recorded-date=2024-02-08`Usage notes: Further information on searching for "recorded-date" can be found in the FHIR base specification, section "date".
1. The search parameter "verification-status" MUST be supported:Examples:`GET [base]/Condition?verification-status=provisional`Usage notes: Further information on searching for "verification-status" can be found in the FHIR base specification, section "token".
1. The search parameter "clinical-status" MUST be supported:Examples:`GET [base]/Condition?clinical-status=active`Usage notes: Further information on searching for "clinical-status" can be found in the FHIR base specification, section "token".

Example instances are linked in the "Examples" section of the profile page.

**Usages:**

* Examples for this Profile: [Condition/condition-cataract](Condition-condition-cataract.md), [Condition/condition-marfan-clinical](Condition-condition-marfan-clinical.md), [Condition/condition-marfan-suspected](Condition-condition-marfan-suspected.md), [Condition/condition-sma-clinical](Condition-condition-sma-clinical.md)... Show 7 more, [Condition/condition-sma-suspected](Condition-condition-sma-suspected.md), [Condition/example-cf-clinical](Condition-example-cf-clinical.md), [Condition/example-eds-excluded-clinical](Condition-example-eds-excluded-clinical.md), [Condition/example-marfan-clinical-diagnosis](Condition-example-marfan-clinical-diagnosis.md), [Condition/example-marfan-excluded-clinical](Condition-example-marfan-excluded-clinical.md), [Condition/example-metabolic-myopathy-excluded](Condition-example-metabolic-myopathy-excluded.md) and [Condition/example-noonan-clinical-diagnosis](Condition-example-noonan-clinical-diagnosis.md)
* CapabilityStatements using this Profile: [MII CPS Seltene Erkrankungen CapabilityStatement](CapabilityStatement-mii-cps-seltene-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.seltene|current/StructureDefinition/StructureDefinition-mii-pr-seltene-clinical-diagnosis.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-seltene-clinical-diagnosis.csv), [Excel](../StructureDefinition-mii-pr-seltene-clinical-diagnosis.xlsx), [Schematron](../StructureDefinition-mii-pr-seltene-clinical-diagnosis.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-seltene-clinical-diagnosis",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm",
    "valueCoding" : {
      "system" : "http://hl7.org/fhir/version-algorithm",
      "code" : "semver",
      "display" : "SemVer"
    }
  },
  {
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
        "code" : "C15607"
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
    "url" : "http://hl7.org/fhir/StructureDefinition/resource-approvalDate",
    "valueDate" : "2024-03-07"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/resource-effectivePeriod",
    "valuePeriod" : {
      "start" : "2026"
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis",
  "version" : "2027.0.0-ballot",
  "name" : "MII_PR_Seltene_ClinicalDiagnosis",
  "title" : "MII PR SE Clinical Diagnosis",
  "status" : "active",
  "date" : "2026-09-02T03:38:58+00:00",
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
  "description" : "Profile for clinical diagnosis of rare diseases with HPO phenotype codes. This profile is used for clinically diagnosed rare diseases based on phenotypic presentation.",
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
    "identity" : "LogicalModel",
    "name" : "FHIR-Profil zu LogicalModel Mapping"
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
  "type" : "Condition",
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Condition",
      "path" : "Condition",
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "AnamneseUndDiagnostik.KlinischeDiagnose",
        "comment" : "Klinische Diagnose"
      }]
    },
    {
      "id" : "Condition.extension:Feststellungsdatum",
      "path" : "Condition.extension",
      "sliceName" : "Feststellungsdatum"
    },
    {
      "id" : "Condition.extension:Feststellungsdatum.value[x]",
      "path" : "Condition.extension.value[x]",
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "AnamneseUndDiagnostik.KlinischeDiagnose.FeststellungsdatumKlinischeDia",
        "comment" : "Feststellungsdatum klinische SE-Diagnose"
      }]
    },
    {
      "id" : "Condition.category",
      "path" : "Condition.category",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.severity",
      "path" : "Condition.severity",
      "mustSupport" : true
    },
    {
      "id" : "Condition.code.coding:icd10-gm",
      "path" : "Condition.code.coding",
      "sliceName" : "icd10-gm",
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "AnamneseUndDiagnostik.KlinischeDiagnose",
        "comment" : "ICD-10-GM Diagnose"
      }]
    },
    {
      "id" : "Condition.code.coding:orphanet",
      "path" : "Condition.code.coding",
      "sliceName" : "orphanet",
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "AnamneseUndDiagnostik.KlinischeDiagnose",
        "comment" : "Orpha-Code Diagnose"
      }]
    },
    {
      "id" : "Condition.code.coding:hpo",
      "path" : "Condition.code.coding",
      "sliceName" : "hpo",
      "short" : "HPO Phenotype code",
      "definition" : "Human Phenotype Ontology code describing the phenotypic manifestation of the rare disease",
      "comment" : "For rare diseases, HPO codes should be provided to describe the phenotypic presentation",
      "min" : 0,
      "max" : "*",
      "patternCoding" : {
        "system" : "http://human-phenotype-ontology.org"
      },
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-hpo-phenotypic-observation-codes"
      },
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "AnamneseUndDiagnostik.Phaenotypisierung.HPOTerm",
        "comment" : "HPO-Term des Symptoms"
      }]
    },
    {
      "id" : "Condition.code.coding:hpo.system",
      "path" : "Condition.code.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.code.coding:hpo.code",
      "path" : "Condition.code.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.code.coding:hpo.display",
      "path" : "Condition.code.coding.display",
      "mustSupport" : true
    },
    {
      "id" : "Condition.subject",
      "path" : "Condition.subject",
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "Patient",
        "comment" : "Patient/Indexpatient"
      }]
    },
    {
      "id" : "Condition.encounter",
      "path" : "Condition.encounter",
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "AnamneseUndDiagnostik.Untersuchungsdatum",
        "comment" : "Untersuchungsdatum"
      }]
    },
    {
      "id" : "Condition.onset[x]",
      "path" : "Condition.onset[x]",
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "AnamneseUndDiagnostik.KlinischeDiagnose.AlterKlinischeDia",
        "comment" : "Alter/Zeitpunkt bei klinischer SE-Diagnose"
      }]
    },
    {
      "id" : "Condition.onset[x]:onsetDateTime",
      "path" : "Condition.onset[x]",
      "sliceName" : "onsetDateTime",
      "type" : [{
        "code" : "dateTime"
      }],
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "AnamneseUndDiagnostik.KlinischeDiagnose.FeststellungsdatumKlinischeDia",
        "comment" : "Feststellungsdatum klinische SE-Diagnose"
      }]
    },
    {
      "id" : "Condition.abatement[x]",
      "path" : "Condition.abatement[x]",
      "mustSupport" : true
    },
    {
      "id" : "Condition.recorder",
      "path" : "Condition.recorder",
      "mustSupport" : true
    },
    {
      "id" : "Condition.asserter",
      "path" : "Condition.asserter",
      "mustSupport" : true
    },
    {
      "id" : "Condition.stage",
      "path" : "Condition.stage",
      "mustSupport" : true
    },
    {
      "id" : "Condition.stage.assessment",
      "path" : "Condition.stage.assessment",
      "short" : "Reference to HPO-based severity assessment",
      "mustSupport" : true
    },
    {
      "id" : "Condition.stage.type",
      "path" : "Condition.stage.type",
      "short" : "Stage type (e.g., severity, progression)",
      "mustSupport" : true
    },
    {
      "id" : "Condition.evidence",
      "path" : "Condition.evidence",
      "mustSupport" : true
    },
    {
      "id" : "Condition.evidence.code",
      "path" : "Condition.evidence.code",
      "short" : "Manifestation/symptom supporting the diagnosis",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "AnamneseUndDiagnostik.Phaenotypisierung.HPOTerm",
        "comment" : "Unterstützende HPO-Symptome"
      }]
    },
    {
      "id" : "Condition.evidence.code.coding",
      "path" : "Condition.evidence.code.coding",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-hpo-phenotypic-observation-codes"
      }
    },
    {
      "id" : "Condition.evidence.detail",
      "path" : "Condition.evidence.detail",
      "short" : "Reference to Observation resources containing HPO-coded symptoms",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Observation"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "AnamneseUndDiagnostik.Phaenotypisierung",
        "comment" : "Verweis auf Phänotypisierung"
      }]
    }]
  }
}

```
