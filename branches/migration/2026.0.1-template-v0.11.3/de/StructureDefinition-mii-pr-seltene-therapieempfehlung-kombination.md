# MII PR SE Therapieempfehlung Kombinationstherapie - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR SE Therapieempfehlung Kombinationstherapie**

## Ressourcenprofil: MII PR SE Therapieempfehlung Kombinationstherapie 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung-kombination | *Version*:2027.0.0-ballot |
| Active Stand: 2026-09-02 | *Maschinenlesbarer Name*:MII_PR_Seltene_Therapieempfehlung_Kombination |

 
Therapieempfehlung für eine medikamentöse Kombinationstherapie 

Dieses Profil beschreibt eine kombinierte Therapieempfehlung für Patienten mit seltenen Erkrankungen. Es ermöglicht die strukturierte Erfassung von Therapieempfehlungen, die mehrere koordinierte Behandlungsansätze umfassen und gemeinsam angewendet werden sollen. Es ist angelehnt an die MTB-Implementierung (Molekulares Tumorboard).

**Suchparameter**

Folgende Suchparameter sind für das Modul Seltene Erkrankungen relevant, auch in Kombination:

1. Der Suchparameter `_id` MUSS unterstützt werden:Beispiele:`GET [base]/RequestGroup?_id=1234`Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "_profile" MUSS unterstützt werden:Beispiele:`GET [base]/RequestGroup?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung-kombination`Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "status" MUSS unterstützt werden:Beispiele:`GET [base]/RequestGroup?status=active`Anwendungshinweise: Weitere Informationen zur Suche nach "status" finden sich in der FHIR-Basisspezifikation - Abschnitt "token".
1. Der Suchparameter "subject" MUSS unterstützt werden:Beispiele:`GET [base]/RequestGroup?subject=Patient/example`Anwendungshinweise: Weitere Informationen zur Suche nach "subject" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".
1. Der Suchparameter "encounter" MUSS unterstützt werden:Beispiele:`GET [base]/RequestGroup?encounter=Encounter/example`Anwendungshinweise: Weitere Informationen zur Suche nach "encounter" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".
1. Der Suchparameter "authored" MUSS unterstützt werden:Beispiele:`GET [base]/RequestGroup?authored=2024-02-08`Anwendungshinweise: Weitere Informationen zur Suche nach "authored" finden sich in der FHIR-Basisspezifikation - Abschnitt "date".

Beispielinstanzen sind auf der Profilseite im Abschnitt „Examples" verlinkt.

**Usages:**

* Refer to this Profile: [MII PR SE Therapieplan](StructureDefinition-mii-pr-seltene-therapieplan.md)
* CapabilityStatements using this Profile: [MII CPS Seltene Erkrankungen CapabilityStatement](CapabilityStatement-mii-cps-seltene-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.seltene|current/StructureDefinition/StructureDefinition-mii-pr-seltene-therapieempfehlung-kombination.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [RequestGroup](http://hl7.org/fhir/R4/requestgroup.html) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [RequestGroup](http://hl7.org/fhir/R4/requestgroup.html) 

** Summary **

Mandatory: 2 elements
 Must-Support: 7 elements
 Prohibited: 1 element

**Structures**

This structure refers to these other structures:

* [MII PR SE Therapieempfehlung Systemische Therapie (https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung)](StructureDefinition-mii-pr-seltene-therapieempfehlung.md)

**Extensions**

This structure refers to these extensions:

* [https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-prioritaet](StructureDefinition-mii-ex-seltene-empfehlung-prioritaet.md)
* [https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-publikation](StructureDefinition-mii-ex-seltene-empfehlung-publikation.md)

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [RequestGroup](http://hl7.org/fhir/R4/requestgroup.html) 

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [RequestGroup](http://hl7.org/fhir/R4/requestgroup.html) 

** Summary **

Mandatory: 2 elements
 Must-Support: 7 elements
 Prohibited: 1 element

**Structures**

This structure refers to these other structures:

* [MII PR SE Therapieempfehlung Systemische Therapie (https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung)](StructureDefinition-mii-pr-seltene-therapieempfehlung.md)

**Extensions**

This structure refers to these extensions:

* [https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-prioritaet](StructureDefinition-mii-ex-seltene-empfehlung-prioritaet.md)
* [https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-publikation](StructureDefinition-mii-ex-seltene-empfehlung-publikation.md)

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-seltene-therapieempfehlung-kombination.csv), [Excel](../StructureDefinition-mii-pr-seltene-therapieempfehlung-kombination.xlsx), [Schematron](../StructureDefinition-mii-pr-seltene-therapieempfehlung-kombination.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-seltene-therapieempfehlung-kombination",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung-kombination",
  "version" : "2027.0.0-ballot",
  "name" : "MII_PR_Seltene_Therapieempfehlung_Kombination",
  "title" : "MII PR SE Therapieempfehlung Kombinationstherapie",
  "status" : "active",
  "date" : "2026-09-02T16:35:11+00:00",
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
  "description" : "Therapieempfehlung für eine medikamentöse Kombinationstherapie",
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "RequestGroup",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/RequestGroup",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "RequestGroup",
      "path" : "RequestGroup"
    },
    {
      "id" : "RequestGroup.extension",
      "path" : "RequestGroup.extension",
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
      "id" : "RequestGroup.extension:Prioritaet",
      "path" : "RequestGroup.extension",
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
      "id" : "RequestGroup.extension:Publikation",
      "path" : "RequestGroup.extension",
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
      "id" : "RequestGroup.identifier",
      "path" : "RequestGroup.identifier",
      "mustSupport" : true
    },
    {
      "id" : "RequestGroup.status",
      "path" : "RequestGroup.status",
      "definition" : "Status der Umsetzung der Therapieempfehlung",
      "comment" : "\n    draft: Nicht umgesetzt, \n    active: In Umsetzung, \n    completed: Abgeschlossen oder abgebrochen (Patient verstorben)"
    },
    {
      "id" : "RequestGroup.intent",
      "path" : "RequestGroup.intent",
      "short" : "proposal | option",
      "definition" : "Da nur Empfehlungen abgegeben werden, wird hier typischerweise 'proposal' stehen. Es sei denn,\ndiese Therapieempfehlung ist selbst nochmal Teil einer RequestGroup. In dem Fall muss hier 'option' stehen.",
      "mustSupport" : true
    },
    {
      "id" : "RequestGroup.subject",
      "path" : "RequestGroup.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "RequestGroup.author",
      "path" : "RequestGroup.author",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Practitioner",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole"]
      }]
    },
    {
      "id" : "RequestGroup.action",
      "path" : "RequestGroup.action",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "RequestGroup.action.resource",
      "path" : "RequestGroup.action.resource",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung",
        "http://hl7.org/fhir/StructureDefinition/MedicationRequest"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "RequestGroup.action.action",
      "path" : "RequestGroup.action.action",
      "max" : "0"
    }]
  }
}

```
