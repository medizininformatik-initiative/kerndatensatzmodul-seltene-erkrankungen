# MII PR SE Consanguinity - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2026.0.1

## Resource Profile: MII PR SE Consanguinity 

 
Observation-Profil zur Erfassung der Blutsverwandtschaft der Eltern (Consanguinity) im Kontext seltener Erkrankungen. Insbesondere für autosomal-rezessive genetisch bedingte Erkrankungen ist die Angabe, ob die Eltern blutsverwandt sind, ein relevanter Aspekt der Familienanamnese. Abgeleitet aus RD-CDM v2.0.0 (Element 6.4.4) bzw. dem JARDIN-MDS-Entwurf. 

**Usages:**

* Examples for this Profile: [Observation/mii-exa-seltene-consanguinity](Observation-mii-exa-seltene-consanguinity.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/mii-ig-seltene-erkrankungen-v2026-de|current/StructureDefinition/StructureDefinition-mii-pr-seltene-consanguinity.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-seltene-consanguinity.csv), [Excel](../StructureDefinition-mii-pr-seltene-consanguinity.xlsx), [Schematron](../StructureDefinition-mii-pr-seltene-consanguinity.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-seltene-consanguinity",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-consanguinity",
  "version" : "2026.0.1",
  "name" : "MII_PR_Seltene_Consanguinity",
  "title" : "MII PR SE Consanguinity",
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
  "description" : "Observation-Profil zur Erfassung der Blutsverwandtschaft der Eltern (Consanguinity) im Kontext seltener Erkrankungen. Insbesondere für autosomal-rezessive genetisch bedingte Erkrankungen ist die Angabe, ob die Eltern blutsverwandt sind, ein relevanter Aspekt der Familienanamnese. Abgeleitet aus RD-CDM v2.0.0 (Element 6.4.4) bzw. dem JARDIN-MDS-Entwurf.",
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
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
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
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "$this"
        }],
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.category:socialHistory",
      "path" : "Observation.category",
      "sliceName" : "socialHistory",
      "short" : "Kategorie: Sozial-/Familienanamnese",
      "min" : 1,
      "max" : "1",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "social-history"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "short" : "Blutsverwandtschaft der Eltern (Consanguinity)",
      "definition" : "Vorliegen einer biologischen Verwandtschaft der Eltern durch gemeinsame Abstammung (typischerweise Cousins 1. oder 2. Grades). Klinisch üblich: Verwandtschaft im Grad von Cousins 2. Grades oder näher.",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "842009",
          "display" : "Consanguinity"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "short" : "Indexpatient",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.focus",
      "path" : "Observation.focus",
      "short" : "Verweis auf die Familienanamnese-Ressource(n) der Eltern",
      "definition" : "Consanguinity ist eine Beziehung zwischen den beiden Eltern (nicht dem Indexpatienten selbst). Über focus können die zugehörigen Familienanamnese-Ressourcen der Eltern referenziert werden.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-familienanamnese"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
      "type" : [{
        "code" : "dateTime"
      },
      {
        "code" : "Period"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "short" : "Angabe der Blutsverwandtschaft: Ja / Nein / Unbekannt / Nicht erfasst",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x].coding",
      "path" : "Observation.value[x].coding",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-consanguinity"
      }
    },
    {
      "id" : "Observation.value[x].coding.system",
      "path" : "Observation.value[x].coding.system",
      "patternUri" : "http://snomed.info/sct"
    },
    {
      "id" : "Observation.value[x].text",
      "path" : "Observation.value[x].text",
      "mustSupport" : true
    }]
  }
}

```
