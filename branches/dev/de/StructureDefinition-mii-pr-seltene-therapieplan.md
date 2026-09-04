# MII PR SE Therapieplan - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR SE Therapieplan**

## Ressourcenprofil: MII PR SE Therapieplan 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieplan | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2026-09-04 | *Maschinenlesbarer Name*:MII_PR_Seltene_Therapieplan |

 
Therapieplan 

Dieses Profil beschreibt einen Therapieplan für Patienten mit Seltenen Erkrankungen, entsprechend der Vorgabe aus dem Modellvorhaben Genomsequenzierung. Es ist angelehnt an die MTB-Implementierung (Molekulares Tumorboard). Der Therapieplan bündelt geplante Maßnahmen und kann eine oder mehrere Therapieempfehlungen umfassen, die den Plan konkretisieren

-------

**Suchparameter** sind modulweit im [CapabilityStatement](CapabilityStatement-mii-cps-seltene-capabilitystatement.md) deklariert — dort maschinenlesbar und vollständig, statt je Profil von Hand wiederholt.

Beispielinstanzen sind auf der Profilseite im Abschnitt „Examples" verlinkt.

**Usages:**

* Examples for this Profile: [CarePlan/mii-exa-seltene-therapieplan](CarePlan-mii-exa-seltene-therapieplan.md)
* CapabilityStatements using this Profile: [MII CPS Seltene Erkrankungen CapabilityStatement](CapabilityStatement-mii-cps-seltene-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.seltene|current/StructureDefinition/StructureDefinition-mii-pr-seltene-therapieplan.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [CarePlan](http://hl7.org/fhir/R4/careplan.html) 

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [CarePlan](http://hl7.org/fhir/R4/careplan.html) 

** Summary **

Mandatory: 1 element(1 nested mandatory element)
 Must-Support: 12 elements

**Structures**

This structure refers to these other structures:

* [MII PR SE Therapieempfehlung Systemische Therapie (https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung)](StructureDefinition-mii-pr-seltene-therapieempfehlung.md)
* [MII PR SE Therapieempfehlung Kombinationstherapie (https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung-kombination)](StructureDefinition-mii-pr-seltene-therapieempfehlung-kombination.md)
* [MII PR SE Therapieempfehlung Nicht-Medikamentös (https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung-nicht-medikamentoes)](StructureDefinition-mii-pr-seltene-therapieempfehlung-nicht-medikamentoes.md)
* [MII PR SE Studieneinschluss Anfrage (https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-studieneinschluss-anfrage)](StructureDefinition-mii-pr-seltene-studieneinschluss-anfrage.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of CarePlan.supportingInfo
* The element 1 is sliced based on the value of CarePlan.activity

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [CarePlan](http://hl7.org/fhir/R4/careplan.html) 

#### Terminology Bindings (Differential)

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [CarePlan](http://hl7.org/fhir/R4/careplan.html) 

** Summary **

Mandatory: 1 element(1 nested mandatory element)
 Must-Support: 12 elements

**Structures**

This structure refers to these other structures:

* [MII PR SE Therapieempfehlung Systemische Therapie (https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung)](StructureDefinition-mii-pr-seltene-therapieempfehlung.md)
* [MII PR SE Therapieempfehlung Kombinationstherapie (https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung-kombination)](StructureDefinition-mii-pr-seltene-therapieempfehlung-kombination.md)
* [MII PR SE Therapieempfehlung Nicht-Medikamentös (https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung-nicht-medikamentoes)](StructureDefinition-mii-pr-seltene-therapieempfehlung-nicht-medikamentoes.md)
* [MII PR SE Studieneinschluss Anfrage (https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-studieneinschluss-anfrage)](StructureDefinition-mii-pr-seltene-studieneinschluss-anfrage.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of CarePlan.supportingInfo
* The element 1 is sliced based on the value of CarePlan.activity

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-seltene-therapieplan.csv), [Excel](../StructureDefinition-mii-pr-seltene-therapieplan.xlsx), [Schematron](../StructureDefinition-mii-pr-seltene-therapieplan.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-seltene-therapieplan",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieplan",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_PR_Seltene_Therapieplan",
  "title" : "MII PR SE Therapieplan",
  "status" : "active",
  "date" : "2026-09-04T11:35:42+00:00",
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
  "description" : "Therapieplan",
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
  "type" : "CarePlan",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/CarePlan",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "CarePlan",
      "path" : "CarePlan"
    },
    {
      "id" : "CarePlan.status",
      "path" : "CarePlan.status",
      "definition" : "Status der Umsetzung des beschlossenen Therapieplans",
      "comment" : "\n    active: Empfehlung bzw. Therapieoption in Umsetzung (Regelfall), \n    revoked: Fall ist abgeschlossen, \n    completed: Alle Empfehlungen bzw. Therapieoptionen ausgeschöpft oder Patient verstorben"
    },
    {
      "id" : "CarePlan.description",
      "path" : "CarePlan.description",
      "short" : "Protokollauszug",
      "definition" : "Protokollauszug aus dem Beschluss",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.created",
      "path" : "CarePlan.created",
      "short" : "Erstellungsdatum",
      "definition" : "Erstellungsdatum des Therapieplans",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.supportingInfo",
      "path" : "CarePlan.supportingInfo",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "description" : "Slice für weitere Informationen",
        "ordered" : false,
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity",
      "path" : "CarePlan.activity",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "reference.resolve()"
        }],
        "description" : "Slice für Empfehlung zum weiteren Vorgehen auf Basis des referenzierten Ressourcentyps",
        "ordered" : false,
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity:MedikamentoesTherapie",
      "path" : "CarePlan.activity",
      "sliceName" : "MedikamentoesTherapie",
      "short" : "Medikamentöse Therapieempfehlung",
      "definition" : "Therapieempfehlung für eine medikamentöse Therapie (Systemtherapie, gezielte Therapie, Präventivmedikation, Gentherapie, Kombinationstherapie)",
      "comment" : "Referenziert MedicationRequest-basierte Profile für alle medikamentösen Therapien",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity:MedikamentoesTherapie.reference",
      "path" : "CarePlan.activity.reference",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung-kombination",
        "http://hl7.org/fhir/StructureDefinition/MedicationRequest",
        "http://hl7.org/fhir/StructureDefinition/RequestGroup"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity:MedikamentoesTherapie.detail",
      "path" : "CarePlan.activity.detail",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity:MedikamentoesTherapie.detail.statusReason",
      "path" : "CarePlan.activity.detail.statusReason",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-empfehlung-status-begruendung"
      }
    },
    {
      "id" : "CarePlan.activity:NichtMedikamentoesTherapie",
      "path" : "CarePlan.activity",
      "sliceName" : "NichtMedikamentoesTherapie",
      "short" : "Nicht-medikamentöse Therapieempfehlung",
      "definition" : "Therapieempfehlung für nicht-medikamentöse Interventionen (Ernährungstherapie, Prophylaxe, Früherkennung, humangenetische Beratung, andere)",
      "comment" : "Referenziert ServiceRequest-basierte Profile für alle nicht-medikamentösen Therapien einschließlich humangenetischer Beratung",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity:NichtMedikamentoesTherapie.reference",
      "path" : "CarePlan.activity.reference",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung-nicht-medikamentoes",
        "http://hl7.org/fhir/StructureDefinition/ServiceRequest"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity:NichtMedikamentoesTherapie.detail",
      "path" : "CarePlan.activity.detail",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity:NichtMedikamentoesTherapie.detail.statusReason",
      "path" : "CarePlan.activity.detail.statusReason",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-empfehlung-status-begruendung"
      }
    },
    {
      "id" : "CarePlan.activity:Studieneinschlussempfehlung",
      "path" : "CarePlan.activity",
      "sliceName" : "Studieneinschlussempfehlung",
      "short" : "Studieneinschlussempfehlung",
      "definition" : "Anfrage zum Studieneinschluss",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity:Studieneinschlussempfehlung.reference",
      "path" : "CarePlan.activity.reference",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-studieneinschluss-anfrage"]
      }],
      "mustSupport" : true
    }]
  }
}

```
