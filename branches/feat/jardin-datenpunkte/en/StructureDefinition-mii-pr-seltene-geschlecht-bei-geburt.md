# MII PR SE Geschlecht bei Geburt - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR SE Geschlecht bei Geburt**

## Resource Profile: MII PR SE Geschlecht bei Geburt 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-geschlecht-bei-geburt | *Version*:2027.0.0-ballot |
| Active as of 2026-09-01 | *Computable Name*:MII_PR_Seltene_GeschlechtBeiGeburt |

 
Observation-Profil zur Erfassung des biologischen Geschlechts bei Geburt (sex assigned at birth) gemaess JARDIN-MDS-Entwurf und ERDRI-CDS. Bewusst getrennt vom administrativen Patient.gender des MII KDS Moduls Person, von dem es abweichen kann. 

**Usages:**

* Examples for this Profile: [Observation/mii-exa-seltene-geschlecht-bei-geburt-indeterminate](Observation-mii-exa-seltene-geschlecht-bei-geburt-indeterminate.md) and [Observation/mii-exa-seltene-geschlecht-bei-geburt](Observation-mii-exa-seltene-geschlecht-bei-geburt.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.seltene|current/StructureDefinition/StructureDefinition-mii-pr-seltene-geschlecht-bei-geburt.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-seltene-geschlecht-bei-geburt.csv), [Excel](../StructureDefinition-mii-pr-seltene-geschlecht-bei-geburt.xlsx), [Schematron](../StructureDefinition-mii-pr-seltene-geschlecht-bei-geburt.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-seltene-geschlecht-bei-geburt",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-geschlecht-bei-geburt",
  "version" : "2027.0.0-ballot",
  "name" : "MII_PR_Seltene_GeschlechtBeiGeburt",
  "title" : "MII PR SE Geschlecht bei Geburt",
  "status" : "active",
  "date" : "2026-09-01T21:17:23+00:00",
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
  "description" : "Observation-Profil zur Erfassung des biologischen Geschlechts bei Geburt (sex assigned at birth) gemaess JARDIN-MDS-Entwurf und ERDRI-CDS. Bewusst getrennt vom administrativen Patient.gender des MII KDS Moduls Person, von dem es abweichen kann.",
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
      "short" : "Kategorie: Sozialanamnese",
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
      "short" : "Biologisches Geschlecht bei Geburt",
      "definition" : "Das bei der Geburt festgestellte biologische Geschlecht. Abzugrenzen vom administrativen Geschlecht (Patient.gender) und von der Geschlechtsidentitaet (LOINC 76691-5).",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "76689-9",
          "display" : "Sex assigned at birth"
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
      "short" : "Zeitpunkt der Feststellung (in der Regel das Geburtsdatum)",
      "type" : [{
        "code" : "dateTime"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "short" : "Male | Female | Indeterminate sex | Unknown",
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
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-geschlecht-bei-geburt"
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
