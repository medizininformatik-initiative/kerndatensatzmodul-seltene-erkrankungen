# MII EX SE Empfehlung Evidenzgraduierung - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII EX SE Empfehlung Evidenzgraduierung**

## Extension: MII EX SE Empfehlung Evidenzgraduierung 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-evidenzgraduierung | *Version*:2027.0.0-ballot |
| Active as of 2026-09-01 | *Computable Name*:MII_EX_Seltene_Empfehlung_Evidenzgraduierung |

Evidenzgraduierung der (einzelnen) Empfehlung

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MII PR SE Therapieempfehlung Kombinationstherapie](StructureDefinition-mii-pr-seltene-therapieempfehlung-kombination.md), [MII PR SE Therapieempfehlung Nicht-Medikamentös](StructureDefinition-mii-pr-seltene-therapieempfehlung-nicht-medikamentoes.md) and [MII PR SE Therapieempfehlung Systemische Therapie](StructureDefinition-mii-pr-seltene-therapieempfehlung.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.seltene|current/StructureDefinition/StructureDefinition-mii-ex-seltene-empfehlung-evidenzgraduierung.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-ex-seltene-empfehlung-evidenzgraduierung.csv), [Excel](../StructureDefinition-mii-ex-seltene-empfehlung-evidenzgraduierung.xlsx), [Schematron](../StructureDefinition-mii-ex-seltene-empfehlung-evidenzgraduierung.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-ex-seltene-empfehlung-evidenzgraduierung",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-evidenzgraduierung",
  "version" : "2027.0.0-ballot",
  "name" : "MII_EX_Seltene_Empfehlung_Evidenzgraduierung",
  "title" : "MII EX SE Empfehlung Evidenzgraduierung",
  "status" : "active",
  "date" : "2026-09-01T21:00:36+00:00",
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
  "description" : "Evidenzgraduierung der (einzelnen) Empfehlung",
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
    "expression" : "RequestGroup"
  },
  {
    "type" : "element",
    "expression" : "MedicationRequest"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "MII EX SE Empfehlung Evidenzgraduierung",
      "definition" : "Evidenzgraduierung der (einzelnen) Empfehlung"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-evidenzgraduierung"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Evidenzgraduierung",
      "definition" : "Evidenzgraduierung für Biomarker-basierte Empfehlung",
      "comment" : "Evidenzgraduierung wird durch einen Evidenzgrad und einen optionalen Zusatzverweis angegeben",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.value[x].coding",
      "path" : "Extension.value[x].coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "description" : "Slice für die Evidenzgraduierung anhand von `system`",
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Extension.value[x].coding:Evidenzgrad",
      "path" : "Extension.value[x].coding",
      "sliceName" : "Evidenzgrad",
      "short" : "Evidenzgrad",
      "definition" : "Evidenzgrad der Empfehlung",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.value[x].coding:Evidenzgrad.code",
      "path" : "Extension.value[x].coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Extension.value[x].coding:Zusatzverweis",
      "path" : "Extension.value[x].coding",
      "sliceName" : "Zusatzverweis",
      "short" : "Zusatzverweis",
      "definition" : "Zusatzverweis zum Evidenzgrad",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Extension.value[x].coding:Zusatzverweis.code",
      "path" : "Extension.value[x].coding.code",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
