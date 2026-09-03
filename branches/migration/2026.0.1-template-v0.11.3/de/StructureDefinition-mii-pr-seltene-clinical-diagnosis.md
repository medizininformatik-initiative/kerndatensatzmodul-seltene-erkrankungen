# MII PR SE Clinical Diagnosis - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR SE Clinical Diagnosis**

## Ressourcenprofil: MII PR SE Clinical Diagnosis 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2026-09-03 | *Maschinenlesbarer Name*:MII_PR_Seltene_ClinicalDiagnosis |

 
Profile for clinical diagnosis of rare diseases with HPO phenotype codes. This profile is used for clinically diagnosed rare diseases based on phenotypic presentation. 

Dieses Profil beschreibt eine klinisch gestellte Diagnose einer seltenen Erkrankung. Es wird verwendet, wenn die Diagnose auf klinischen Befunden und phänotypischen Merkmalen basiert.

**Suchparameter**

Folgende Suchparameter sind für das Modul Seltene Erkrankungen relevant, auch in Kombination:

1. Der Suchparameter `_id` MUSS unterstützt werden:Beispiele:`GET [base]/Condition?_id=1234`Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "_profile" MUSS unterstützt werden:Beispiele:`GET [base]/Condition?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis`Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "category" MUSS unterstützt werden:Beispiele:`GET [base]/Condition?category=http://terminology.hl7.org/CodeSystem/condition-category|encounter-diagnosis`Anwendungshinweise: Weitere Informationen zur Suche nach "category" finden sich in der FHIR-Basisspezifikation - Abschnitt "token".
1. Der Suchparameter "code" MUSS unterstützt werden:Beispiele:`GET [base]/Condition?code=http://fhir.de/CodeSystem/bfarm/icd-10-gm|Q87.4`Anwendungshinweise: Weitere Informationen zur Suche nach "code" finden sich in der FHIR-Basisspezifikation - Abschnitt "token".
1. Der Suchparameter "subject" MUSS unterstützt werden:Beispiele:`GET [base]/Condition?subject=Patient/example`Anwendungshinweise: Weitere Informationen zur Suche nach "subject" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".
1. Der Suchparameter "encounter" MUSS unterstützt werden:Beispiele:`GET [base]/Condition?encounter=Encounter/example`Anwendungshinweise: Weitere Informationen zur Suche nach "encounter" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".
1. Der Suchparameter "recorded-date" MUSS unterstützt werden:Beispiele:`GET [base]/Condition?recorded-date=2024-02-08`Anwendungshinweise: Weitere Informationen zur Suche nach "recorded-date" finden sich in der FHIR-Basisspezifikation - Abschnitt "date".
1. Der Suchparameter "verification-status" MUSS unterstützt werden:Beispiele:`GET [base]/Condition?verification-status=provisional`Anwendungshinweise: Weitere Informationen zur Suche nach "verification-status" finden sich in der FHIR-Basisspezifikation - Abschnitt "token".
1. Der Suchparameter "clinical-status" MUSS unterstützt werden:Beispiele:`GET [base]/Condition?clinical-status=active`Anwendungshinweise: Weitere Informationen zur Suche nach "clinical-status" finden sich in der FHIR-Basisspezifikation - Abschnitt "token".

Beispielinstanzen sind auf der Profilseite im Abschnitt „Examples" verlinkt.

**Usages:**

* Examples for this Profile: [Condition/mii-exa-seltene-condition-cataract](Condition-mii-exa-seltene-condition-cataract.md), [Condition/mii-exa-seltene-condition-marfan-clinical](Condition-mii-exa-seltene-condition-marfan-clinical.md), [Condition/mii-exa-seltene-condition-marfan-suspected](Condition-mii-exa-seltene-condition-marfan-suspected.md), [Condition/mii-exa-seltene-condition-sma-clinical](Condition-mii-exa-seltene-condition-sma-clinical.md)... Show 7 more, [Condition/mii-exa-seltene-condition-sma-suspected](Condition-mii-exa-seltene-condition-sma-suspected.md), [Condition/mii-exa-seltene-example-cf-clinical](Condition-mii-exa-seltene-example-cf-clinical.md), [Condition/mii-exa-seltene-example-eds-excluded-clinical](Condition-mii-exa-seltene-example-eds-excluded-clinical.md), [Condition/mii-exa-seltene-example-marfan-clinical-diagnosis](Condition-mii-exa-seltene-example-marfan-clinical-diagnosis.md), [Condition/mii-exa-seltene-example-marfan-excluded-clinical](Condition-mii-exa-seltene-example-marfan-excluded-clinical.md), [Condition/mii-exa-seltene-example-metabolic-myopathy-excluded](Condition-mii-exa-seltene-example-metabolic-myopathy-excluded.md) and [Condition/mii-exa-seltene-example-noonan-clinical-diagnosis](Condition-mii-exa-seltene-example-noonan-clinical-diagnosis.md)
* CapabilityStatements using this Profile: [MII CPS Seltene Erkrankungen CapabilityStatement](CapabilityStatement-mii-cps-seltene-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.seltene|current/StructureDefinition/StructureDefinition-mii-pr-seltene-clinical-diagnosis.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Diagnose_Condition](https://medizininformatik-initiative.github.io/kerndatensatz-basis/2027.0.0-ballot.rc1/StructureDefinition-mii-pr-diagnose-condition.html) 

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Diagnose_Condition](https://medizininformatik-initiative.github.io/kerndatensatz-basis/2027.0.0-ballot.rc1/StructureDefinition-mii-pr-diagnose-condition.html) 

** Summary **

Mandatory: 1 element(2 nested mandatory elements)
 Must-Support: 15 elements

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [MII_PR_Diagnose_Condition](https://medizininformatik-initiative.github.io/kerndatensatz-basis/2027.0.0-ballot.rc1/StructureDefinition-mii-pr-diagnose-condition.html) 

#### Terminology Bindings (Differential)

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Diagnose_Condition](https://medizininformatik-initiative.github.io/kerndatensatz-basis/2027.0.0-ballot.rc1/StructureDefinition-mii-pr-diagnose-condition.html) 

** Summary **

Mandatory: 1 element(2 nested mandatory elements)
 Must-Support: 15 elements

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-seltene-clinical-diagnosis.csv), [Excel](../StructureDefinition-mii-pr-seltene-clinical-diagnosis.xlsx), [Schematron](../StructureDefinition-mii-pr-seltene-clinical-diagnosis.sch) 



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
      "start" : "2027"
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_PR_Seltene_ClinicalDiagnosis",
  "title" : "MII PR SE Clinical Diagnosis",
  "status" : "active",
  "date" : "2026-09-03T07:33:22+00:00",
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
        "map" : "anamneseUndDiagnostik.klinischeDiagnose",
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
        "map" : "anamneseUndDiagnostik.klinischeDiagnose.feststellungsdatumKlinischeDia",
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
        "map" : "anamneseUndDiagnostik.klinischeDiagnose",
        "comment" : "ICD-10-GM Diagnose"
      }]
    },
    {
      "id" : "Condition.code.coding:orphanet",
      "path" : "Condition.code.coding",
      "sliceName" : "orphanet",
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "anamneseUndDiagnostik.klinischeDiagnose",
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
        "map" : "anamneseUndDiagnostik.phaenotypisierung.hpoTerm",
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
        "map" : "persoenlicheInfosIndexpatient",
        "comment" : "Patient/Indexpatient"
      }]
    },
    {
      "id" : "Condition.encounter",
      "path" : "Condition.encounter",
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "anamneseUndDiagnostik.untersuchungsdatum",
        "comment" : "Untersuchungsdatum"
      }]
    },
    {
      "id" : "Condition.onset[x]",
      "path" : "Condition.onset[x]",
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "anamneseUndDiagnostik.klinischeDiagnose.alterKlinischeDia",
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
        "map" : "anamneseUndDiagnostik.klinischeDiagnose.feststellungsdatumKlinischeDia",
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
        "map" : "anamneseUndDiagnostik.phaenotypisierung.hpoTerm",
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
        "map" : "anamneseUndDiagnostik.phaenotypisierung",
        "comment" : "Verweis auf Phänotypisierung"
      }]
    }]
  }
}

```
