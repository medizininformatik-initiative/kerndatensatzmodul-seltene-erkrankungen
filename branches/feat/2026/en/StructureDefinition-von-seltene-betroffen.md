# VonSEBetroffen - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2026.0.1

## Extension: 

Wird in der MII Modul SE Familienanamnese genutzt um zu bestimmen ob ein Familienmitglied an der gleichen SE erkrankt ist.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MII PR SE Familienanamnese](StructureDefinition-mii-pr-seltene-familienanamnese.md)
* Examples for this Extension: [Bundle/bundle-sma-complete](Bundle-bundle-sma-complete.md), [FamilyMemberHistory/family-history-001](FamilyMemberHistory-family-history-001.md) and [FamilyMemberHistory/mii-exa-seltene-familienanamnese](FamilyMemberHistory-mii-exa-seltene-familienanamnese.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/mii-ig-seltene-erkrankungen-v2026-de|current/StructureDefinition/StructureDefinition-von-seltene-betroffen.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-von-seltene-betroffen.csv), [Excel](../StructureDefinition-von-seltene-betroffen.xlsx), [Schematron](../StructureDefinition-von-seltene-betroffen.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "von-seltene-betroffen",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/von-seltene-betroffen",
  "version" : "2026.0.1",
  "name" : "VonSEBetroffen",
  "status" : "active",
  "date" : "2026-07-28T16:11:09+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Wird in der MII Modul SE Familienanamnese genutzt um zu bestimmen ob ein Familienmitglied an der gleichen SE erkrankt ist.",
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
    "expression" : "Element"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "definition" : "Wird in der MII Modul SE Familienanamnese genutzt um zu bestimmen ob ein Familienmitglied an der gleichen SE erkrankt ist."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/von-seltene-betroffen"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/von-seltene-betroffen-vs"
      }
    }]
  }
}

```
