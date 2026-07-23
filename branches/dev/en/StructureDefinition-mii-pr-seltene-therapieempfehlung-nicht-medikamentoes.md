# MII PR SE Therapieempfehlung Nicht-Medikamentös - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2026.0.1

## Resource Profile: MII PR SE Therapieempfehlung Nicht-Medikamentös 

 
Therapieempfehlung für nicht-medikamentöse Interventionen bei seltenen Erkrankungen (z.B. Ernährungstherapie, Gentherapie, Prophylaxe, Früherkennung) 

**Usages:**

* Refer to this Profile: [MII PR SE Therapieplan](StructureDefinition-mii-pr-seltene-therapieplan.md)
* Examples for this Profile: [ServiceRequest/example-early-detection-recommendation](ServiceRequest-example-early-detection-recommendation.md), [ServiceRequest/example-nutrition-therapy-recommendation](ServiceRequest-example-nutrition-therapy-recommendation.md), [ServiceRequest/mii-exa-seltene-therapieempfehlung-aortenwurzelersatz-marfan](ServiceRequest-mii-exa-seltene-therapieempfehlung-aortenwurzelersatz-marfan.md), [ServiceRequest/mii-exa-seltene-therapieempfehlung-genetische-beratung](ServiceRequest-mii-exa-seltene-therapieempfehlung-genetische-beratung.md) and [ServiceRequest/mii-exa-seltene-therapieempfehlung-physiotherapie-sma](ServiceRequest-mii-exa-seltene-therapieempfehlung-physiotherapie-sma.md)
* CapabilityStatements using this Profile: [MII CPS Seltene Erkrankungen CapabilityStatement](CapabilityStatement-mii-cps-seltene-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/mii-ig-seltene-erkrankungen-v2026-de|current/StructureDefinition/StructureDefinition-mii-pr-seltene-therapieempfehlung-nicht-medikamentoes.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-seltene-therapieempfehlung-nicht-medikamentoes.csv), [Excel](../StructureDefinition-mii-pr-seltene-therapieempfehlung-nicht-medikamentoes.xlsx), [Schematron](../StructureDefinition-mii-pr-seltene-therapieempfehlung-nicht-medikamentoes.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-seltene-therapieempfehlung-nicht-medikamentoes",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung-nicht-medikamentoes",
  "version" : "2026.0.1",
  "name" : "MII_PR_Seltene_TherapieempfehlungNichtMedikamentoes",
  "title" : "MII PR SE Therapieempfehlung Nicht-Medikamentös",
  "status" : "active",
  "date" : "2026-07-23T11:20:28+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Therapieempfehlung für nicht-medikamentöse Interventionen bei seltenen Erkrankungen (z.B. Ernährungstherapie, Gentherapie, Prophylaxe, Früherkennung)",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
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
    "identity" : "quick",
    "uri" : "http://siframework.org/cqf",
    "name" : "Quality Improvement and Clinical Knowledge (QUICK)"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ServiceRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ServiceRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ServiceRequest",
      "path" : "ServiceRequest"
    },
    {
      "id" : "ServiceRequest.extension",
      "path" : "ServiceRequest.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "ServiceRequest.extension:Prioritaet",
      "path" : "ServiceRequest.extension",
      "sliceName" : "Prioritaet",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-prioritaet"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.extension:Evidenzgraduierung",
      "path" : "ServiceRequest.extension",
      "sliceName" : "Evidenzgraduierung",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-evidenzgraduierung"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.extension:Publikation",
      "path" : "ServiceRequest.extension",
      "sliceName" : "Publikation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-publikation"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.status",
      "path" : "ServiceRequest.status",
      "definition" : "Status der Umsetzung der nicht-medikamentösen Therapieempfehlung",
      "comment" : "draft: Nicht umgesetzt, active: In Umsetzung, completed: Abgeschlossen",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.intent",
      "path" : "ServiceRequest.intent",
      "short" : "proposal",
      "definition" : "Da es sich um Empfehlungen handelt, wird hier 'proposal' verwendet",
      "patternCode" : "proposal",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.category",
      "path" : "ServiceRequest.category",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "$this"
        }],
        "description" : "Slice für Therapiestrategie-Kategorisierung aus Modellvorhaben GenomSeq",
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.category:MVGenomSeqTherapieStrategie",
      "path" : "ServiceRequest.category",
      "sliceName" : "MVGenomSeqTherapieStrategie",
      "short" : "Modellvorhaben GenomSeq Therapiestrategie-Typ (Nicht-Medikamentös)",
      "definition" : "Kategorisierung der nicht-medikamentösen Therapieempfehlung nach Modellvorhaben GenomSeq",
      "comment" : "Dieses Feld ist spezifisch für die Integration mit Modellvorhaben GenomSeq. Es ermöglicht die Kategorisierung gemäß RareDiseasesPlan.recommendedTherapies.strategy. Nur für nicht-medikamentöse Strategien: prophylactic, early-detection, nutrition, other.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-therapieempfehlung-strategie-nicht-medikamentoes"
      }
    },
    {
      "id" : "ServiceRequest.category:MVGenomSeqTherapieStrategie.coding",
      "path" : "ServiceRequest.category.coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "ServiceRequest.category:MVGenomSeqTherapieStrategie.coding.system",
      "path" : "ServiceRequest.category.coding.system",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.category:MVGenomSeqTherapieStrategie.coding.code",
      "path" : "ServiceRequest.category.coding.code",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.category:MVGenomSeqTherapieTyp",
      "path" : "ServiceRequest.category",
      "sliceName" : "MVGenomSeqTherapieTyp",
      "short" : "Modellvorhaben GenomSeq Therapietyp (Kausal/Symptomatisch)",
      "definition" : "Kategorisierung der Therapieempfehlung nach Therapietyp (kausal vs. symptomatisch) gemäß Modellvorhaben GenomSeq",
      "comment" : "Dieses Feld ermöglicht die Unterscheidung, ob die Therapie die zugrundeliegende Ursache der Erkrankung adressiert (kausal) oder Symptome und Manifestationen behandelt (symptomatisch). Entspricht RareDiseasesPlan.recommendedTherapies.therapyType aus MV GenomSeq.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-therapieempfehlung-typ"
      }
    },
    {
      "id" : "ServiceRequest.category:MVGenomSeqTherapieTyp.coding",
      "path" : "ServiceRequest.category.coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "ServiceRequest.category:MVGenomSeqTherapieTyp.coding.system",
      "path" : "ServiceRequest.category.coding.system",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.category:MVGenomSeqTherapieTyp.coding.code",
      "path" : "ServiceRequest.category.coding.code",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.priority",
      "path" : "ServiceRequest.priority",
      "definition" : "Dringlichkeit der Therapieempfehlung",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.code",
      "path" : "ServiceRequest.code",
      "short" : "Art der nicht-medikamentösen Intervention",
      "definition" : "Spezifische Codierung der empfohlenen nicht-medikamentösen Therapie",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.code.coding",
      "path" : "ServiceRequest.code.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "system"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "ServiceRequest.code.coding:snomed",
      "path" : "ServiceRequest.code.coding",
      "sliceName" : "snomed",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://hl7.org/fhir/ValueSet/procedure-code"
      }
    },
    {
      "id" : "ServiceRequest.code.coding:snomed.system",
      "path" : "ServiceRequest.code.coding.system",
      "min" : 1,
      "patternUri" : "http://snomed.info/sct"
    },
    {
      "id" : "ServiceRequest.code.coding:ops",
      "path" : "ServiceRequest.code.coding",
      "sliceName" : "ops",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://fhir.de/ValueSet/bfarm/ops"
      }
    },
    {
      "id" : "ServiceRequest.code.coding:ops.system",
      "path" : "ServiceRequest.code.coding.system",
      "min" : 1,
      "patternUri" : "http://fhir.de/CodeSystem/bfarm/ops"
    },
    {
      "id" : "ServiceRequest.code.coding:loinc",
      "path" : "ServiceRequest.code.coding",
      "sliceName" : "loinc",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.code.coding:loinc.system",
      "path" : "ServiceRequest.code.coding.system",
      "min" : 1,
      "patternUri" : "http://loinc.org"
    },
    {
      "id" : "ServiceRequest.code.text",
      "path" : "ServiceRequest.code.text",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.subject",
      "path" : "ServiceRequest.subject",
      "short" : "Patient, für den die Therapie empfohlen wird",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.encounter",
      "path" : "ServiceRequest.encounter",
      "short" : "Behandlungskontext der Empfehlung",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.occurrence[x]",
      "path" : "ServiceRequest.occurrence[x]",
      "short" : "Empfohlener Zeitpunkt oder Zeitraum für die Intervention",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.requester",
      "path" : "ServiceRequest.requester",
      "short" : "Empfehlender Arzt/Einrichtung",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Practitioner",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
        "http://hl7.org/fhir/StructureDefinition/Organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.performer",
      "path" : "ServiceRequest.performer",
      "short" : "Vorgesehener Durchführender der Intervention",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.reasonCode",
      "path" : "ServiceRequest.reasonCode",
      "short" : "Grund für die Therapieempfehlung (codiert)",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.reasonReference",
      "path" : "ServiceRequest.reasonReference",
      "short" : "Verweis auf zugrundeliegende Diagnose oder Befund",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Condition",
        "http://hl7.org/fhir/StructureDefinition/Observation",
        "http://hl7.org/fhir/StructureDefinition/DiagnosticReport"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.supportingInfo",
      "path" : "ServiceRequest.supportingInfo",
      "short" : "Unterstützende Informationen zur Empfehlung",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/DocumentReference",
        "http://hl7.org/fhir/StructureDefinition/Observation",
        "http://hl7.org/fhir/StructureDefinition/DiagnosticReport"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.note",
      "path" : "ServiceRequest.note",
      "short" : "Zusätzliche Anmerkungen zur Therapieempfehlung",
      "mustSupport" : true
    }]
  }
}

```
