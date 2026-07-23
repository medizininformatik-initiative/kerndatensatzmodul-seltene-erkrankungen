# MII EX SE Empfehlung Evidenzgraduierung - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2026.0.1

## Extension: MII EX SE Empfehlung Evidenzgraduierung 

Evidenzgraduierung der (einzelnen) Empfehlung

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MII PR SE Therapieempfehlung Kombinationstherapie](StructureDefinition-mii-pr-seltene-therapieempfehlung-kombination.md), [MII PR SE Therapieempfehlung Nicht-Medikamentös](StructureDefinition-mii-pr-seltene-therapieempfehlung-nicht-medikamentoes.md) and [MII PR SE Therapieempfehlung Systemische Therapie](StructureDefinition-mii-pr-seltene-therapieempfehlung.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/mii-ig-seltene-erkrankungen-v2026-de|current/StructureDefinition/StructureDefinition-mii-ex-seltene-empfehlung-evidenzgraduierung.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-ex-seltene-empfehlung-evidenzgraduierung.csv), [Excel](../StructureDefinition-mii-ex-seltene-empfehlung-evidenzgraduierung.xlsx), [Schematron](../StructureDefinition-mii-ex-seltene-empfehlung-evidenzgraduierung.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-ex-seltene-empfehlung-evidenzgraduierung",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-evidenzgraduierung",
  "version" : "2026.0.1",
  "name" : "MII_EX_Seltene_Empfehlung_Evidenzgraduierung",
  "title" : "MII EX SE Empfehlung Evidenzgraduierung",
  "status" : "active",
  "date" : "2026-07-23T10:39:42+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Evidenzgraduierung der (einzelnen) Empfehlung",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
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
