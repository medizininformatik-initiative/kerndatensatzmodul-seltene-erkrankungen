# MII Profile SE HPO Assessment - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII Profile SE HPO Assessment**

## Resource Profile: MII Profile SE HPO Assessment 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment | *Version*:2027.0.0-ballot |
| Active as of 2026-09-02 | *Computable Name*:MII_PR_Seltene_HPO_Assessment |

 
Profile for HPO-based phenotypic observations in the context of rare diseases. This profile uses the Human Phenotype Ontology (HPO) to describe clinical symptoms and phenotypic abnormalities. 

This profile describes phenotyping according to the Human Phenotype Ontology (HPO) in the diagnostics of rare diseases. It enables the structured recording of phenotypic abnormalities and clinical features.

### HL7 Phenomics IG pattern

This profile follows the **HL7 Phenomics Exchange Implementation Guide** pattern for documenting phenotypic features. This means:

* **`value[x]` is not used** — instead, status and severity are recorded in `component` elements
* **`component[status]`** documents whether the phenotype is present (Present) or explicitly excluded (Absent)
* **`component[severity]`** allows specifying a severity (Mild, Moderate, Severe, Profound, Borderline)

This pattern enables more precise and internationally interoperable documentation of phenotypic findings.

### Point-in-time documentation

**Important:** Each HPO observation represents a **specific point in time** of the phenotype assessment. Since phenotypes can change over the course of a disease, it is essential to:

* Document **individual observations** with precise timestamps (`effectiveDateTime`)
* Record **changes over time** via the `component[status].interpretation` element
* Consider **parallel documentation** both as an Observation (point in time) and as a symptom condition (period)

**Note on date recording:** The date (`effectiveDateTime`) is **not** part of the core data sets but **SHOULD** be recorded whenever possible to ensure the temporal traceability of the phenotype development.

This point-in-time recording enables the traceability of disease progression and therapy effects in rare diseases.

### Demarcation from the symptom condition

> **Important:** The distinction between the **HPO observation** and the **symptom condition** is clinically significant:
* **HPO observation**: documents a **single examination/assessment** at a specific point in time (e.g. "arachnodactyly was observed on 2024-03-15")
* **Symptom condition**: documents a **persistent state** over a period (e.g. "the patient has had arachnodactyly since childhood")

A complete example of this distinction can be found in the **Marfan syndrome example**: [Marfan example](marfan-example-annotations.md)

There it is shown how:

* Individual HPO observations are recorded at different examination appointments
* These observations serve as evidence for persistent symptom conditions
* Multiple confirmations of the same phenotype increase diagnostic certainty

### Linking with evidence

The `derivedFrom` element enables linking the HPO observation with concrete clinical findings:

* **Laboratory values**: reference to abnormal laboratory results (e.g. elevated CK values in muscular dystrophy)
* **Imaging**: reference to radiological or other imaging findings
* **Other observations**: linking with further clinical assessments

This referencing creates transparency about the basis of the phenotypic assessment.

### Phenotype status (Present/Absent)

The `component[status]` element documents whether a phenotype is present or explicitly excluded. This enables the precise documentation of "negative" findings (the phenotype was checked and is not present).

```
{
  "component": [{
    "code": {
      "coding": [{
        "system": "http://snomed.info/sct",
        "code": "260411009",
        "display": "Presence findings"
      }]
    },
    "valueCodeableConcept": {
      "coding": [{
        "system": "http://loinc.org",
        "code": "LA9633-4",
        "display": "Present"
      }]
    }
  }]
}

```

#### Available status codes

| | | |
| :--- | :--- | :--- |
| LA9633-4 | Present | The phenotype is present |
| LA9634-2 | Absent | The phenotype is explicitly excluded |

### Severity

The optional `component[severity]` element enables documenting the severity of a phenotype according to the HPO severity ontology:

```
{
  "component": [{
    "code": {
      "coding": [{
        "system": "http://purl.obolibrary.org/obo/hp.owl",
        "code": "HP:0012824",
        "display": "Severity"
      }]
    },
    "valueCodeableConcept": {
      "coding": [{
        "system": "http://purl.obolibrary.org/obo/hp.owl",
        "code": "HP:0012826",
        "display": "Moderate"
      }]
    }
  }]
}

```

#### Available severity codes

| | | |
| :--- | :--- | :--- |
| HP:0012825 | Mild | Mild manifestation |
| HP:0012826 | Moderate | Moderate manifestation |
| HP:0012828 | Severe | Severe manifestation |
| HP:0012829 | Profound | Very severe manifestation |
| HP:0012827 | Borderline | Borderline manifestation |

### Change status of HPO phenotypes

In accordance with the requirements of the Model Project Genome Sequencing, this profile supports the documentation of changes in HPO phenotypes over time. The change status is documented in the `component[status].interpretation` element, together with the presence status:

```
{
  "component": [{
    "code": {
      "coding": [{
        "system": "http://snomed.info/sct",
        "code": "260411009",
        "display": "Presence findings"
      }]
    },
    "valueCodeableConcept": {
      "coding": [{
        "system": "http://loinc.org",
        "code": "LA9633-4",
        "display": "Present"
      }]
    },
    "interpretation": [{
      "coding": [{
        "system": "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-hpo-change-status",
        "code": "improved",
        "display": "Verbessert"
      }]
    }]
  }]
}

```

#### Available change status codes

| | | |
| :--- | :--- | :--- |
| newly-added | Newly added | The phenotype was newly observed/diagnosed |
| improved | Improved | The phenotype has improved |
| degraded | Degraded | The phenotype has worsened |
| no-longer-observed | No longer observed | The phenotype is no longer observed/has disappeared |
| unchanged | Unchanged | The phenotype has remained unchanged |

-------

**Search parameters**

The following search parameters are relevant for the Rare Diseases module, also in combination:

1. The search parameter `_id` MUST be supported:Examples:`GET [base]/Observation?_id=1234`Usage notes: Further information on searching for "_id" can be found in the [FHIR base specification, section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. The search parameter "_profile" MUST be supported:Examples:`GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment`Usage notes: Further information on searching for "_profile" can be found in the [FHIR base specification, section "token"](http://hl7.org/fhir/R4/search.html#all).
1. The search parameter "category" MUST be supported:Examples:`GET [base]/Observation?category=http://terminology.hl7.org/CodeSystem/observation-category|laboratory`Usage notes: Further information on searching for "category" can be found in the FHIR base specification, section "token".
1. The search parameter "code" MUST be supported:Examples:`GET [base]/Observation?code=http://loinc.org|79716-7`Usage notes: Further information on searching for "code" can be found in the FHIR base specification, section "token".
1. The search parameter "subject" MUST be supported:Examples:`GET [base]/Observation?subject=Patient/example`Usage notes: Further information on searching for "subject" can be found in the FHIR base specification, section "reference".
1. The search parameter "focus" MUST be supported:Examples:`GET [base]/Observation?focus=Condition/example`Usage notes: Further information on searching for "focus" can be found in the FHIR base specification, section "reference".
1. The search parameter "encounter" MUST be supported:Examples:`GET [base]/Observation?encounter=Encounter/example`Usage notes: Further information on searching for "encounter" can be found in the FHIR base specification, section "reference".
1. The search parameter "date" MUST be supported:Examples:`GET [base]/Observation?date=2024-02-08`Usage notes: Further information on searching for "date" can be found in the FHIR base specification, section "date".
1. The search parameter "derived-from" MUST be supported:Examples:`GET [base]/Observation?derived-from=Observation/example`Usage notes: Further information on searching for "derived-from" can be found in the FHIR base specification, section "reference".

Example instances are linked in the "Examples" section of the profile page.

**Usages:**

* Examples for this Profile: [Observation/anteverted-nares](Observation-anteverted-nares.md), [Observation/aortic-root-dilatation](Observation-aortic-root-dilatation.md), [Observation/arachnodactyly](Observation-arachnodactyly.md), [Observation/chronic-diarrhea](Observation-chronic-diarrhea.md)... Show 11 more, [Observation/failure-to-thrive](Observation-failure-to-thrive.md), [Observation/hypertelorism](Observation-hypertelorism.md), [Observation/lens-dislocation](Observation-lens-dislocation.md), [Observation/lymphedema](Observation-lymphedema.md), [Observation/mii-exa-seltene-hpo-assessment-change-status](Observation-mii-exa-seltene-hpo-assessment-change-status.md), [Observation/mii-exa-seltene-hpo-assessment-excluded](Observation-mii-exa-seltene-hpo-assessment-excluded.md), [Observation/mii-exa-seltene-hpo-assessment-severity](Observation-mii-exa-seltene-hpo-assessment-severity.md), [Observation/mii-exa-seltene-hpo-assessment](Observation-mii-exa-seltene-hpo-assessment.md), [Observation/recurrent-respiratory-infections](Observation-recurrent-respiratory-infections.md), [Observation/tall-stature](Observation-tall-stature.md) and [Observation/vsd](Observation-vsd.md)
* CapabilityStatements using this Profile: [MII CPS Seltene Erkrankungen CapabilityStatement](CapabilityStatement-mii-cps-seltene-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.seltene|current/StructureDefinition/StructureDefinition-mii-pr-seltene-hpo-assessment.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-seltene-hpo-assessment.csv), [Excel](../StructureDefinition-mii-pr-seltene-hpo-assessment.xlsx), [Schematron](../StructureDefinition-mii-pr-seltene-hpo-assessment.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-seltene-hpo-assessment",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment",
  "version" : "2027.0.0-ballot",
  "name" : "MII_PR_Seltene_HPO_Assessment",
  "title" : "MII Profile SE HPO Assessment",
  "status" : "active",
  "date" : "2026-09-02T15:16:54+00:00",
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
  "description" : "Profile for HPO-based phenotypic observations in the context of rare diseases. This profile uses the Human Phenotype Ontology (HPO) to describe clinical symptoms and phenotypic abnormalities.",
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
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation",
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "anamneseUndDiagnostik.phaenotypisierung",
        "comment" : "Phänotypisierung"
      }]
    },
    {
      "id" : "Observation.status",
      "path" : "Observation.status",
      "mustSupport" : true
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "short" : "HPO-phänotypischer Beobachtungscode",
      "definition" : "Code aus der Human Phenotype Ontology zur Beschreibung der phänotypischen Anomalie",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-hpo-phenotypic-observation-codes"
      },
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "anamneseUndDiagnostik.phaenotypisierung.hpoTerm",
        "comment" : "HPO-Term des Symptoms"
      }]
    },
    {
      "id" : "Observation.code.coding.version",
      "path" : "Observation.code.coding.version",
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "anamneseUndDiagnostik.phaenotypisierung.hpoVersion",
        "comment" : "Version HPO-Term"
      }]
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "short" : "Patient mit der phänotypischen Anomalie",
      "min" : 1,
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
      "id" : "Observation.encounter",
      "path" : "Observation.encounter",
      "short" : "Gesundheitskontakt, bei dem der Phänotyp beobachtet wurde",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "anamneseUndDiagnostik.untersuchungsdatum",
        "comment" : "Untersuchungsdatum"
      }]
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Zeitpunkt der Phänotyp-Beobachtung oder Beobachtungszeitraum",
      "type" : [{
        "code" : "dateTime"
      },
      {
        "code" : "Period"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.effective[x]:effectiveDateTime",
      "path" : "Observation.effective[x]",
      "sliceName" : "effectiveDateTime",
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
      "id" : "Observation.effective[x]:effectivePeriod",
      "path" : "Observation.effective[x]",
      "sliceName" : "effectivePeriod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "Observation.effective[x]:effectivePeriod.start",
      "path" : "Observation.effective[x].start",
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "anamneseUndDiagnostik.phaenotypisierung.zeitraumSymptom.zeitraumSymptom",
        "comment" : "Startdatum des Symptoms"
      }]
    },
    {
      "id" : "Observation.effective[x]:effectivePeriod.end",
      "path" : "Observation.effective[x].end",
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "anamneseUndDiagnostik.phaenotypisierung.zeitraumSymptom.zeitraumSymptom",
        "comment" : "Enddatum des Symptoms"
      }]
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "short" : "Not used - use component instead",
      "comment" : "Following HL7 Phenomics IG pattern, phenotype status and severity are captured in component elements rather than value[x].",
      "max" : "0"
    },
    {
      "id" : "Observation.note",
      "path" : "Observation.note",
      "short" : "Zusätzliche klinische Anmerkungen zum Phänotyp",
      "mustSupport" : true
    },
    {
      "id" : "Observation.bodySite",
      "path" : "Observation.bodySite",
      "short" : "Körperstelle, an der der Phänotyp beobachtet wird",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://hl7.org/fhir/ValueSet/body-site"
      }
    },
    {
      "id" : "Observation.method",
      "path" : "Observation.method",
      "short" : "Methode zur Beobachtung oder Bewertung des Phänotyps",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://hl7.org/fhir/ValueSet/observation-methods"
      },
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "anamneseUndDiagnostik.methodeDiagnosestellung",
        "comment" : "Methode der Diagnosestellung"
      }]
    },
    {
      "id" : "Observation.derivedFrom",
      "path" : "Observation.derivedFrom",
      "short" : "Verwandte Beobachtungen oder Bewertungen",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "Verweis auf zugrunde liegende Befunde",
        "comment" : "Laborbefunde oder Bildgebung"
      }]
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "code"
        }],
        "rules" : "open"
      },
      "short" : "Phenotype status, severity, and clinical modifiers",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:status",
      "path" : "Observation.component",
      "sliceName" : "status",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:status.code",
      "path" : "Observation.component.code",
      "short" : "Phenotype status code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "260411009",
          "display" : "Presence findings"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:status.value[x]",
      "path" : "Observation.component.value[x]",
      "short" : "Present or Absent",
      "definition" : "LOINC LA9633-4 'Present' for observed phenotypes, LA9634-2 'Absent' for explicitly excluded phenotypes.",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-hpo-presence-status"
      },
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "anamneseUndDiagnostik.phaenotypisierung.hpoExcluded",
        "comment" : "HPO-Term ausgeschlossen (true wenn LA9634-2 'Absent', false wenn LA9633-4 'Present')"
      },
      {
        "identity" : "SE-LogicalModel",
        "map" : "anamneseUndDiagnostik.phaenotypisierung.hpoStatus",
        "comment" : "Status HPO-Term (Present/Absent)"
      }]
    },
    {
      "id" : "Observation.component:status.interpretation",
      "path" : "Observation.component.interpretation",
      "short" : "Änderungsstatus des Symptoms/Phänotyps über Zeit",
      "definition" : "Dokumentiert Änderungen des Phänotyps über Zeit gemäß Modellvorhaben Genomsequenzierung (MVGenomSeq). Codes: newly-added, improved, degraded, no-longer-observed, unchanged.",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-symptom-change-status-combined"
      },
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "anamneseUndDiagnostik.phaenotypisierung.verlaufSymptom",
        "comment" : "Verlauf Symptom"
      }]
    },
    {
      "id" : "Observation.component:status.interpretation.coding.code",
      "path" : "Observation.component.interpretation.coding.code",
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "anamneseUndDiagnostik.phaenotypisierung.hpoStatus",
        "comment" : "Change Status"
      }]
    },
    {
      "id" : "Observation.component:severity",
      "path" : "Observation.component",
      "sliceName" : "severity",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:severity.code",
      "path" : "Observation.component.code",
      "short" : "Severity modifier",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://human-phenotype-ontology.org",
          "code" : "HP:0012824",
          "display" : "Severity"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:severity.value[x]",
      "path" : "Observation.component.value[x]",
      "short" : "Severity grade",
      "definition" : "HPO severity codes: Mild, Moderate, Severe, Profound, Borderline",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-hpo-severity"
      },
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "anamneseUndDiagnostik.phaenotypisierung.hpoStatus",
        "comment" : "Schweregrad (Mild/Moderate/Severe/Profound/Borderline)"
      }]
    }]
  }
}

```
