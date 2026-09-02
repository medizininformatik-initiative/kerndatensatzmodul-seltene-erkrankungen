# MII PR SE ICF Assessment - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR SE ICF Assessment**

## Ressourcenprofil: MII PR SE ICF Assessment 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-icf-assessment | *Version*:2027.0.0-ballot |
| Active Stand: 2026-09-02 | *Maschinenlesbarer Name*:MII_PR_Seltene_ICFAssessment |

 
Observation profile grading a single ICF category for a patient, as required by the JARDIN MDS draft and the ERDRI-CDS. Observation.code carries the ICF category; the WHO qualifiers are carried as components, because body structures take three of them and activities/participation take two (capacity and performance). 

**Usages:**

* Examples for this Profile: [Observation/mii-exa-seltene-icf-aktivitaet](Observation-mii-exa-seltene-icf-aktivitaet.md), [Observation/mii-exa-seltene-icf-koerperfunktion](Observation-mii-exa-seltene-icf-koerperfunktion.md), [Observation/mii-exa-seltene-icf-koerperstruktur](Observation-mii-exa-seltene-icf-koerperstruktur.md) and [Observation/mii-exa-seltene-icf-umweltfaktor](Observation-mii-exa-seltene-icf-umweltfaktor.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.seltene|current/StructureDefinition/StructureDefinition-mii-pr-seltene-icf-assessment.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Observation](http://hl7.org/fhir/R4/observation.html) 

#### Terminology Bindings (Differential)

#### Constraints

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Observation](http://hl7.org/fhir/R4/observation.html) 

** Summary **

Mandatory: 4 elements
 Must-Support: 21 elements
 Prohibited: 1 element

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Observation.category
* The element 1 is sliced based on the value of Observation.component

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [Observation](http://hl7.org/fhir/R4/observation.html) 

#### Terminology Bindings (Differential)

#### Constraints

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Observation](http://hl7.org/fhir/R4/observation.html) 

** Summary **

Mandatory: 4 elements
 Must-Support: 21 elements
 Prohibited: 1 element

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Observation.category
* The element 1 is sliced based on the value of Observation.component

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-seltene-icf-assessment.csv), [Excel](../StructureDefinition-mii-pr-seltene-icf-assessment.xlsx), [Schematron](../StructureDefinition-mii-pr-seltene-icf-assessment.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-seltene-icf-assessment",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-icf-assessment",
  "version" : "2027.0.0-ballot",
  "name" : "MII_PR_Seltene_ICFAssessment",
  "title" : "MII PR SE ICF Assessment",
  "status" : "active",
  "date" : "2026-09-02T06:41:45+00:00",
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
  "description" : "Observation profile grading a single ICF category for a patient, as required by the JARDIN MDS draft and the ERDRI-CDS. Observation.code carries the ICF category; the WHO qualifiers are carried as components, because body structures take three of them and activities/participation take two (capacity and performance).",
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
      "path" : "Observation",
      "constraint" : [{
        "key" : "mii-icf-1",
        "severity" : "error",
        "human" : "Body functions (chapter b) take only the extent-of-impairment qualifier.",
        "expression" : "code.coding.where(system='http://hl7.org/fhir/sid/icf').code.first().startsWith('b') implies component.where(code.coding.code != 'extent-of-impairment').empty()",
        "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-icf-assessment"
      },
      {
        "key" : "mii-icf-2",
        "severity" : "error",
        "human" : "Body structures (chapter s) take only extent, nature of change and anatomical location.",
        "expression" : "code.coding.where(system='http://hl7.org/fhir/sid/icf').code.first().startsWith('s') implies component.where(code.coding.code != 'extent-of-impairment-structure' and code.coding.code != 'nature-of-change' and code.coding.code != 'anatomical-location').empty()",
        "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-icf-assessment"
      },
      {
        "key" : "mii-icf-3",
        "severity" : "error",
        "human" : "Activities and participation (chapter d) take only capacity and performance.",
        "expression" : "code.coding.where(system='http://hl7.org/fhir/sid/icf').code.first().startsWith('d') implies component.where(code.coding.code != 'capacity' and code.coding.code != 'performance').empty()",
        "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-icf-assessment"
      },
      {
        "key" : "mii-icf-4",
        "severity" : "error",
        "human" : "Environmental factors (chapter e) take only the barrier or facilitator qualifier.",
        "expression" : "code.coding.where(system='http://hl7.org/fhir/sid/icf').code.first().startsWith('e') implies component.where(code.coding.code != 'barrier' and code.coding.code != 'facilitator').empty()",
        "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-icf-assessment"
      },
      {
        "key" : "mii-icf-5",
        "severity" : "error",
        "human" : "An environmental factor is graded as a barrier or as a facilitator, not as both at once.",
        "expression" : "component.where(code.coding.code = 'barrier').empty() or component.where(code.coding.code = 'facilitator').empty()",
        "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-icf-assessment"
      }]
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
      "id" : "Observation.category:survey",
      "path" : "Observation.category",
      "sliceName" : "survey",
      "short" : "Category: survey/assessment",
      "min" : 1,
      "max" : "1",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "survey"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "short" : "ICF category being graded",
      "definition" : "A single ICF category, e.g. b280 |Sensation of pain| or d450 |Walking|. The chapters are b (body functions), s (body structures), d (activities and participation) and e (environmental factors). German display text is available through the BfArM language supplement without changing the code system.",
      "mustSupport" : true
    },
    {
      "id" : "Observation.code.coding",
      "path" : "Observation.code.coding",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-icf"
      }
    },
    {
      "id" : "Observation.code.coding.system",
      "path" : "Observation.code.coding.system",
      "patternUri" : "http://hl7.org/fhir/sid/icf"
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
      "short" : "When the assessment was made — ICF gradings are point-in-time and change over the course of a disease",
      "min" : 1,
      "type" : [{
        "code" : "dateTime"
      },
      {
        "code" : "Period"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.performer",
      "path" : "Observation.performer",
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "max" : "0"
    },
    {
      "id" : "Observation.note",
      "path" : "Observation.note",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "code"
        }],
        "description" : "One slice per ICF qualifier. Which ones apply depends on the chapter of the category in Observation.code.",
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:extentOfImpairment",
      "path" : "Observation.component",
      "sliceName" : "extentOfImpairment",
      "short" : "Body functions (b): extent of impairment",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:extentOfImpairment.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-icf-beurteilungsmerkmal",
          "code" : "extent-of-impairment"
        }]
      }
    },
    {
      "id" : "Observation.component:extentOfImpairment.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://terminologien.bfarm.de/fhir/ValueSet/icf-q-ausmass-der-schaedigung"
      }
    },
    {
      "id" : "Observation.component:extentOfImpairmentBodyStructure",
      "path" : "Observation.component",
      "sliceName" : "extentOfImpairmentBodyStructure",
      "short" : "Body structures (s), first qualifier: extent of impairment",
      "comment" : "BfArM publishes a separate code system for body structures even though the scale reads the same as for body functions. The two are kept apart here rather than merged, so that an instance stays valid against the source terminology.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:extentOfImpairmentBodyStructure.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-icf-beurteilungsmerkmal",
          "code" : "extent-of-impairment-structure"
        }]
      }
    },
    {
      "id" : "Observation.component:extentOfImpairmentBodyStructure.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://terminologien.bfarm.de/fhir/ValueSet/icf-q-ausmass-der-schaedigung-s"
      }
    },
    {
      "id" : "Observation.component:natureOfChange",
      "path" : "Observation.component",
      "sliceName" : "natureOfChange",
      "short" : "Body structures (s), second qualifier: nature of the change",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:natureOfChange.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-icf-beurteilungsmerkmal",
          "code" : "nature-of-change"
        }]
      }
    },
    {
      "id" : "Observation.component:natureOfChange.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://terminologien.bfarm.de/fhir/ValueSet/icf-q-art-oder-veraenderung-in-der-entsprechenden-koerperstruktur"
      }
    },
    {
      "id" : "Observation.component:anatomicalLocation",
      "path" : "Observation.component",
      "sliceName" : "anatomicalLocation",
      "short" : "Body structures (s), third qualifier: anatomical location",
      "comment" : "The ICF marks this third qualifier as still under development ('in Entwicklung').",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:anatomicalLocation.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-icf-beurteilungsmerkmal",
          "code" : "anatomical-location"
        }]
      }
    },
    {
      "id" : "Observation.component:anatomicalLocation.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://terminologien.bfarm.de/fhir/ValueSet/icf-q-anatomische-lokalisation"
      }
    },
    {
      "id" : "Observation.component:capacity",
      "path" : "Observation.component",
      "sliceName" : "capacity",
      "short" : "Activities and participation (d): CAPACITY — what the person can do in a standardised environment",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:capacity.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-icf-beurteilungsmerkmal",
          "code" : "capacity"
        }]
      }
    },
    {
      "id" : "Observation.component:capacity.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://terminologien.bfarm.de/fhir/ValueSet/icf-q-leistungsfaehigkeit-und-leistung"
      }
    },
    {
      "id" : "Observation.component:performance",
      "path" : "Observation.component",
      "sliceName" : "performance",
      "short" : "Activities and participation (d): PERFORMANCE — what the person actually does in their current environment",
      "comment" : "Capacity and performance draw on the same BfArM code system and are distinguished only by this component code. The gap between them is what quantifies the effect of assistive devices and personal assistance.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:performance.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-icf-beurteilungsmerkmal",
          "code" : "performance"
        }]
      }
    },
    {
      "id" : "Observation.component:performance.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://terminologien.bfarm.de/fhir/ValueSet/icf-q-leistungsfaehigkeit-und-leistung"
      }
    },
    {
      "id" : "Observation.component:barrier",
      "path" : "Observation.component",
      "sliceName" : "barrier",
      "short" : "Environmental factors (e): extent to which the factor acts as a barrier",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:barrier.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-icf-beurteilungsmerkmal",
          "code" : "barrier"
        }]
      }
    },
    {
      "id" : "Observation.component:barrier.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://terminologien.bfarm.de/fhir/ValueSet/icf-q-barrieren"
      }
    },
    {
      "id" : "Observation.component:facilitator",
      "path" : "Observation.component",
      "sliceName" : "facilitator",
      "short" : "Environmental factors (e): extent to which the factor acts as a facilitator",
      "comment" : "Facilitator codes carry a leading '+' ('+0'..'+4'), barriers a leading '.'. The sign is part of the code, so barrier and facilitator never collide.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:facilitator.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-icf-beurteilungsmerkmal",
          "code" : "facilitator"
        }]
      }
    },
    {
      "id" : "Observation.component:facilitator.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://terminologien.bfarm.de/fhir/ValueSet/icf-q-foerderfaktoren"
      }
    }]
  }
}

```
