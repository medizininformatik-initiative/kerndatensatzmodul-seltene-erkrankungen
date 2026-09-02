# MII PR SE Genetic Diagnosis - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR SE Genetic Diagnosis**

## Resource Profile: MII PR SE Genetic Diagnosis 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-genetic-diagnosis | *Version*:2027.0.0-ballot |
| Active as of 2026-09-02 | *Computable Name*:MII_PR_Seltene_GeneticDiagnosis |

 
Profile for genetically confirmed diagnosis of rare diseases with OMIM codes and links to MolGen variant/diagnostic implication resources. This profile is used when a rare disease diagnosis has been confirmed through genetic testing. 

This profile describes a genetically confirmed diagnosis of a rare disease. It is used when the diagnosis has been confirmed by molecular genetic examination.

**Search parameters**

The following search parameters are relevant for the Rare Diseases module, also in combination:

1. The search parameter `_id` MUST be supported:Examples:`GET [base]/Condition?_id=1234`Usage notes: Further information on searching for "_id" can be found in the [FHIR base specification, section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. The search parameter "_profile" MUST be supported:Examples:`GET [base]/Condition?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-genetic-diagnosis`Usage notes: Further information on searching for "_profile" can be found in the [FHIR base specification, section "token"](http://hl7.org/fhir/R4/search.html#all).
1. The search parameter "category" MUST be supported:Examples:`GET [base]/Condition?category=http://terminology.hl7.org/CodeSystem/observation-category|laboratory`Usage notes: Further information on searching for "category" can be found in the FHIR base specification, section "token".
1. The search parameter "code" MUST be supported:Examples:`GET [base]/Condition?code=http://fhir.de/CodeSystem/sct|184305005`Usage notes: Further information on searching for "code" can be found in the FHIR base specification, section "token".
1. The search parameter "subject" MUST be supported:Examples:`GET [base]/Condition?subject=Patient/example`Usage notes: Further information on searching for "subject" can be found in the FHIR base specification, section "reference".
1. The search parameter "focus" MUST be supported:Examples:`GET [base]/Condition?focus=Condition/example`Usage notes: Further information on searching for "focus" can be found in the FHIR base specification, section "reference".
1. The search parameter "encounter" MUST be supported:Examples:`GET [base]/Condition?encounter=Encounter/example`Usage notes: Further information on searching for "encounter" can be found in the FHIR base specification, section "reference".
1. The search parameter "date" MUST be supported:Examples:`GET [base]/Condition?date=2024-02-08`Usage notes: Further information on searching for "date" can be found in the FHIR base specification, section "date".
1. The search parameter "derived-from" MUST be supported:Examples:`GET [base]/Condition?derived-from=Observation/example`Usage notes: Further information on searching for "derived-from" can be found in the FHIR base specification, section "reference".

Example instances are linked in the "Examples" section of the profile page.

**Usages:**

* Examples for this Profile: [Condition/condition-marfan-genetic](Condition-condition-marfan-genetic.md), [Condition/condition-pku-diagnosis](Condition-condition-pku-diagnosis.md), [Condition/condition-sma-genetic](Condition-condition-sma-genetic.md), [Condition/example-brca1-genetic-diagnosis](Condition-example-brca1-genetic-diagnosis.md)... Show 6 more, [Condition/example-cf-excluded-after-screening](Condition-example-cf-excluded-after-screening.md), [Condition/example-cf-genetic](Condition-example-cf-genetic.md), [Condition/example-dmd-excluded-bmd-confirmed](Condition-example-dmd-excluded-bmd-confirmed.md), [Condition/example-dmd-genetic-diagnosis](Condition-example-dmd-genetic-diagnosis.md), [Condition/example-sma-excluded-genetic](Condition-example-sma-excluded-genetic.md) and [Condition/example-sma-genetic-diagnosis](Condition-example-sma-genetic-diagnosis.md)
* CapabilityStatements using this Profile: [MII CPS Seltene Erkrankungen CapabilityStatement](CapabilityStatement-mii-cps-seltene-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.seltene|current/StructureDefinition/StructureDefinition-mii-pr-seltene-genetic-diagnosis.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-seltene-genetic-diagnosis.csv), [Excel](../StructureDefinition-mii-pr-seltene-genetic-diagnosis.xlsx), [Schematron](../StructureDefinition-mii-pr-seltene-genetic-diagnosis.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-seltene-genetic-diagnosis",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-genetic-diagnosis",
  "version" : "2027.0.0-ballot",
  "name" : "MII_PR_Seltene_GeneticDiagnosis",
  "title" : "MII PR SE Genetic Diagnosis",
  "status" : "active",
  "date" : "2026-09-02T04:00:55+00:00",
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
  "description" : "Profile for genetically confirmed diagnosis of rare diseases with OMIM codes and links to MolGen variant/diagnostic implication resources. This profile is used when a rare disease diagnosis has been confirmed through genetic testing.",
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
      "constraint" : [{
        "key" : "se-genetic-evidence",
        "severity" : "error",
        "human" : "Genetic diagnosis must have at least one evidence.detail referencing a MolGen resource",
        "expression" : "evidence.exists() and evidence.detail.exists()",
        "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-genetic-diagnosis"
      }],
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "AnamneseUndDiagnostik.GenetischeDiagnose",
        "comment" : "Genetische Diagnose"
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
        "map" : "AnamneseUndDiagnostik.GenetischeDiagnose.FeststellungsdatumGenDia",
        "comment" : "Feststellungsdatum genetische SE-Diagnose"
      }]
    },
    {
      "id" : "Condition.extension:penetrance",
      "path" : "Condition.extension",
      "sliceName" : "penetrance",
      "short" : "Penetranz der genetischen Variante",
      "definition" : "Angabe zur Penetranz der genetischen Variante bei dieser Erkrankung",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-penetrance"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "AnamneseUndDiagnostik.GenDiaFehlendePenetranz",
        "comment" : "Genetische Diagnose mit fehlender Penetranz"
      }]
    },
    {
      "id" : "Condition.verificationStatus",
      "path" : "Condition.verificationStatus",
      "comment" : "For genetically confirmed diagnoses, verificationStatus should typically be 'confirmed'"
    },
    {
      "id" : "Condition.category",
      "path" : "Condition.category",
      "short" : "Kategorisierung als genetische Erkrankung",
      "definition" : "Pflicht-Kategorie zur Kennzeichnung als genetisch bestätigte Erkrankung",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "782964007",
          "display" : "Genetic disease"
        }]
      },
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
        "map" : "AnamneseUndDiagnostik.GenetischeDiagnose",
        "comment" : "ICD-10-GM Diagnose"
      }]
    },
    {
      "id" : "Condition.code.coding:orphanet",
      "path" : "Condition.code.coding",
      "sliceName" : "orphanet",
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "AnamneseUndDiagnostik.GenetischeDiagnose",
        "comment" : "Orpha-Code Diagnose"
      }]
    },
    {
      "id" : "Condition.code.coding:omim",
      "path" : "Condition.code.coding",
      "sliceName" : "omim",
      "short" : "OMIM disease code",
      "definition" : "Online Mendelian Inheritance in Man (OMIM) code for the genetic disease",
      "min" : 0,
      "max" : "*",
      "patternCoding" : {
        "system" : "http://omim.org"
      },
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "AnamneseUndDiagnostik.GenetischeDiagnose",
        "comment" : "OMIM-Code Diagnose"
      }]
    },
    {
      "id" : "Condition.code.coding:omim.system",
      "path" : "Condition.code.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.code.coding:omim.code",
      "path" : "Condition.code.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.code.coding:omim.display",
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
        "map" : "AnamneseUndDiagnostik.GenetischeDiagnose.AlterGenDia",
        "comment" : "Alter/Zeitpunkt bei genetischer SE-Diagnose"
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
        "map" : "AnamneseUndDiagnostik.GenetischeDiagnose.FeststellungsdatumGenDia",
        "comment" : "Feststellungsdatum genetische SE-Diagnose"
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
      "id" : "Condition.evidence",
      "path" : "Condition.evidence",
      "short" : "Genetic evidence supporting the diagnosis",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.evidence.code",
      "path" : "Condition.evidence.code",
      "short" : "Type of genetic evidence",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "AnamneseUndDiagnostik.MethodeDiagnosestellung",
        "comment" : "Methode der Diagnosestellung"
      }]
    },
    {
      "id" : "Condition.evidence.code.coding",
      "path" : "Condition.evidence.code.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "$this"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Condition.evidence.code.coding:geneticEvidence",
      "path" : "Condition.evidence.code.coding",
      "sliceName" : "geneticEvidence",
      "short" : "Indicates genetic evidence",
      "min" : 0,
      "max" : "1",
      "patternCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "106221001",
        "display" : "Genetic finding"
      },
      "mustSupport" : true
    },
    {
      "id" : "Condition.evidence.detail",
      "path" : "Condition.evidence.detail",
      "short" : "Reference to MolGen Variant or Diagnostic Implication",
      "definition" : "Must reference either MII PR MolGen Variante or MII PR MolGen DiagnostischeImplikation resources that contain the genetic findings supporting this diagnosis",
      "comment" : "Should reference: 1) MII PR MolGen Variante (Observation) for specific variant findings, or 2) MII PR MolGen DiagnostischeImplikation (DiagnosticReport) for comprehensive genetic diagnostic reports",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Observation",
        "http://hl7.org/fhir/StructureDefinition/DiagnosticReport"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "Verweis auf MolGen Variante/DiagnostischeImplikation",
        "comment" : "Genetische Befunde"
      }]
    }]
  }
}

```
