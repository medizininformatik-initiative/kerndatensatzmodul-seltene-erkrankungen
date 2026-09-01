# MII PR SE Studieneinschluss Anfrage - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR SE Studieneinschluss Anfrage**

## Ressourcenprofil: MII PR SE Studieneinschluss Anfrage 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-studieneinschluss-anfrage | *Version*:2027.0.0-ballot |
| Active Stand: 2026-09-01 | *Maschinenlesbarer Name*:MII_PR_Seltene_Studieneinschluss_Anfrage |

 
Anfrage zum Studieneinschluss 

Dieses Profil beschreibt eine Anfrage für den Einschluss eines Patienten mit seltener Erkrankung in eine klinische Studie. Es ermöglicht die strukturierte Erfassung von Studienanfragen und deren Status im Rahmen der Versorgung und Forschung bei seltenen Erkrankungen. Es ist angelehnt an die MTB-Implementierung (Molekulares Tumorboard).

**Suchparameter**

Folgende Suchparameter sind für das Modul Seltene Erkrankungen relevant, auch in Kombination:

1. Der Suchparameter `_id` MUSS unterstützt werden:Beispiele:`GET [base]/Task?_id=1234`Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "_profile" MUSS unterstützt werden:Beispiele:`GET [base]/Task?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-studieneinschluss-anfrage`Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "status" MUSS unterstützt werden:Beispiele:`GET [base]/Task?status=requested`Anwendungshinweise: Weitere Informationen zur Suche nach "status" finden sich in der FHIR-Basisspezifikation - Abschnitt "token".
1. Der Suchparameter "patient" MUSS unterstützt werden:Beispiele:`GET [base]/Task?patient=Patient/example`Anwendungshinweise: Weitere Informationen zur Suche nach "patient" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".
1. Der Suchparameter "encounter" MUSS unterstützt werden:Beispiele:`GET [base]/Task?encounter=Encounter/example`Anwendungshinweise: Weitere Informationen zur Suche nach "encounter" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".
1. Der Suchparameter "authored-on" MUSS unterstützt werden:Beispiele:`GET [base]/Task?authored-on=2024-02-08`Anwendungshinweise: Weitere Informationen zur Suche nach "authored-on" finden sich in der FHIR-Basisspezifikation - Abschnitt "date".

Beispielinstanzen sind auf der Profilseite im Abschnitt „Examples" verlinkt.

**Usages:**

* Refer to this Profile: [MII PR SE Therapieplan](StructureDefinition-mii-pr-seltene-therapieplan.md)
* CapabilityStatements using this Profile: [MII CPS Seltene Erkrankungen CapabilityStatement](CapabilityStatement-mii-cps-seltene-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.seltene|current/StructureDefinition/StructureDefinition-mii-pr-seltene-studieneinschluss-anfrage.json)

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

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [ServiceRequest](http://hl7.org/fhir/R4/servicerequest.html) 

** Summary **

Mandatory: 2 elements(1 nested mandatory element)
 Must-Support: 10 elements
 Fixed: 3 elements

**Structures**

This structure refers to these other structures:

* [MII PR Studie Studie (https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-studie)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.studie@2026.0.2&canonical=https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-studie)

**Extensions**

This structure refers to these extensions:

* [http://hl7.org/fhir/StructureDefinition/request-statusReason](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-request-statusReason.html)
* [https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-prioritaet](StructureDefinition-mii-ex-seltene-empfehlung-prioritaet.md)
* [https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-publikation](StructureDefinition-mii-ex-seltene-empfehlung-publikation.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of ServiceRequest.supportingInfo

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [ServiceRequest](http://hl7.org/fhir/R4/servicerequest.html) 

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [ServiceRequest](http://hl7.org/fhir/R4/servicerequest.html) 

** Summary **

Mandatory: 2 elements(1 nested mandatory element)
 Must-Support: 10 elements
 Fixed: 3 elements

**Structures**

This structure refers to these other structures:

* [MII PR Studie Studie (https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-studie)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.studie@2026.0.2&canonical=https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-studie)

**Extensions**

This structure refers to these extensions:

* [http://hl7.org/fhir/StructureDefinition/request-statusReason](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-request-statusReason.html)
* [https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-prioritaet](StructureDefinition-mii-ex-seltene-empfehlung-prioritaet.md)
* [https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-publikation](StructureDefinition-mii-ex-seltene-empfehlung-publikation.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of ServiceRequest.supportingInfo

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-seltene-studieneinschluss-anfrage.csv), [Excel](../StructureDefinition-mii-pr-seltene-studieneinschluss-anfrage.xlsx), [Schematron](../StructureDefinition-mii-pr-seltene-studieneinschluss-anfrage.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-seltene-studieneinschluss-anfrage",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-studieneinschluss-anfrage",
  "version" : "2027.0.0-ballot",
  "name" : "MII_PR_Seltene_Studieneinschluss_Anfrage",
  "title" : "MII PR SE Studieneinschluss Anfrage",
  "status" : "active",
  "date" : "2026-09-01T20:22:52+00:00",
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
  "description" : "Anfrage zum Studieneinschluss",
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
      "id" : "ServiceRequest.extension:statusReason",
      "path" : "ServiceRequest.extension",
      "sliceName" : "statusReason",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/request-statusReason"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.extension:statusReason.value[x].coding",
      "path" : "ServiceRequest.extension.value[x].coding",
      "short" : "Grund für Ablehnung",
      "definition" : "Grund für Ablehnung des Studieneinschlusses (Tod, Studie geschlossen etc)",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
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
      "definition" : "Status des Studieneinschlusses",
      "comment" : "\n    draft: Nicht umgesetzt, \n    active: In Umsetzung, \n    completed: Abgeschlossen oder abgebrochen (Patient verstorben)",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.intent",
      "path" : "ServiceRequest.intent",
      "fixedCode" : "proposal"
    },
    {
      "id" : "ServiceRequest.category",
      "path" : "ServiceRequest.category",
      "min" : 1,
      "max" : "1",
      "fixedCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "110465008",
          "display" : "Clinical trial (procedure)"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.code",
      "path" : "ServiceRequest.code",
      "short" : "Studieneinschlussempfehlung",
      "definition" : "Empfehlung zum Einschluss in eine Studie",
      "min" : 1,
      "fixedCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "702475000",
          "display" : "Referral to clinical trial (procedure)"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.reasonReference",
      "path" : "ServiceRequest.reasonReference",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.supportingInfo",
      "path" : "ServiceRequest.supportingInfo",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "description" : "Slice für Referenz auf eine Studie",
        "ordered" : false,
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.supportingInfo:Studie",
      "path" : "ServiceRequest.supportingInfo",
      "sliceName" : "Studie",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-studie",
        "http://hl7.org/fhir/StructureDefinition/ResearchStudy"]
      }],
      "mustSupport" : true
    }]
  }
}

```
