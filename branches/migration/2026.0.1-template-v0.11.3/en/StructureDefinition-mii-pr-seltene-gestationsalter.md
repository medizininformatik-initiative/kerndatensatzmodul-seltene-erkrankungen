# MII PR SE Gestationsalter bei Geburt - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR SE Gestationsalter bei Geburt**

## Resource Profile: MII PR SE Gestationsalter bei Geburt 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-gestationsalter | *Version*:2027.0.0-ballot |
| Active as of 2026-09-02 | *Computable Name*:MII_PR_Seltene_Gestationsalter |

 
Gestationsalter bei Geburt (Schwangerschaftsdauer bis zur Entbindung). Bei seltenen Erkrankungen relevant, weil Frühgeburtlichkeit sowohl Folge einer Grunderkrankung als auch Störgröße bei der Bewertung von Wachstums- und Entwicklungsparametern sein kann. 

**Usages:**

* Examples for this Profile: [Observation/mii-exa-seltene-gestationsalter](Observation-mii-exa-seltene-gestationsalter.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.seltene|current/StructureDefinition/StructureDefinition-mii-pr-seltene-gestationsalter.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-seltene-gestationsalter.csv), [Excel](../StructureDefinition-mii-pr-seltene-gestationsalter.xlsx), [Schematron](../StructureDefinition-mii-pr-seltene-gestationsalter.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-seltene-gestationsalter",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-gestationsalter",
  "version" : "2027.0.0-ballot",
  "name" : "MII_PR_Seltene_Gestationsalter",
  "title" : "MII PR SE Gestationsalter bei Geburt",
  "status" : "active",
  "date" : "2026-09-02T03:14:53+00:00",
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
  "description" : "Gestationsalter bei Geburt (Schwangerschaftsdauer bis zur Entbindung). Bei seltenen Erkrankungen relevant, weil Frühgeburtlichkeit sowohl Folge einer Grunderkrankung als auch Störgröße bei der Bewertung von Wachstums- und Entwicklungsparametern sein kann.",
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
      "path" : "Observation"
    },
    {
      "id" : "Observation.id",
      "path" : "Observation.id",
      "mustSupport" : true
    },
    {
      "id" : "Observation.meta",
      "path" : "Observation.meta",
      "mustSupport" : true
    },
    {
      "id" : "Observation.meta.profile",
      "path" : "Observation.meta.profile",
      "mustSupport" : true
    },
    {
      "id" : "Observation.status",
      "path" : "Observation.status",
      "mustSupport" : true
    },
    {
      "id" : "Observation.category",
      "path" : "Observation.category",
      "mustSupport" : true
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "short" : "Gestationsalter bei Geburt",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "76516-4",
          "display" : "Gestational age--at birth"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
      "type" : [{
        "code" : "dateTime"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "short" : "Vollendete Schwangerschaftswochen",
      "comment" : "In vollendeten Wochen (UCUM wk). Die in der Geburtsmedizin übliche Schreibweise 'SSW+Tage' ist hier nicht darstellbar; für tagesgenaue Angaben ist der Wert als Dezimalbruch der Woche anzugeben oder auf Tage (UCUM d) auszuweichen, was dann von diesem Profil abweicht.",
      "min" : 1,
      "type" : [{
        "code" : "Quantity"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x].value",
      "path" : "Observation.value[x].value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x].unit",
      "path" : "Observation.value[x].unit",
      "patternString" : "Wochen"
    },
    {
      "id" : "Observation.value[x].system",
      "path" : "Observation.value[x].system",
      "min" : 1,
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.value[x].code",
      "path" : "Observation.value[x].code",
      "min" : 1,
      "patternCode" : "wk"
    }]
  }
}

```
