# MII EX SE Empfehlung Priorität - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EX SE Empfehlung Priorität**

## Extension: MII EX SE Empfehlung Priorität 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-prioritaet | *Version*:2027.0.0-ballot |
| Active Stand: 2026-09-03 | *Maschinenlesbarer Name*:MII_EX_Seltene_Empfehlung_Prioritaet |

Priorität der (einzelnen) Empfehlung

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MII PR SE Studieneinschluss Anfrage](StructureDefinition-mii-pr-seltene-studieneinschluss-anfrage.md), [MII PR SE Therapieempfehlung Kombinationstherapie](StructureDefinition-mii-pr-seltene-therapieempfehlung-kombination.md), [MII PR SE Therapieempfehlung Nicht-Medikamentös](StructureDefinition-mii-pr-seltene-therapieempfehlung-nicht-medikamentoes.md) and [MII PR SE Therapieempfehlung Systemische Therapie](StructureDefinition-mii-pr-seltene-therapieempfehlung.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.seltene|current/StructureDefinition/StructureDefinition-mii-ex-seltene-empfehlung-prioritaet.json)

### Formale Ansichten des Extension-Inhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [AlleAll](#tabs-all) 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Simple Extension with the type decimal, positiveInt: Priorität der (einzelnen) Empfehlung

 **Differential-AnsichtDifferential View** 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

 **Snapshot-Ansicht** 

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Simple Extension with the type decimal, positiveInt: Priorität der (einzelnen) Empfehlung

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-ex-seltene-empfehlung-prioritaet.csv), [Excel](../StructureDefinition-mii-ex-seltene-empfehlung-prioritaet.xlsx), [Schematron](../StructureDefinition-mii-ex-seltene-empfehlung-prioritaet.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-ex-seltene-empfehlung-prioritaet",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-prioritaet",
  "version" : "2027.0.0-ballot",
  "name" : "MII_EX_Seltene_Empfehlung_Prioritaet",
  "title" : "MII EX SE Empfehlung Priorität",
  "status" : "active",
  "date" : "2026-09-03T06:42:09+00:00",
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
  "description" : "Priorität der (einzelnen) Empfehlung",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "MedicationRequest"
  },
  {
    "type" : "element",
    "expression" : "RequestGroup"
  },
  {
    "type" : "element",
    "expression" : "ServiceRequest"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "MII EX SE Empfehlung Priorität",
      "definition" : "Priorität der (einzelnen) Empfehlung"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-prioritaet"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Priorität",
      "definition" : "Priorität dieser Empfehlung",
      "comment" : "Wert 1 entspricht der höchsten Priorität, alle weiteren eine jeweils niedrigere Priorität",
      "min" : 1,
      "type" : [{
        "code" : "decimal"
      },
      {
        "code" : "positiveInt"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.value[x]:valueDecimal",
      "path" : "Extension.value[x]",
      "sliceName" : "valueDecimal",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.value[x]:valuePositiveInt",
      "path" : "Extension.value[x]",
      "sliceName" : "valuePositiveInt",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "positiveInt"
      }],
      "mustSupport" : true
    }]
  }
}

```
