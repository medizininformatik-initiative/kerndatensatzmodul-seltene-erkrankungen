# MII Profile SE Symptom Condition - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII Profile SE Symptom Condition**

## Resource Profile: MII Profile SE Symptom Condition 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-symptom-condition | *Version*:2027.0.0-ballot.rc1 |
| Active as of 2026-09-04 | *Computable Name*:MII_PR_Seltene_Symptom_Condition |

 
Profile for symptom-based conditions in the context of rare diseases. This profile captures symptomatic conditions with temporal characteristics, complementing the HPO Assessment Observation profile. 

This profile describes symptom-based conditions in the context of rare diseases. It records symptomatic conditions with temporal characteristics and complements the HPO assessment observation profile.

### Examples of coded symptoms

Different coding systems can be used when recording symptoms of rare diseases:

#### ICD-10-GM codes

* **R04.0** (epistaxis/nosebleed) — a common symptom in von Willebrand syndrome
* **S42.3** (fracture of the humeral shaft) — a typical pathological fracture in osteogenesis imperfecta

#### SNOMED CT codes for laboratory abnormalities

* **409675001** (Partial thromboplastin time increased) — prolonged PTT in coagulation disorders
* **166627004** (Serum alkaline phosphatase above reference range) — elevated alkaline phosphatase in bone metabolism disorders
* **1153490002** (Serum creatine kinase above reference range) — elevated CK in muscular dystrophies

#### HPO codes for physical phenotypes

HPO is ideal for the precise description of physical/phenotypic abnormalities:

* **HP:0000978** (Bruising susceptibility) — tendency to hematomas in von Willebrand syndrome
* **HP:0002659** (Increased susceptibility to fractures) — fracture tendency in osteogenesis imperfecta
* **HP:0000939** (Osteoporosis) — in various skeletal dysplasias
* **HP:0003198** (Myopathy) — in muscular dystrophies
* **HP:0001270** (Motor delay) — delayed motor development in neuromuscular diseases

#### MONDO codes (secondary harmonization ontology)

> **Note:** MONDO is a **secondary harmonization ontology** for improving international interoperability. Primary coding continues to use ICD-10-GM, SNOMED CT or HPO. MONDO codes can be added **optionally**.

MONDO (Monarch Disease Ontology) harmonizes different classifications (SNOMED CT, Orphanet, OMIM, ICD) and enables integration with international standards such as [Phenopackets](https://phenopacket-schema.readthedocs.io/) and GA4GH:

* **MONDO:0007947** (Marfan syndrome) — corresponds to Orpha:558, OMIM:154700
* **MONDO:0001516** (spinal muscular atrophy) — corresponds to Orpha:70
* **MONDO:0009061** (cystic fibrosis) — corresponds to Orpha:586, OMIM:219700

Further information on MONDO can be found under [Terminologies](code-systems.md).

-------

### Usage

The symptom condition profile is used for:

* Documenting symptoms as independent conditions
* Recording symptom courses over time
* Linking with HPO-coded observations
* Representing symptom clusters in rare diseases

### Demarcation from other profiles

| | |
| :--- | :--- |
| **Symptom condition** | Symptoms as independent conditions with a course |
| **HPO assessment** | Individual phenotypic observations |
| **Clinical diagnosis** | Confirmed clinical diagnoses |
| **Genetic diagnosis** | Genetically confirmed diagnoses |

> **Important:** The distinction between the **symptom condition** and the **HPO observation** is clinically significant:
* **Symptom condition**: documents a **persistent state** over a period (e.g. "the patient has had arachnodactyly since childhood")
* **HPO observation**: documents a **single examination/assessment** at a specific point in time (e.g. "arachnodactyly was observed on 2024-03-15")

A complete example of this distinction can be found in the **Marfan syndrome example**: [Marfan example](marfan-example-annotations.md)

-------

**Search parameters** are declared module-wide in the [CapabilityStatement](CapabilityStatement-mii-cps-seltene-capabilitystatement.md) — machine-readable and complete there, rather than repeated by hand per profile.

Example instances are linked in the "Examples" section of the profile page.

**Usages:**

* Examples for this Profile: [Condition/mii-exa-seltene-symptom-condition](Condition-mii-exa-seltene-symptom-condition.md)
* CapabilityStatements using this Profile: [MII CPS Seltene Erkrankungen CapabilityStatement](CapabilityStatement-mii-cps-seltene-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.seltene|current/StructureDefinition/StructureDefinition-mii-pr-seltene-symptom-condition.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-seltene-symptom-condition.csv), [Excel](../StructureDefinition-mii-pr-seltene-symptom-condition.xlsx), [Schematron](../StructureDefinition-mii-pr-seltene-symptom-condition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-seltene-symptom-condition",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-symptom-condition",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_PR_Seltene_Symptom_Condition",
  "title" : "MII Profile SE Symptom Condition",
  "status" : "active",
  "date" : "2026-09-04T16:57:12+00:00",
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
  "description" : "Profile for symptom-based conditions in the context of rare diseases. This profile captures symptomatic conditions with temporal characteristics, complementing the HPO Assessment Observation profile.",
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
  "type" : "Condition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Condition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Condition",
      "path" : "Condition",
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "anamneseUndDiagnostik.phaenotypisierung",
        "comment" : "Phänotypisierung als Condition"
      }]
    },
    {
      "id" : "Condition.id",
      "path" : "Condition.id",
      "mustSupport" : true
    },
    {
      "id" : "Condition.meta",
      "path" : "Condition.meta",
      "mustSupport" : true
    },
    {
      "id" : "Condition.identifier",
      "path" : "Condition.identifier",
      "mustSupport" : true
    },
    {
      "id" : "Condition.clinicalStatus",
      "path" : "Condition.clinicalStatus",
      "short" : "Klinischer Status der Symptom-Erkrankung",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/condition-clinical"
      }
    },
    {
      "id" : "Condition.verificationStatus",
      "path" : "Condition.verificationStatus",
      "short" : "Verifikationsstatus der Symptom-Erkrankung",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/condition-ver-status"
      }
    },
    {
      "id" : "Condition.category",
      "path" : "Condition.category",
      "short" : "Kategorie der Erkrankung - muss Symptom-Kategorie enthalten",
      "definition" : "Kategoriecodes, die die Erkrankung klassifizieren, mit besonderem Fokus auf symptombezogene Kategorien",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.severity",
      "path" : "Condition.severity",
      "short" : "Schweregrad der Symptom-Erkrankung",
      "definition" : "Schweregradbewertung der Symptom-Erkrankung unter Verwendung von HPO-Schweregrad-Werten",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-hpo-severity"
      },
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "anamneseUndDiagnostik.phaenotypisierung.verlaufSymptom",
        "comment" : "Schweregrad/Verlauf"
      }]
    },
    {
      "id" : "Condition.code",
      "path" : "Condition.code",
      "short" : "HPO-basierter Symptom-Erkrankungs-Code",
      "definition" : "Code zur Identifikation der Symptom-Erkrankung, vorzugsweise unter Verwendung von Human Phenotype Ontology (HPO) Codes",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-hpo-phenotypic-observation-codes"
      }
    },
    {
      "id" : "Condition.code.coding",
      "path" : "Condition.code.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "$this"
        }],
        "description" : "Slicing für verschiedene Codesysteme zur Symptom-Codierung",
        "ordered" : false,
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "Condition.code.coding:hpoCoding",
      "path" : "Condition.code.coding",
      "sliceName" : "hpoCoding",
      "short" : "HPO Code für das Symptom",
      "definition" : "Human Phenotype Ontology Code zur Beschreibung des phänotypischen Symptoms",
      "min" : 0,
      "max" : "1",
      "patternCoding" : {
        "system" : "http://purl.obolibrary.org/obo/hp.owl"
      },
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "anamneseUndDiagnostik.phaenotypisierung.hpoTerm",
        "comment" : "HPO-Term des Symptoms"
      }]
    },
    {
      "id" : "Condition.code.coding:hpoCoding.system",
      "path" : "Condition.code.coding.system",
      "min" : 1
    },
    {
      "id" : "Condition.code.coding:hpoCoding.code",
      "path" : "Condition.code.coding.code",
      "min" : 1
    },
    {
      "id" : "Condition.code.coding:hpoCoding.display",
      "path" : "Condition.code.coding.display",
      "mustSupport" : true
    },
    {
      "id" : "Condition.code.coding:snomedCoding",
      "path" : "Condition.code.coding",
      "sliceName" : "snomedCoding",
      "short" : "SNOMED CT Code für das Symptom",
      "definition" : "SNOMED CT Code zur klinischen Beschreibung des Symptoms",
      "min" : 0,
      "max" : "1",
      "patternCoding" : {
        "system" : "http://snomed.info/sct"
      },
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "anamneseUndDiagnostik.phaenotypisierung",
        "comment" : "SNOMED CT Symptom"
      }]
    },
    {
      "id" : "Condition.code.coding:snomedCoding.system",
      "path" : "Condition.code.coding.system",
      "min" : 1
    },
    {
      "id" : "Condition.code.coding:snomedCoding.code",
      "path" : "Condition.code.coding.code",
      "min" : 1
    },
    {
      "id" : "Condition.code.coding:snomedCoding.display",
      "path" : "Condition.code.coding.display",
      "mustSupport" : true
    },
    {
      "id" : "Condition.code.coding:icd10GMCoding",
      "path" : "Condition.code.coding",
      "sliceName" : "icd10GMCoding",
      "short" : "ICD-10-GM Code für das Symptom",
      "definition" : "ICD-10 German Modification Code für die Symptom-Klassifikation",
      "min" : 0,
      "max" : "1",
      "patternCoding" : {
        "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm"
      },
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "anamneseUndDiagnostik.phaenotypisierung",
        "comment" : "ICD-10-GM Symptom"
      }]
    },
    {
      "id" : "Condition.code.coding:icd10GMCoding.system",
      "path" : "Condition.code.coding.system",
      "min" : 1
    },
    {
      "id" : "Condition.code.coding:icd10GMCoding.code",
      "path" : "Condition.code.coding.code",
      "min" : 1
    },
    {
      "id" : "Condition.code.coding:icd10GMCoding.display",
      "path" : "Condition.code.coding.display",
      "mustSupport" : true
    },
    {
      "id" : "Condition.code.coding:mondoCoding",
      "path" : "Condition.code.coding",
      "sliceName" : "mondoCoding",
      "short" : "MONDO Code für das Symptom",
      "definition" : "Monarch Disease Ontology (MONDO) Code für internationale Interoperabilität. MONDO harmonisiert SNOMED, ORDO, OMIM und ICD automatisch und ermöglicht die Integration mit internationalen Projekten wie Phenopackets und GA4GH.",
      "min" : 0,
      "max" : "1",
      "patternCoding" : {
        "system" : "http://purl.obolibrary.org/obo/mondo.owl"
      },
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "anamneseUndDiagnostik.phaenotypisierung",
        "comment" : "MONDO Symptom (internationale Interoperabilität)"
      }]
    },
    {
      "id" : "Condition.code.coding:mondoCoding.system",
      "path" : "Condition.code.coding.system",
      "min" : 1
    },
    {
      "id" : "Condition.code.coding:mondoCoding.code",
      "path" : "Condition.code.coding.code",
      "min" : 1
    },
    {
      "id" : "Condition.code.coding:mondoCoding.display",
      "path" : "Condition.code.coding.display",
      "mustSupport" : true
    },
    {
      "id" : "Condition.bodySite",
      "path" : "Condition.bodySite",
      "short" : "Anatomische Lokalisation des Symptoms",
      "definition" : "Die anatomische Lokalisation, wo sich das Symptom manifestiert",
      "mustSupport" : true
    },
    {
      "id" : "Condition.subject",
      "path" : "Condition.subject",
      "short" : "Patient mit der Symptom-Erkrankung",
      "definition" : "Referenz auf den Patienten, der diese Symptom-Erkrankung hat",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "persoenlicheInfosIndexpatient",
        "comment" : "Patient/Indexpatient"
      }]
    },
    {
      "id" : "Condition.encounter",
      "path" : "Condition.encounter",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "anamneseUndDiagnostik.untersuchungsdatum",
        "comment" : "Untersuchungskontakt"
      }]
    },
    {
      "id" : "Condition.onset[x]",
      "path" : "Condition.onset[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Beginn der Symptom-Erkrankung",
      "definition" : "Geschätztes oder tatsächliches Datum, Alter, Zeitraum oder zeitliche Beschreibung, wann die Symptom-Erkrankung begann",
      "mustSupport" : true
    },
    {
      "id" : "Condition.onset[x]:onsetDateTime",
      "path" : "Condition.onset[x]",
      "sliceName" : "onsetDateTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }],
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "anamneseUndDiagnostik.phaenotypisierung.zeitraumSymptom.zeitraumSymptom",
        "comment" : "Startdatum des Symptoms"
      }]
    },
    {
      "id" : "Condition.onset[x]:onsetPeriod",
      "path" : "Condition.onset[x]",
      "sliceName" : "onsetPeriod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "Condition.onset[x]:onsetPeriod.start",
      "path" : "Condition.onset[x].start",
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "anamneseUndDiagnostik.phaenotypisierung.zeitraumSymptom.zeitraumSymptom",
        "comment" : "Beginn Symptomzeitraum"
      }]
    },
    {
      "id" : "Condition.onset[x]:onsetPeriod.end",
      "path" : "Condition.onset[x].end",
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "anamneseUndDiagnostik.phaenotypisierung.zeitraumSymptom.zeitraumSymptom",
        "comment" : "Ende Symptomzeitraum"
      }]
    },
    {
      "id" : "Condition.onset[x]:onsetAge",
      "path" : "Condition.onset[x]",
      "sliceName" : "onsetAge",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Age"
      }],
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "anamneseUndDiagnostik.phaenotypisierung.zeitraumSymptom.alterSymptom",
        "comment" : "Alter bei Symptombeginn"
      }]
    },
    {
      "id" : "Condition.onset[x]:onsetString",
      "path" : "Condition.onset[x]",
      "sliceName" : "onsetString",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "anamneseUndDiagnostik.phaenotypisierung.zeitraumSymptom.lebensphase",
        "comment" : "Lebensphase Symptom"
      }]
    },
    {
      "id" : "Condition.abatement[x]",
      "path" : "Condition.abatement[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Auflösung der Symptom-Erkrankung",
      "definition" : "Datum, Alter, Zeitraum oder zeitliche Beschreibung, wann die Symptom-Erkrankung abgeklungen ist oder in Remission ging",
      "mustSupport" : true
    },
    {
      "id" : "Condition.abatement[x]:abatementDateTime",
      "path" : "Condition.abatement[x]",
      "sliceName" : "abatementDateTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }],
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "Ende des Symptoms",
        "comment" : "Enddatum des Symptoms"
      }]
    },
    {
      "id" : "Condition.recordedDate",
      "path" : "Condition.recordedDate",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "anamneseUndDiagnostik.untersuchungsdatum",
        "comment" : "Dokumentationsdatum"
      }]
    },
    {
      "id" : "Condition.stage",
      "path" : "Condition.stage",
      "short" : "Stadium oder Progression der Symptom-Erkrankung",
      "mustSupport" : true
    },
    {
      "id" : "Condition.stage.summary",
      "path" : "Condition.stage.summary",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-hpo-severity"
      }
    },
    {
      "id" : "Condition.stage.assessment",
      "path" : "Condition.stage.assessment",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Observation",
        "http://hl7.org/fhir/StructureDefinition/DiagnosticReport"]
      }]
    },
    {
      "id" : "Condition.evidence",
      "path" : "Condition.evidence",
      "short" : "Unterstützende Evidenz für die Symptom-Erkrankung",
      "mustSupport" : true
    },
    {
      "id" : "Condition.evidence.code",
      "path" : "Condition.evidence.code",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-hpo-phenotypic-observation-codes"
      },
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "anamneseUndDiagnostik.phaenotypisierung.hpoTerm",
        "comment" : "Unterstützende HPO-Symptome"
      }]
    },
    {
      "id" : "Condition.evidence.detail",
      "path" : "Condition.evidence.detail",
      "short" : "Unterstützende Beobachtungen oder Dokumente",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Observation",
        "http://hl7.org/fhir/StructureDefinition/DocumentReference",
        "http://hl7.org/fhir/StructureDefinition/DiagnosticReport"]
      }],
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "anamneseUndDiagnostik.phaenotypisierung",
        "comment" : "Verweis auf Beobachtungen"
      }]
    },
    {
      "id" : "Condition.note",
      "path" : "Condition.note",
      "short" : "Zusätzliche Anmerkungen zur Symptom-Erkrankung",
      "definition" : "Zusätzliche Beschreibung der Symptom-Erkrankung, die in anderen Feldern nicht erfasst ist",
      "mustSupport" : true
    }]
  }
}

```
