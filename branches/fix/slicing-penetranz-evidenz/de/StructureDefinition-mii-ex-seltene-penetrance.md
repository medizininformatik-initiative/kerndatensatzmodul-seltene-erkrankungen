# MII EX SE Penetrance - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EX SE Penetrance**

## Extension: MII EX SE Penetrance 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-penetrance | *Version*:2027.0.0-ballot |
| Active Stand: 2026-08-31 | *Maschinenlesbarer Name*:Penetrance |

Extension to capture the penetrance of genetic variants associated with a rare disease

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MII PR SE Familienanamnese](StructureDefinition-mii-pr-seltene-familienanamnese.md) and [MII PR SE Genetic Diagnosis](StructureDefinition-mii-pr-seltene-genetic-diagnosis.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.seltene|current/StructureDefinition/StructureDefinition-mii-ex-seltene-penetrance.json)

### Formale Ansichten des Extension-Inhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [AlleAll](#tabs-all) 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Simple Extension with the type CodeableConcept, Quantity: Extension to capture the penetrance of genetic variants associated with a rare disease

 **Differential-AnsichtDifferential View** 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Terminology Bindings (Differential)

 **Snapshot-Ansicht** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Simple Extension with the type CodeableConcept, Quantity: Extension to capture the penetrance of genetic variants associated with a rare disease

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-ex-seltene-penetrance.csv), [Excel](../StructureDefinition-mii-ex-seltene-penetrance.xlsx), [Schematron](../StructureDefinition-mii-ex-seltene-penetrance.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-ex-seltene-penetrance",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-penetrance",
  "version" : "2027.0.0-ballot",
  "name" : "Penetrance",
  "title" : "MII EX SE Penetrance",
  "status" : "active",
  "date" : "2026-08-31T13:50:55+00:00",
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
  "description" : "Extension to capture the penetrance of genetic variants associated with a rare disease",
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
    "expression" : "Condition"
  },
  {
    "type" : "element",
    "expression" : "FamilyMemberHistory.condition"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "MII EX SE Penetrance",
      "definition" : "Extension to capture the penetrance of genetic variants associated with a rare disease"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-penetrance"
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
      "type" : [{
        "code" : "CodeableConcept"
      },
      {
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Extension.value[x]:valueCodeableConcept",
      "path" : "Extension.value[x]",
      "sliceName" : "valueCodeableConcept",
      "short" : "Qualitative penetrance description",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-penetrance"
      }
    },
    {
      "id" : "Extension.value[x]:valueQuantity",
      "path" : "Extension.value[x]",
      "sliceName" : "valueQuantity",
      "short" : "Quantitative penetrance percentage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Extension.value[x]:valueQuantity.unit",
      "path" : "Extension.value[x].unit",
      "patternString" : "%"
    },
    {
      "id" : "Extension.value[x]:valueQuantity.system",
      "path" : "Extension.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Extension.value[x]:valueQuantity.code",
      "path" : "Extension.value[x].code",
      "patternCode" : "%"
    }]
  }
}

```
