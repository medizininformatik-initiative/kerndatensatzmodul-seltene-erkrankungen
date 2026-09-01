# MII PR SE Therapieempfehlung Nicht-Medikamentös - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR SE Therapieempfehlung Nicht-Medikamentös**

## Ressourcenprofil: MII PR SE Therapieempfehlung Nicht-Medikamentös 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung-nicht-medikamentoes | *Version*:2027.0.0-ballot |
| Active Stand: 2026-09-01 | *Maschinenlesbarer Name*:MII_PR_Seltene_TherapieempfehlungNichtMedikamentoes |

 
Therapieempfehlung für nicht-medikamentöse Interventionen bei seltenen Erkrankungen (z.B. Ernährungstherapie, Gentherapie, Prophylaxe, Früherkennung) 

Dieses Profil beschreibt eine **nicht-medikamentöse Therapieempfehlung** für Patienten mit Seltenen Erkrankungen. Es basiert auf der FHIR-Ressource ServiceRequest und umfasst operative Eingriffe, Ernährungstherapien, Physiotherapie, genetische Beratung und weitere nicht-medikamentöse Interventionen.

### Anwendungsfälle

Nicht-medikamentöse Therapieempfehlungen umfassen:

* **Operative Eingriffe**: Chirurgische Interventionen (z.B. Aortenwurzelersatz bei Marfan-Syndrom)
* **Ernährungstherapie**: Spezielle Diäten bei Stoffwechselerkrankungen
* **Physiotherapie**: Bewegungstherapie zur Erhaltung der Mobilität
* **Ergotherapie**: Förderung der Alltagsfähigkeiten
* **Logopädie**: Bei Schluck- und Sprachstörungen
* **Psychologische Betreuung**: Psychotherapie und Beratung
* **Genetische Beratung**: Humangenetische Konsultation
* **Prophylaxe**: Präventive Maßnahmen ohne Medikamente
* **Früherkennungsuntersuchungen**: Regelmäßige Screening-Untersuchungen

### Implementierungshinweise

#### Kodierung von Prozeduren

* **OPS-Codes** für operative und interventionelle Eingriffe in Deutschland
* **SNOMED CT** für internationale Kompatibilität
* **LOINC** für diagnostische Verfahren
* Lokale Codes für spezielle Therapieverfahren

#### Status und Intent

* `status`: Typischerweise "draft" für Empfehlungen, "active" nach Genehmigung
* `intent`: "proposal" für Therapieempfehlungen, "order" bei Umsetzung
* `priority`: Dringlichkeit der Intervention (routine, urgent, asap, stat)

#### Zeitplanung

* `occurrence[x]`: Zeitpunkt oder Zeitraum der geplanten Intervention
* `authoredOn`: Datum der Empfehlung

#### Begründung

* Verknüpfung zur Diagnose über `reasonReference`
* Klinische Indikation über `reasonCode`

-------

### Suchparameter

Folgende Suchparameter sind für nicht-medikamentöse Therapieempfehlungen relevant:

1. **_id**: Suche nach ID der Ressource `GET [base]/ServiceRequest?_id=1234`
1. **_profile**: Suche nach Profil `GET [base]/ServiceRequest?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung-nicht-medikamentoes`
1. **subject**: Suche nach Patient `GET [base]/ServiceRequest?subject=Patient/example`
1. **status**: Suche nach Status `GET [base]/ServiceRequest?status=active`
1. **intent**: Suche nach Intent `GET [base]/ServiceRequest?intent=proposal`
1. **code**: Suche nach Prozedur-Code `GET [base]/ServiceRequest?code=http://fhir.de/CodeSystem/dimdi/ops-2024|5-354.09`
1. **authored**: Suche nach Erstellungsdatum `GET [base]/ServiceRequest?authored=2024-02-08`
1. **priority**: Suche nach Priorität `GET [base]/ServiceRequest?priority=urgent`

-------

Beispielinstanzen sind auf der Profilseite im Abschnitt „Examples" verlinkt.

### Verwandte Profile

* [Therapieempfehlung-Medikamentoes](StructureDefinition-mii-pr-seltene-therapieempfehlung.md) - Für medikamentöse Therapien
* [Therapieplan](StructureDefinition-mii-pr-seltene-therapieplan.md) - Übergeordneter Therapieplan
* [Studieneinschluss-Anfrage](StructureDefinition-mii-pr-seltene-studieneinschluss-anfrage.md) - Für Studienteilnahme-Empfehlungen

**Usages:**

* Refer to this Profile: [MII PR SE Therapieplan](StructureDefinition-mii-pr-seltene-therapieplan.md)
* Examples for this Profile: [ServiceRequest/example-early-detection-recommendation](ServiceRequest-example-early-detection-recommendation.md), [ServiceRequest/example-nutrition-therapy-recommendation](ServiceRequest-example-nutrition-therapy-recommendation.md), [ServiceRequest/mii-exa-seltene-therapieempfehlung-aortenwurzelersatz-marfan](ServiceRequest-mii-exa-seltene-therapieempfehlung-aortenwurzelersatz-marfan.md), [ServiceRequest/mii-exa-seltene-therapieempfehlung-genetische-beratung](ServiceRequest-mii-exa-seltene-therapieempfehlung-genetische-beratung.md) and [ServiceRequest/mii-exa-seltene-therapieempfehlung-physiotherapie-sma](ServiceRequest-mii-exa-seltene-therapieempfehlung-physiotherapie-sma.md)
* CapabilityStatements using this Profile: [MII CPS Seltene Erkrankungen CapabilityStatement](CapabilityStatement-mii-cps-seltene-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.seltene|current/StructureDefinition/StructureDefinition-mii-pr-seltene-therapieempfehlung-nicht-medikamentoes.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [ServiceRequest](http://hl7.org/fhir/R4/servicerequest.html) 

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [ServiceRequest](http://hl7.org/fhir/R4/servicerequest.html) 

** Summary **

Mandatory: 3 elements(9 nested mandatory elements)
 Must-Support: 23 elements

**Extensions**

This structure refers to these extensions:

* [https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-prioritaet](StructureDefinition-mii-ex-seltene-empfehlung-prioritaet.md)
* [https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-evidenzgraduierung](StructureDefinition-mii-ex-seltene-empfehlung-evidenzgraduierung.md)
* [https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-publikation](StructureDefinition-mii-ex-seltene-empfehlung-publikation.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of ServiceRequest.category
* The element 1 is sliced based on the value of ServiceRequest.code.coding

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [ServiceRequest](http://hl7.org/fhir/R4/servicerequest.html) 

#### Terminology Bindings (Differential)

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [ServiceRequest](http://hl7.org/fhir/R4/servicerequest.html) 

** Summary **

Mandatory: 3 elements(9 nested mandatory elements)
 Must-Support: 23 elements

**Extensions**

This structure refers to these extensions:

* [https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-prioritaet](StructureDefinition-mii-ex-seltene-empfehlung-prioritaet.md)
* [https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-evidenzgraduierung](StructureDefinition-mii-ex-seltene-empfehlung-evidenzgraduierung.md)
* [https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-publikation](StructureDefinition-mii-ex-seltene-empfehlung-publikation.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of ServiceRequest.category
* The element 1 is sliced based on the value of ServiceRequest.code.coding

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-seltene-therapieempfehlung-nicht-medikamentoes.csv), [Excel](../StructureDefinition-mii-pr-seltene-therapieempfehlung-nicht-medikamentoes.xlsx), [Schematron](../StructureDefinition-mii-pr-seltene-therapieempfehlung-nicht-medikamentoes.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-seltene-therapieempfehlung-nicht-medikamentoes",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung-nicht-medikamentoes",
  "version" : "2027.0.0-ballot",
  "name" : "MII_PR_Seltene_TherapieempfehlungNichtMedikamentoes",
  "title" : "MII PR SE Therapieempfehlung Nicht-Medikamentös",
  "status" : "active",
  "date" : "2026-09-01T20:45:00+00:00",
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
  "description" : "Therapieempfehlung für nicht-medikamentöse Interventionen bei seltenen Erkrankungen (z.B. Ernährungstherapie, Gentherapie, Prophylaxe, Früherkennung)",
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
    "identity" : "quick",
    "uri" : "http://siframework.org/cqf",
    "name" : "Quality Improvement and Clinical Knowledge (QUICK)"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ServiceRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ServiceRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ServiceRequest",
      "path" : "ServiceRequest"
    },
    {
      "id" : "ServiceRequest.extension",
      "path" : "ServiceRequest.extension",
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
      "id" : "ServiceRequest.extension:Prioritaet",
      "path" : "ServiceRequest.extension",
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
      "id" : "ServiceRequest.extension:Evidenzgraduierung",
      "path" : "ServiceRequest.extension",
      "sliceName" : "Evidenzgraduierung",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-evidenzgraduierung"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.extension:Publikation",
      "path" : "ServiceRequest.extension",
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
      "id" : "ServiceRequest.status",
      "path" : "ServiceRequest.status",
      "definition" : "Status der Umsetzung der nicht-medikamentösen Therapieempfehlung",
      "comment" : "draft: Nicht umgesetzt, active: In Umsetzung, completed: Abgeschlossen",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.intent",
      "path" : "ServiceRequest.intent",
      "short" : "proposal",
      "definition" : "Da es sich um Empfehlungen handelt, wird hier 'proposal' verwendet",
      "patternCode" : "proposal",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.category",
      "path" : "ServiceRequest.category",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "$this"
        }],
        "description" : "Slice für Therapiestrategie-Kategorisierung aus Modellvorhaben GenomSeq",
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.category:MVGenomSeqTherapieStrategie",
      "path" : "ServiceRequest.category",
      "sliceName" : "MVGenomSeqTherapieStrategie",
      "short" : "Modellvorhaben GenomSeq Therapiestrategie-Typ (Nicht-Medikamentös)",
      "definition" : "Kategorisierung der nicht-medikamentösen Therapieempfehlung nach Modellvorhaben GenomSeq",
      "comment" : "Dieses Feld ist spezifisch für die Integration mit Modellvorhaben GenomSeq. Es ermöglicht die Kategorisierung gemäß RareDiseasesPlan.recommendedTherapies.strategy. Nur für nicht-medikamentöse Strategien: prophylactic, early-detection, nutrition, other.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-therapieempfehlung-strategie-nicht-medikamentoes"
      }
    },
    {
      "id" : "ServiceRequest.category:MVGenomSeqTherapieStrategie.coding",
      "path" : "ServiceRequest.category.coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "ServiceRequest.category:MVGenomSeqTherapieStrategie.coding.system",
      "path" : "ServiceRequest.category.coding.system",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.category:MVGenomSeqTherapieStrategie.coding.code",
      "path" : "ServiceRequest.category.coding.code",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.category:MVGenomSeqTherapieTyp",
      "path" : "ServiceRequest.category",
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
      "id" : "ServiceRequest.category:MVGenomSeqTherapieTyp.coding",
      "path" : "ServiceRequest.category.coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "ServiceRequest.category:MVGenomSeqTherapieTyp.coding.system",
      "path" : "ServiceRequest.category.coding.system",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.category:MVGenomSeqTherapieTyp.coding.code",
      "path" : "ServiceRequest.category.coding.code",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.priority",
      "path" : "ServiceRequest.priority",
      "definition" : "Dringlichkeit der Therapieempfehlung",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.code",
      "path" : "ServiceRequest.code",
      "short" : "Art der nicht-medikamentösen Intervention",
      "definition" : "Spezifische Codierung der empfohlenen nicht-medikamentösen Therapie",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.code.coding",
      "path" : "ServiceRequest.code.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "system"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "ServiceRequest.code.coding:snomed",
      "path" : "ServiceRequest.code.coding",
      "sliceName" : "snomed",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://hl7.org/fhir/ValueSet/procedure-code"
      }
    },
    {
      "id" : "ServiceRequest.code.coding:snomed.system",
      "path" : "ServiceRequest.code.coding.system",
      "min" : 1,
      "patternUri" : "http://snomed.info/sct"
    },
    {
      "id" : "ServiceRequest.code.coding:ops",
      "path" : "ServiceRequest.code.coding",
      "sliceName" : "ops",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://fhir.de/ValueSet/bfarm/ops"
      }
    },
    {
      "id" : "ServiceRequest.code.coding:ops.system",
      "path" : "ServiceRequest.code.coding.system",
      "min" : 1,
      "patternUri" : "http://fhir.de/CodeSystem/bfarm/ops"
    },
    {
      "id" : "ServiceRequest.code.coding:loinc",
      "path" : "ServiceRequest.code.coding",
      "sliceName" : "loinc",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.code.coding:loinc.system",
      "path" : "ServiceRequest.code.coding.system",
      "min" : 1,
      "patternUri" : "http://loinc.org"
    },
    {
      "id" : "ServiceRequest.code.text",
      "path" : "ServiceRequest.code.text",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.subject",
      "path" : "ServiceRequest.subject",
      "short" : "Patient, für den die Therapie empfohlen wird",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.encounter",
      "path" : "ServiceRequest.encounter",
      "short" : "Behandlungskontext der Empfehlung",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.occurrence[x]",
      "path" : "ServiceRequest.occurrence[x]",
      "short" : "Empfohlener Zeitpunkt oder Zeitraum für die Intervention",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.requester",
      "path" : "ServiceRequest.requester",
      "short" : "Empfehlender Arzt/Einrichtung",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Practitioner",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
        "http://hl7.org/fhir/StructureDefinition/Organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.performer",
      "path" : "ServiceRequest.performer",
      "short" : "Vorgesehener Durchführender der Intervention",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.reasonCode",
      "path" : "ServiceRequest.reasonCode",
      "short" : "Grund für die Therapieempfehlung (codiert)",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.reasonReference",
      "path" : "ServiceRequest.reasonReference",
      "short" : "Verweis auf zugrundeliegende Diagnose oder Befund",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Condition",
        "http://hl7.org/fhir/StructureDefinition/Observation",
        "http://hl7.org/fhir/StructureDefinition/DiagnosticReport"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.supportingInfo",
      "path" : "ServiceRequest.supportingInfo",
      "short" : "Unterstützende Informationen zur Empfehlung",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/DocumentReference",
        "http://hl7.org/fhir/StructureDefinition/Observation",
        "http://hl7.org/fhir/StructureDefinition/DiagnosticReport"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.note",
      "path" : "ServiceRequest.note",
      "short" : "Zusätzliche Anmerkungen zur Therapieempfehlung",
      "mustSupport" : true
    }]
  }
}

```
