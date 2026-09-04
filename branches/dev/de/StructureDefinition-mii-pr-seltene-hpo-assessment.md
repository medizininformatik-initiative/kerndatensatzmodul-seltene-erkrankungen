# MII Profile SE HPO Assessment - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII Profile SE HPO Assessment**

## Ressourcenprofil: MII Profile SE HPO Assessment 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2026-09-04 | *Maschinenlesbarer Name*:MII_PR_Seltene_HPO_Assessment |

 
Profile for HPO-based phenotypic observations in the context of rare diseases. This profile uses the Human Phenotype Ontology (HPO) to describe clinical symptoms and phenotypic abnormalities. 

Dieses Profil beschreibt die Phänotypisierung gemäß Human Phenotype Ontology (HPO) im Rahmen der Diagnostik seltener Erkrankungen. Es ermöglicht die strukturierte Erfassung phänotypischer Abnormalitäten und klinischer Merkmale.

### HL7 Phenomics IG Pattern

Dieses Profil folgt dem **HL7 Phenomics Exchange Implementation Guide** Pattern für die Dokumentation phänotypischer Merkmale. Dies bedeutet:

* **`value[x]` wird nicht verwendet** - stattdessen werden Status und Schweregrad in `component`-Elementen erfasst
* **`component[status]`** dokumentiert, ob der Phänotyp vorhanden (Present) oder explizit ausgeschlossen (Absent) ist
* **`component[severity]`** ermöglicht die Angabe eines Schweregrads (Mild, Moderate, Severe, Profound, Borderline)

Dieses Pattern ermöglicht eine präzisere und international interoperable Dokumentation phänotypischer Befunde.

### Zeitpunktbezogene Dokumentation

**Wichtig:** Jede HPO-Observation repräsentiert einen **spezifischen Zeitpunkt** der Phänotyp-Bewertung. Da sich Phänotypen im Verlauf einer Erkrankung verändern können, ist es essentiell:

* **Einzelne Beobachtungen** zu dokumentieren mit präzisen Zeitstempeln (`effectiveDateTime`)
* **Verlaufsänderungen** über das `component[status].interpretation` Element zu erfassen
* **Parallele Dokumentation** sowohl als Observation (Zeitpunkt) als auch als Symptom-Condition (Zeitraum) zu erwägen

**Hinweis zur Datumserfassung:** Das Datum (`effectiveDateTime`) ist **nicht** Teil der Kerndatensätze, **SOLL** aber wenn möglich erfasst werden, um die zeitliche Nachvollziehbarkeit der Phänotyp-Entwicklung zu gewährleisten.

Diese zeitpunktbezogene Erfassung ermöglicht die Nachvollziehbarkeit der Krankheitsprogression und Therapieeffekte bei seltenen Erkrankungen.

### Abgrenzung zur Symptom-Condition

> **Wichtig:** Die Unterscheidung zwischen **HPO-Observation** und **Symptom-Condition** ist klinisch bedeutsam:
* **HPO-Observation**: Dokumentiert eine **einzelne Untersuchung/Bewertung** zu einem bestimmten Zeitpunkt (z.B. "Am 15.03.2024 wurde Arachnodaktylie festgestellt")
* **Symptom-Condition**: Dokumentiert einen **persistierenden Zustand** über einen Zeitraum (z.B. "Patient hat seit dem Kindesalter Arachnodaktylie")

Ein vollständiges Beispiel dieser Unterscheidung findet sich im **Marfan-Syndrom Beispiel**: [marfan-beispiel](marfan-example-annotations.md)

Dort wird gezeigt, wie:

* Einzelne HPO-Beobachtungen bei verschiedenen Untersuchungsterminen erfasst werden
* Diese Beobachtungen als Evidenz für persistierende Symptom-Conditions dienen
* Mehrfache Bestätigungen desselben Phänotyps die Diagnosesicherheit erhöhen

### Verknüpfung mit Evidenz

Das `derivedFrom` Element ermöglicht die Verknüpfung der HPO-Beobachtung mit konkreten klinischen Befunden:

* **Laborwerte**: Referenz auf auffällige Laborergebnisse (z.B. erhöhte CK-Werte bei Muskeldystrophie)
* **Bildgebung**: Verweis auf radiologische oder andere bildgebende Befunde
* **Andere Beobachtungen**: Verknüpfung mit weiteren klinischen Assessments

Diese Referenzierung schafft Transparenz über die Grundlage der phänotypischen Einschätzung.

### Phänotyp-Status (Present/Absent)

Das `component[status]` Element dokumentiert, ob ein Phänotyp vorhanden oder explizit ausgeschlossen ist. Dies ermöglicht die präzise Dokumentation von "negativen" Befunden (Phänotyp wurde geprüft und ist nicht vorhanden).

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

#### Verfügbare Status-Codes

| | | |
| :--- | :--- | :--- |
| LA9633-4 | Present | Phänotyp ist vorhanden |
| LA9634-2 | Absent | Phänotyp ist explizit ausgeschlossen |

### Schweregrad (Severity)

Das optionale `component[severity]` Element ermöglicht die Dokumentation des Schweregrads eines Phänotyps gemäß der HPO-Severity-Ontologie:

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

#### Verfügbare Schweregrad-Codes

| | | |
| :--- | :--- | :--- |
| HP:0012825 | Mild | Leichte Ausprägung |
| HP:0012826 | Moderate | Mäßige Ausprägung |
| HP:0012828 | Severe | Schwere Ausprägung |
| HP:0012829 | Profound | Sehr schwere Ausprägung |
| HP:0012827 | Borderline | Grenzwertige Ausprägung |

### Änderungsstatus von HPO-Phänotypen

Gemäß den Vorgaben des Modellvorhabens Genomsequenzierung unterstützt dieses Profil die Dokumentation von Änderungen bei HPO-Phänotypen über Zeit. Der Änderungsstatus wird im `component[status].interpretation` Element dokumentiert, zusammen mit dem Präsenz-Status:

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

#### Verfügbare Änderungsstatus-Codes

| | | |
| :--- | :--- | :--- |
| newly-added | Neu hinzugefügt | Phänotyp wurde neu beobachtet/diagnostiziert |
| improved | Verbessert | Phänotyp hat sich verbessert |
| degraded | Verschlechtert | Phänotyp hat sich verschlechtert |
| no-longer-observed | Nicht mehr beobachtet | Phänotyp wird nicht mehr beobachtet/ist verschwunden |
| unchanged | Unverändert | Phänotyp ist unverändert geblieben |

-------

**Suchparameter** sind modulweit im [CapabilityStatement](CapabilityStatement-mii-cps-seltene-capabilitystatement.md) deklariert — dort maschinenlesbar und vollständig, statt je Profil von Hand wiederholt.

Beispielinstanzen sind auf der Profilseite im Abschnitt „Examples" verlinkt.

**Usages:**

* Examples for this Profile: [Observation/mii-exa-seltene-anteverted-nares](Observation-mii-exa-seltene-anteverted-nares.md), [Observation/mii-exa-seltene-aortic-root-dilatation](Observation-mii-exa-seltene-aortic-root-dilatation.md), [Observation/mii-exa-seltene-arachnodactyly](Observation-mii-exa-seltene-arachnodactyly.md), [Observation/mii-exa-seltene-beighton-score-low](Observation-mii-exa-seltene-beighton-score-low.md)... Show 13 more, [Observation/mii-exa-seltene-chronic-diarrhea](Observation-mii-exa-seltene-chronic-diarrhea.md), [Observation/mii-exa-seltene-failure-to-thrive](Observation-mii-exa-seltene-failure-to-thrive.md), [Observation/mii-exa-seltene-hpo-assessment-change-status](Observation-mii-exa-seltene-hpo-assessment-change-status.md), [Observation/mii-exa-seltene-hpo-assessment-excluded](Observation-mii-exa-seltene-hpo-assessment-excluded.md), [Observation/mii-exa-seltene-hpo-assessment-severity](Observation-mii-exa-seltene-hpo-assessment-severity.md), [Observation/mii-exa-seltene-hpo-assessment](Observation-mii-exa-seltene-hpo-assessment.md), [Observation/mii-exa-seltene-hypertelorism](Observation-mii-exa-seltene-hypertelorism.md), [Observation/mii-exa-seltene-lens-dislocation](Observation-mii-exa-seltene-lens-dislocation.md), [Observation/mii-exa-seltene-lens-examination-normal](Observation-mii-exa-seltene-lens-examination-normal.md), [Observation/mii-exa-seltene-lymphedema](Observation-mii-exa-seltene-lymphedema.md), [Observation/mii-exa-seltene-recurrent-respiratory-infections](Observation-mii-exa-seltene-recurrent-respiratory-infections.md), [Observation/mii-exa-seltene-tall-stature](Observation-mii-exa-seltene-tall-stature.md) and [Observation/mii-exa-seltene-vsd](Observation-mii-exa-seltene-vsd.md)
* CapabilityStatements using this Profile: [MII CPS Seltene Erkrankungen CapabilityStatement](CapabilityStatement-mii-cps-seltene-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.seltene|current/StructureDefinition/StructureDefinition-mii-pr-seltene-hpo-assessment.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Observation](http://hl7.org/fhir/R4/observation.html) 

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Observation](http://hl7.org/fhir/R4/observation.html) 

** Summary **

Mandatory: 1 element
 Must-Support: 17 elements
 Prohibited: 1 element

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Observation.effective[x]
* The element 1 is sliced based on the value of Observation.component

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [Observation](http://hl7.org/fhir/R4/observation.html) 

#### Terminology Bindings (Differential)

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Observation](http://hl7.org/fhir/R4/observation.html) 

** Summary **

Mandatory: 1 element
 Must-Support: 17 elements
 Prohibited: 1 element

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Observation.effective[x]
* The element 1 is sliced based on the value of Observation.component

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-seltene-hpo-assessment.csv), [Excel](../StructureDefinition-mii-pr-seltene-hpo-assessment.xlsx), [Schematron](../StructureDefinition-mii-pr-seltene-hpo-assessment.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-seltene-hpo-assessment",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_PR_Seltene_HPO_Assessment",
  "title" : "MII Profile SE HPO Assessment",
  "status" : "active",
  "date" : "2026-09-04T12:44:12+00:00",
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
