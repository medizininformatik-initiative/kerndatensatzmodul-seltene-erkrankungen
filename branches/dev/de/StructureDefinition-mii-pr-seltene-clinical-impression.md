# MII Profile SE Clinical Impression - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII Profile SE Clinical Impression**

## Ressourcenprofil: MII Profile SE Clinical Impression 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-impression | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2026-09-04 | *Maschinenlesbarer Name*:MII_PR_Seltene_ClinicalImpression |

 
Profile for clinical impressions in the context of rare diseases. This profile captures clinical assessments and suspected diagnoses based on phenotypic findings and symptoms. 

Dieses Profil beschreibt die klinische Bewertung und Dokumentation interdisziplinärer Untersuchungen im Rahmen der Diagnostik seltener Erkrankungen. Es ermöglicht die strukturierte Erfassung klinischer Eindrücke, Befunde und Behandlungsempfehlungen.

### Strukturierung der klinischen Bewertung

Die ClinicalImpression nutzt drei Hauptelemente zur Strukturierung der klinischen Bewertung:

#### Problem (problem)

Dokumentiert die **identifizierten Gesundheitsprobleme oder Diagnosen**:

* Bestätigte Diagnosen (ICD-10-GM, ORPHAcodes)
* Verdachtsdiagnosen
* Symptom-Conditions (symptomatische Zustände)
* Beispiel: "Verdacht auf Osteogenesis imperfecta" oder "Bestätigte Von-Willebrand-Erkrankung"

#### Investigation (investigation)

Erfasst **durchgeführte oder geplante Untersuchungen** zur Abklärung:

* Gruppierung zusammengehöriger Diagnostik
* Labor-Panels (z.B. Gerinnungsdiagnostik)
* Bildgebende Verfahren
* Genetische Tests
* Beispiel: Investigation mit Code "Basisdiagnostik" enthält Referenzen auf CBC, PTT, Blutungszeit

#### Finding (finding)

Dokumentiert **konkrete Befunde und Beobachtungen**:

* HPO-kodierte phänotypische Merkmale
* Auffällige Laborwerte
* Bildgebungsbefunde
* Klinische Beobachtungen
* Beispiel: "Erhöhte PTT (409675001)", "Bruising susceptibility (HP:0000978)"

### Verwendungsbeispiel

```
ClinicalImpression (Erstvorstellung)
├── problem: Verdacht auf Von-Willebrand-Syndrom
├── investigation[0]: 
│   ├── code: "Gerinnungsdiagnostik"
│   └── item: [PTT-Messung, vWF-Aktivität, Blutungszeit]
└── finding[0]: Nasenbluten (R04.0)
└── finding[1]: Hämatom-Neigung (HP:0000978)
└── finding[2]: PTT verlängert (409675001)

```

-------

**Suchparameter**

Folgende Suchparameter sind für das Modul Seltene Erkrankungen relevant, auch in Kombination:

1. Der Suchparameter `_id` MUSS unterstützt werden:Beispiele:`GET [base]/ClinicalImpression?_id=1234`Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "_profile" MUSS unterstützt werden:Beispiele:`GET [base]/ClinicalImpression?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-impression`Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "status" MUSS unterstützt werden:Beispiele:`GET [base]/ClinicalImpression?status=completed`Anwendungshinweise: Weitere Informationen zur Suche nach "status" finden sich in der FHIR-Basisspezifikation - Abschnitt "token".
1. Der Suchparameter "subject" MUSS unterstützt werden:Beispiele:`GET [base]/ClinicalImpression?subject=Patient/example`Anwendungshinweise: Weitere Informationen zur Suche nach "subject" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".
1. Der Suchparameter "problem" MUSS unterstützt werden:Beispiele:`GET [base]/ClinicalImpression?problem=Condition/example`Anwendungshinweise: Weitere Informationen zur Suche nach "problem" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".
1. Der Suchparameter "encounter" MUSS unterstützt werden:Beispiele:`GET [base]/ClinicalImpression?encounter=Encounter/example`Anwendungshinweise: Weitere Informationen zur Suche nach "encounter" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".
1. Der Suchparameter "date" MUSS unterstützt werden:Beispiele:`GET [base]/ClinicalImpression?date=2024-02-08`Anwendungshinweise: Weitere Informationen zur Suche nach "date" finden sich in der FHIR-Basisspezifikation - Abschnitt "date".
1. Der Suchparameter "finding-ref" MUSS unterstützt werden:Beispiele:`GET [base]/ClinicalImpression?finding-ref=Observation/example`Anwendungshinweise: Weitere Informationen zur Suche nach "finding-ref" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".

Beispielinstanzen sind auf der Profilseite im Abschnitt „Examples" verlinkt.

**Usages:**

* Examples for this Profile: [ClinicalImpression/mii-exa-seltene-clinical-impression-erstvorstellung](ClinicalImpression-mii-exa-seltene-clinical-impression-erstvorstellung.md), [ClinicalImpression/mii-exa-seltene-clinical-impression-nachsorge](ClinicalImpression-mii-exa-seltene-clinical-impression-nachsorge.md) and [ClinicalImpression/mii-exa-seltene-clinical-impression-seltene-assessment](ClinicalImpression-mii-exa-seltene-clinical-impression-seltene-assessment.md)
* CapabilityStatements using this Profile: [MII CPS Seltene Erkrankungen CapabilityStatement](CapabilityStatement-mii-cps-seltene-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.seltene|current/StructureDefinition/StructureDefinition-mii-pr-seltene-clinical-impression.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [ClinicalImpression](http://hl7.org/fhir/R4/clinicalimpression.html) 

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [ClinicalImpression](http://hl7.org/fhir/R4/clinicalimpression.html) 

** Summary **

Must-Support: 17 elements

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of ClinicalImpression.effective[x]

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [ClinicalImpression](http://hl7.org/fhir/R4/clinicalimpression.html) 

#### Terminology Bindings (Differential)

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [ClinicalImpression](http://hl7.org/fhir/R4/clinicalimpression.html) 

** Summary **

Must-Support: 17 elements

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of ClinicalImpression.effective[x]

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-seltene-clinical-impression.csv), [Excel](../StructureDefinition-mii-pr-seltene-clinical-impression.xlsx), [Schematron](../StructureDefinition-mii-pr-seltene-clinical-impression.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-seltene-clinical-impression",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-impression",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_PR_Seltene_ClinicalImpression",
  "title" : "MII Profile SE Clinical Impression",
  "status" : "active",
  "date" : "2026-09-04T05:29:06+00:00",
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
  "description" : "Profile for clinical impressions in the context of rare diseases. This profile captures clinical assessments and suspected diagnoses based on phenotypic findings and symptoms.",
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
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
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
        "map" : "anamneseUndDiagnostik",
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
        "map" : "anamneseUndDiagnostik.untersuchungsanlass",
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
        "map" : "persoenlicheInfosIndexpatient",
        "comment" : "Patient/Indexpatient"
      }]
    },
    {
      "id" : "ClinicalImpression.encounter",
      "path" : "ClinicalImpression.encounter",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "anamneseUndDiagnostik.untersuchungsdatum",
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
        "map" : "anamneseUndDiagnostik.untersuchungsdatum",
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
        "map" : "anamneseUndDiagnostik.untersuchungsdatum",
        "comment" : "Beginn der Untersuchung"
      }]
    },
    {
      "id" : "ClinicalImpression.effective[x]:effectivePeriod.end",
      "path" : "ClinicalImpression.effective[x].end",
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "anamneseUndDiagnostik.untersuchungsdatum",
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
        "map" : "anamneseUndDiagnostik.klinischeDiagnose",
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
        "map" : "anamneseUndDiagnostik.methodeDiagnosestellung",
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
        "map" : "anamneseUndDiagnostik.phaenotypisierung",
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
        "map" : "anamneseUndDiagnostik.phaenotypisierung.hpoTerm",
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
        "map" : "anamneseUndDiagnostik.phaenotypisierung",
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
