# MII Profile SE Clinical Impression - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2026.0.1

## Resource Profile: MII Profile SE Clinical Impression 

 
Profile for clinical impressions in the context of rare diseases. This profile captures clinical assessments and suspected diagnoses based on phenotypic findings and symptoms. 

**Usages:**

* Examples for this Profile: [ClinicalImpression/clinical-impression-erstvorstellung](ClinicalImpression-clinical-impression-erstvorstellung.md), [ClinicalImpression/clinical-impression-nachsorge](ClinicalImpression-clinical-impression-nachsorge.md) and [ClinicalImpression/clinical-impression-seltene-assessment](ClinicalImpression-clinical-impression-seltene-assessment.md)
* CapabilityStatements using this Profile: [MII CPS Seltene Erkrankungen CapabilityStatement](CapabilityStatement-mii-cps-seltene-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/mii-ig-seltene-erkrankungen-v2026-de|current/StructureDefinition/StructureDefinition-mii-pr-seltene-clinical-impression.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-seltene-clinical-impression.csv), [Excel](../StructureDefinition-mii-pr-seltene-clinical-impression.xlsx), [Schematron](../StructureDefinition-mii-pr-seltene-clinical-impression.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-seltene-clinical-impression",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-impression",
  "version" : "2026.0.1",
  "name" : "MII_PR_Seltene_ClinicalImpression",
  "title" : "MII Profile SE Clinical Impression",
  "status" : "active",
  "date" : "2026-07-24T06:29:13+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Profile for clinical impressions in the context of rare diseases. This profile captures clinical assessments and suspected diagnoses based on phenotypic findings and symptoms.",
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
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ClinicalImpression",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ClinicalImpression",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ClinicalImpression",
      "path" : "ClinicalImpression",
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "AnamneseUndDiagnostik",
        "comment" : "Anamnese und Diagnostik"
      }]
    },
    {
      "id" : "ClinicalImpression.id",
      "path" : "ClinicalImpression.id",
      "mustSupport" : true
    },
    {
      "id" : "ClinicalImpression.meta",
      "path" : "ClinicalImpression.meta",
      "mustSupport" : true
    },
    {
      "id" : "ClinicalImpression.identifier",
      "path" : "ClinicalImpression.identifier",
      "mustSupport" : true
    },
    {
      "id" : "ClinicalImpression.status",
      "path" : "ClinicalImpression.status",
      "short" : "Status der klinischen Beurteilung",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/clinicalimpression-status"
      }
    },
    {
      "id" : "ClinicalImpression.code",
      "path" : "ClinicalImpression.code",
      "short" : "Art der klinischen Beurteilung",
      "definition" : "Kategorisiert die Art der klinischen Beurteilung, die erstellt wird",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "AnamneseUndDiagnostik.Untersuchungsanlass",
        "comment" : "Untersuchungsanlass"
      }]
    },
    {
      "id" : "ClinicalImpression.description",
      "path" : "ClinicalImpression.description",
      "short" : "Zusammenfassung der klinischen Beurteilung",
      "definition" : "Eine Zusammenfassung der Beurteilung mit relevanter klinischer Begründung",
      "mustSupport" : true
    },
    {
      "id" : "ClinicalImpression.subject",
      "path" : "ClinicalImpression.subject",
      "short" : "Patient, der beurteilt wird",
      "definition" : "Referenz auf den Patienten, für den diese klinische Beurteilung erstellt wird",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "Patient",
        "comment" : "Patient/Indexpatient"
      }]
    },
    {
      "id" : "ClinicalImpression.encounter",
      "path" : "ClinicalImpression.encounter",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "AnamneseUndDiagnostik.Untersuchungsdatum",
        "comment" : "Untersuchungskontakt"
      }]
    },
    {
      "id" : "ClinicalImpression.effective[x]",
      "path" : "ClinicalImpression.effective[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Zeitpunkt der Beurteilung",
      "definition" : "Der Zeitpunkt oder Zeitraum, über den die klinische Beurteilung gebildet wurde",
      "mustSupport" : true
    },
    {
      "id" : "ClinicalImpression.effective[x]:effectiveDateTime",
      "path" : "ClinicalImpression.effective[x]",
      "sliceName" : "effectiveDateTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }],
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "AnamneseUndDiagnostik.Untersuchungsdatum",
        "comment" : "Untersuchungsdatum"
      }]
    },
    {
      "id" : "ClinicalImpression.effective[x]:effectivePeriod",
      "path" : "ClinicalImpression.effective[x]",
      "sliceName" : "effectivePeriod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "ClinicalImpression.effective[x]:effectivePeriod.start",
      "path" : "ClinicalImpression.effective[x].start",
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "AnamneseUndDiagnostik.Untersuchungsdatum",
        "comment" : "Beginn der Untersuchung"
      }]
    },
    {
      "id" : "ClinicalImpression.effective[x]:effectivePeriod.end",
      "path" : "ClinicalImpression.effective[x].end",
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "AnamneseUndDiagnostik.Untersuchungsdatum",
        "comment" : "Ende der Untersuchung"
      }]
    },
    {
      "id" : "ClinicalImpression.date",
      "path" : "ClinicalImpression.date",
      "short" : "Wann die Beurteilung dokumentiert wurde",
      "definition" : "Gibt an, wann die klinische Beurteilung dokumentiert wurde",
      "mustSupport" : true
    },
    {
      "id" : "ClinicalImpression.problem",
      "path" : "ClinicalImpression.problem",
      "short" : "Relevante Probleme/Erkrankungen",
      "definition" : "Eine Liste der relevanten Probleme/Erkrankungen für diesen Patienten, die die klinische Beurteilung beeinflussen können",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "AnamneseUndDiagnostik.KlinischeDiagnose",
        "comment" : "Klinische Diagnose/Verdacht"
      }]
    },
    {
      "id" : "ClinicalImpression.investigation",
      "path" : "ClinicalImpression.investigation",
      "short" : "Eine oder mehrere Untersuchungsserien",
      "mustSupport" : true
    },
    {
      "id" : "ClinicalImpression.investigation.code",
      "path" : "ClinicalImpression.investigation.code",
      "short" : "Art der Untersuchung, die im Rahmen der Beurteilung durchgeführt wurde",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "AnamneseUndDiagnostik.MethodeDiagnosestellung",
        "comment" : "Methode der Diagnosestellung"
      }]
    },
    {
      "id" : "ClinicalImpression.investigation.item",
      "path" : "ClinicalImpression.investigation.item",
      "short" : "Unters",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Observation",
        "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse",
        "http://hl7.org/fhir/StructureDefinition/FamilyMemberHistory",
        "http://hl7.org/fhir/StructureDefinition/DiagnosticReport",
        "http://hl7.org/fhir/StructureDefinition/RiskAssessment"]
      }],
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "AnamneseUndDiagnostik.Phaenotypisierung",
        "comment" : "Durchgeführte Untersuchungen"
      }]
    },
    {
      "id" : "ClinicalImpression.summary",
      "path" : "ClinicalImpression.summary",
      "short" : "Zusammenfassung der klinischen Beurteilung",
      "definition" : "Eine Textzusammenfassung der Beurteilung mit hervorgehobenen wichtigsten Aspekten",
      "mustSupport" : true
    },
    {
      "id" : "ClinicalImpression.finding",
      "path" : "ClinicalImpression.finding",
      "short" : "Klinische Befunde der Untersuchung",
      "definition" : "Klinische Befunde, die auf Basis der Untersuchungen festgestellt wurden",
      "mustSupport" : true
    },
    {
      "id" : "ClinicalImpression.finding.itemCodeableConcept",
      "path" : "ClinicalImpression.finding.itemCodeableConcept",
      "short" : "Klinischer Befund",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-hpo-phenotypic-observation-codes"
      },
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "AnamneseUndDiagnostik.Phaenotypisierung.HPOTerm",
        "comment" : "HPO-Term des Symptoms"
      }]
    },
    {
      "id" : "ClinicalImpression.finding.itemReference",
      "path" : "ClinicalImpression.finding.itemReference",
      "short" : "Referenz auf klinischen Befund",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Condition",
        "http://hl7.org/fhir/StructureDefinition/Observation"]
      }],
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "AnamneseUndDiagnostik.Phaenotypisierung",
        "comment" : "Verweis auf Phänotypisierung"
      }]
    },
    {
      "id" : "ClinicalImpression.finding.basis",
      "path" : "ClinicalImpression.finding.basis",
      "short" : "Grundlage für den Befund"
    },
    {
      "id" : "ClinicalImpression.supportingInfo",
      "path" : "ClinicalImpression.supportingInfo",
      "short" : "Unterstützende Informationen",
      "definition" : "Informationen, die die klinische Beurteilung unterstützen",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Observation",
        "http://hl7.org/fhir/StructureDefinition/Condition",
        "http://hl7.org/fhir/StructureDefinition/DiagnosticReport",
        "http://hl7.org/fhir/StructureDefinition/DocumentReference"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ClinicalImpression.note",
      "path" : "ClinicalImpression.note",
      "short" : "Zusätzliche Anmerkungen",
      "definition" : "Kommentare zur Beurteilung, die anderswo nicht erfasst sind",
      "mustSupport" : true
    }]
  }
}

```
