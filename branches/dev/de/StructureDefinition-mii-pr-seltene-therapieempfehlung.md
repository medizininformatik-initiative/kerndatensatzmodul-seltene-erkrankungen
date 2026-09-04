# MII PR SE Therapieempfehlung Systemische Therapie - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR SE Therapieempfehlung Systemische Therapie**

## Ressourcenprofil: MII PR SE Therapieempfehlung Systemische Therapie 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2026-09-04 | *Maschinenlesbarer Name*:MII_PR_Seltene_Therapieempfehlung |

 
Therapieempfehlung für eine medikamentöse Systemische Therapie 

Dieses Profil beschreibt eine **medikamentöse Therapieempfehlung** für Patienten mit Seltenen Erkrankungen. Es basiert auf der FHIR-Ressource MedicationRequest und umfasst systemische, gezielte, präventive und gentherapeutische Behandlungsansätze.

### Anwendungsfälle

Medikamentöse Therapieempfehlungen umfassen:

* **Systemische Therapien**: Chemotherapie, Immuntherapie, Hormontherapie
* **Gezielte Therapien**: Targeted Therapy basierend auf molekularen Markern
* **Präventive Therapien**: Prophylaktische Medikation zur Vermeidung von Komplikationen
* **Gentherapien**: Gentherapeutika für seltene genetische Erkrankungen (z.B. Onasemnogene abeparvovec für SMA)
* **Kombinationstherapien**: Siehe separates Profil [Therapieempfehlung-Kombination](StructureDefinition-mii-pr-seltene-therapieempfehlung-kombination.md)

### Implementierungshinweise

#### Kodierung von Medikamenten

* Verwendung von **ATC-Codes** für die Klassifikation
* **UNII-Codes** für neuere Wirkstoffe (insbesondere bei Studien)

#### Status und Intent

* `status`: Typischerweise "draft" für Empfehlungen, "active" nach Genehmigung
* `intent`: "proposal" für Therapieempfehlungen, "order" bei Umsetzung

#### Dosierung

* Strukturierte Dosisangaben mit `dosageInstruction`
* Unterstützung für komplexe Schemata (z.B. Titration, zyklische Gabe)
* Für die korrekte Angabe der Dosierung sind die Vorgaben der [Spezifikation Medikation IG DE](https://build.fhir.org/ig/hl7germany/medication-dosage-ig/index.html) zu beachten

#### Begründung

* Verknüpfung zur Diagnose über `reasonReference`
* Molekulare Marker über Extensions wenn relevant

-------

### Suchparameter

Folgende Suchparameter sind für medikamentöse Therapieempfehlungen relevant:

1. **_id**: Suche nach ID der Ressource `GET [base]/MedicationRequest?_id=1234`
1. **_profile**: Suche nach Profil `GET [base]/MedicationRequest?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung`
1. **subject**: Suche nach Patient `GET [base]/MedicationRequest?subject=Patient/example`
1. **status**: Suche nach Status `GET [base]/MedicationRequest?status=active`
1. **intent**: Suche nach Intent `GET [base]/MedicationRequest?intent=proposal`
1. **medication**: Suche nach Medikament `GET [base]/MedicationRequest?medication=http://fhir.de/CodeSystem/ifa/pzn|12345678`
1. **authored-on**: Suche nach Erstellungsdatum `GET [base]/MedicationRequest?authored-on=2024-02-08`

-------

Beispielinstanzen sind auf der Profilseite im Abschnitt „Examples" verlinkt.

### Verwandte Profile

* [Therapieempfehlung-Kombination](StructureDefinition-mii-pr-seltene-therapieempfehlung-kombination.md) - Für Kombinationstherapien
* [Therapieempfehlung-Nicht-Medikamentoes](StructureDefinition-mii-pr-seltene-therapieempfehlung-nicht-medikamentoes.md) - Für nicht-medikamentöse Therapien
* [Therapieplan](StructureDefinition-mii-pr-seltene-therapieplan.md) - Übergeordneter Therapieplan

**Usages:**

* Refer to this Profile: [MII PR SE Therapieempfehlung Kombinationstherapie](StructureDefinition-mii-pr-seltene-therapieempfehlung-kombination.md) and [MII PR SE Therapieplan](StructureDefinition-mii-pr-seltene-therapieplan.md)
* Examples for this Profile: [MedicationRequest/mii-exa-seltene-therapieempfehlung-gentherapie-sma](MedicationRequest-mii-exa-seltene-therapieempfehlung-gentherapie-sma.md) and [MedicationRequest/mii-exa-seltene-therapieempfehlung-losartan-marfan](MedicationRequest-mii-exa-seltene-therapieempfehlung-losartan-marfan.md)
* CapabilityStatements using this Profile: [MII CPS Seltene Erkrankungen CapabilityStatement](CapabilityStatement-mii-cps-seltene-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.seltene|current/StructureDefinition/StructureDefinition-mii-pr-seltene-therapieempfehlung.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Medikation_MedicationRequest](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.medikation@2026.0.1&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest) 

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Medikation_MedicationRequest](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.medikation@2026.0.1&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest) 

** Summary **

Mandatory: 0 element(6 nested mandatory elements)
 Must-Support: 5 elements

**Extensions**

This structure refers to these extensions:

* [https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-prioritaet](StructureDefinition-mii-ex-seltene-empfehlung-prioritaet.md)
* [https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-publikation](StructureDefinition-mii-ex-seltene-empfehlung-publikation.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of MedicationRequest.category
* The element 1 is sliced based on the value of MedicationRequest.reasonReference

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [MII_PR_Medikation_MedicationRequest](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.medikation@2026.0.1&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest) 

#### Terminology Bindings (Differential)

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Medikation_MedicationRequest](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.medikation@2026.0.1&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest) 

** Summary **

Mandatory: 0 element(6 nested mandatory elements)
 Must-Support: 5 elements

**Extensions**

This structure refers to these extensions:

* [https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-prioritaet](StructureDefinition-mii-ex-seltene-empfehlung-prioritaet.md)
* [https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-publikation](StructureDefinition-mii-ex-seltene-empfehlung-publikation.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of MedicationRequest.category
* The element 1 is sliced based on the value of MedicationRequest.reasonReference

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-seltene-therapieempfehlung.csv), [Excel](../StructureDefinition-mii-pr-seltene-therapieempfehlung.xlsx), [Schematron](../StructureDefinition-mii-pr-seltene-therapieempfehlung.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-seltene-therapieempfehlung",
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/modul-meta/StructureDefinition/mii-ex-meta-license-codeable",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://hl7.org/fhir/spdx-license",
        "code" : "CC-BY-4.0",
        "display" : "Creative Commons Attribution 4.0 International"
      }]
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_PR_Seltene_Therapieempfehlung",
  "title" : "MII PR SE Therapieempfehlung Systemische Therapie",
  "status" : "active",
  "date" : "2026-09-04T16:11:50+00:00",
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
  "description" : "Therapieempfehlung für eine medikamentöse Systemische Therapie",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationRequest",
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationRequest",
      "path" : "MedicationRequest"
    },
    {
      "id" : "MedicationRequest.extension:Prioritaet",
      "path" : "MedicationRequest.extension",
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
      "id" : "MedicationRequest.extension:Publikation",
      "path" : "MedicationRequest.extension",
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
      "id" : "MedicationRequest.status",
      "path" : "MedicationRequest.status",
      "short" : "active | on-hold | cancelled | completed | entered-in-error | stopped | draft | unknown",
      "definition" : "Status der Umsetzung der Therapieempfehlung",
      "comment" : "\n    draft: Nicht umgesetzt, \n    active: In Umsetzung, \n    completed: Abgeschlossen oder abgebrochen (Patient verstorben)"
    },
    {
      "id" : "MedicationRequest.intent",
      "path" : "MedicationRequest.intent",
      "short" : "proposal | option",
      "definition" : "Da nur Empfehlungen abgegeben werden, wird hier typischerweise 'proposal' stehen. Es sei denn,\n        diese Therapieempfehlung ist Teil einer RequestGroup (z.B. Kombinationstherapie). In dem Fall muss hier 'option' stehen."
    },
    {
      "id" : "MedicationRequest.category",
      "path" : "MedicationRequest.category",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "coding.system"
        }],
        "description" : "Slice für Therapiestrategie-Kategorisierung aus Modellvorhaben GenomSeq",
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.category:MVGenomSeqTherapieStrategie",
      "path" : "MedicationRequest.category",
      "sliceName" : "MVGenomSeqTherapieStrategie",
      "short" : "Modellvorhaben GenomSeq Therapiestrategie-Typ (Medikamentös)",
      "definition" : "Kategorisierung der medikamentösen Therapieempfehlung nach Modellvorhaben GenomSeq Strategietyp",
      "comment" : "Dieses Feld ist spezifisch für die Integration mit Modellvorhaben GenomSeq. Es ermöglicht die Kategorisierung gemäß RareDiseasesPlan.recommendedTherapies.strategy. Nur für medikamentöse Strategien: systemic-medication, targeted-medication, prevention-medication, gene-therapy, combination.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-therapieempfehlung-strategie-medikamentoes"
      }
    },
    {
      "id" : "MedicationRequest.category:MVGenomSeqTherapieStrategie.coding",
      "path" : "MedicationRequest.category.coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "MedicationRequest.category:MVGenomSeqTherapieStrategie.coding.system",
      "path" : "MedicationRequest.category.coding.system",
      "min" : 1,
      "patternUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-therapieempfehlung-strategie"
    },
    {
      "id" : "MedicationRequest.category:MVGenomSeqTherapieStrategie.coding.code",
      "path" : "MedicationRequest.category.coding.code",
      "min" : 1
    },
    {
      "id" : "MedicationRequest.category:MVGenomSeqTherapieTyp",
      "path" : "MedicationRequest.category",
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
      "id" : "MedicationRequest.category:MVGenomSeqTherapieTyp.coding",
      "path" : "MedicationRequest.category.coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "MedicationRequest.category:MVGenomSeqTherapieTyp.coding.system",
      "path" : "MedicationRequest.category.coding.system",
      "min" : 1,
      "patternUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-therapieempfehlung-typ"
    },
    {
      "id" : "MedicationRequest.category:MVGenomSeqTherapieTyp.coding.code",
      "path" : "MedicationRequest.category.coding.code",
      "min" : 1
    },
    {
      "id" : "MedicationRequest.reasonReference",
      "path" : "MedicationRequest.reasonReference",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "$this.resolve()"
        }],
        "description" : "Slice für stützende Angaben zur Systemischen Therapie auf Basis des referenzierten Ressourcentyps",
        "ordered" : false,
        "rules" : "open"
      }
    }]
  }
}

```
