# MII PR SE Therapieplan - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2026.0.1

## Resource Profile: MII PR SE Therapieplan 

 
Therapieplan 

**Usages:**

* Examples for this Profile: [CarePlan/mii-exa-seltene-therapieplan](CarePlan-mii-exa-seltene-therapieplan.md)
* CapabilityStatements using this Profile: [MII CPS Seltene Erkrankungen CapabilityStatement](CapabilityStatement-mii-cps-seltene-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/mii-ig-seltene-erkrankungen-v2026-de|current/StructureDefinition/StructureDefinition-mii-pr-seltene-therapieplan.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-seltene-therapieplan.csv), [Excel](../StructureDefinition-mii-pr-seltene-therapieplan.xlsx), [Schematron](../StructureDefinition-mii-pr-seltene-therapieplan.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-seltene-therapieplan",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieplan",
  "version" : "2026.0.1",
  "name" : "MII_PR_Seltene_Therapieplan",
  "title" : "MII PR SE Therapieplan",
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
  "description" : "Therapieplan",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
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
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "CarePlan",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/CarePlan",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "CarePlan",
      "path" : "CarePlan"
    },
    {
      "id" : "CarePlan.status",
      "path" : "CarePlan.status",
      "definition" : "Status der Umsetzung des beschlossenen Therapieplans",
      "comment" : "\n    active: Empfehlung bzw. Therapieoption in Umsetzung (Regelfall), \n    revoked: Fall ist abgeschlossen, \n    completed: Alle Empfehlungen bzw. Therapieoptionen ausgeschöpft oder Patient verstorben"
    },
    {
      "id" : "CarePlan.description",
      "path" : "CarePlan.description",
      "short" : "Protokollauszug",
      "definition" : "Protokollauszug aus dem Beschluss",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.created",
      "path" : "CarePlan.created",
      "short" : "Erstellungsdatum",
      "definition" : "Erstellungsdatum des Therapieplans",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.supportingInfo",
      "path" : "CarePlan.supportingInfo",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "description" : "Slice für weitere Informationen",
        "ordered" : false,
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity",
      "path" : "CarePlan.activity",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "reference.resolve()"
        }],
        "description" : "Slice für Empfehlung zum weiteren Vorgehen auf Basis des referenzierten Ressourcentyps",
        "ordered" : false,
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity:MedikamentoesTherapie",
      "path" : "CarePlan.activity",
      "sliceName" : "MedikamentoesTherapie",
      "short" : "Medikamentöse Therapieempfehlung",
      "definition" : "Therapieempfehlung für eine medikamentöse Therapie (Systemtherapie, gezielte Therapie, Präventivmedikation, Gentherapie, Kombinationstherapie)",
      "comment" : "Referenziert MedicationRequest-basierte Profile für alle medikamentösen Therapien",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity:MedikamentoesTherapie.reference",
      "path" : "CarePlan.activity.reference",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung-kombination",
        "http://hl7.org/fhir/StructureDefinition/MedicationRequest",
        "http://hl7.org/fhir/StructureDefinition/RequestGroup"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity:MedikamentoesTherapie.detail",
      "path" : "CarePlan.activity.detail",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity:MedikamentoesTherapie.detail.statusReason",
      "path" : "CarePlan.activity.detail.statusReason",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-empfehlung-status-begruendung"
      }
    },
    {
      "id" : "CarePlan.activity:NichtMedikamentoesTherapie",
      "path" : "CarePlan.activity",
      "sliceName" : "NichtMedikamentoesTherapie",
      "short" : "Nicht-medikamentöse Therapieempfehlung",
      "definition" : "Therapieempfehlung für nicht-medikamentöse Interventionen (Ernährungstherapie, Prophylaxe, Früherkennung, humangenetische Beratung, andere)",
      "comment" : "Referenziert ServiceRequest-basierte Profile für alle nicht-medikamentösen Therapien einschließlich humangenetischer Beratung",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity:NichtMedikamentoesTherapie.reference",
      "path" : "CarePlan.activity.reference",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung-nicht-medikamentoes",
        "http://hl7.org/fhir/StructureDefinition/ServiceRequest"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity:NichtMedikamentoesTherapie.detail",
      "path" : "CarePlan.activity.detail",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity:NichtMedikamentoesTherapie.detail.statusReason",
      "path" : "CarePlan.activity.detail.statusReason",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-empfehlung-status-begruendung"
      }
    },
    {
      "id" : "CarePlan.activity:Studieneinschlussempfehlung",
      "path" : "CarePlan.activity",
      "sliceName" : "Studieneinschlussempfehlung",
      "short" : "Studieneinschlussempfehlung",
      "definition" : "Anfrage zum Studieneinschluss",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity:Studieneinschlussempfehlung.reference",
      "path" : "CarePlan.activity.reference",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-studieneinschluss-anfrage"]
      }],
      "mustSupport" : true
    }]
  }
}

```
