# MII PR Seltene Erkrankungen Therapie Durchgeführt - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR Seltene Erkrankungen Therapie Durchgeführt**

## Ressourcenprofil: MII PR Seltene Erkrankungen Therapie Durchgeführt 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapie-durchgefuehrt | *Version*:2027.0.0-ballot |
| Active Stand: 2026-09-02 | *Maschinenlesbarer Name*:MII_PR_Seltene_TherapieDurchgefuehrt |

 
Minimales Profil zur Dokumentation durchgeführter Therapien bei Seltenen Erkrankungen gemäß NARSE-Klassifikation. Dieses Profil erfasst Therapien unabhängig vom Durchführungsort (ambulant, stationär, außerhalb des Krankenhauses). 

Dieses Profil beschreibt eine **durchgeführte Therapie** bei Patienten mit Seltenen Erkrankungen gemäß der NARSE-Klassifikation. Es handelt sich um ein minimales Profil, das unabhängig vom Durchführungsort (ambulant, stationär, außerhalb des Krankenhauses) verwendet werden kann.

### Kontext und Verwendung

Das Profil wurde speziell für die Dokumentation im Rahmen des **Nationalen Aktionsbündnisses für Menschen mit Seltenen Erkrankungen (NAMSE)** und der **NARSE-Register** entwickelt. Es erfasst den Therapietyp aus einer vordefinierten Liste, die die häufigsten Therapieformen bei seltenen Erkrankungen abdeckt.

### NARSE Therapietypen

Die folgenden Therapietypen sind im CodeSystem definiert:

| | | |
| :--- | :--- | :--- |
| `keine` | Keine | Keine Therapie |
| `pharmakotherapie` | Pharmakotherapie | Medikamentöse Therapie mit konventionellen Arzneimitteln |
| `gentherapie` | Gentherapie | Therapie mit genetisch veränderten Zellen oder direkter Genmodifikation |
| `mrna-therapie` | mRNA Therapie | Therapie mit mRNA-basierten Therapeutika |
| `antikoerpertherapie` | Antikörpertherapie | Therapie mit monoklonalen oder polyklonalen Antikörpern |
| `cart-zelltherapie` | CAR-T-Zelltherapie | Chimäre Antigenrezeptor-T-Zelltherapie |
| `stammzelltransplantation` | Stammzelltransplantation | Hämatopoetische Stammzelltransplantation (autolog oder allogen) |
| `stoffwechseltherapie` | Stoffwechseltherapie | Therapie zur Korrektur von Stoffwechselstörungen (z.B. Enzymersatztherapie) |
| `sonstiges` | Sonstiges | Andere Therapieform, nicht näher spezifiziert |
| `unbekannt` | Unbekannt | Therapietyp ist nicht bekannt |

### Implementierungshinweise

#### Minimaler Datensatz

Dieses Profil definiert bewusst nur die minimalen Anforderungen:

* **status**: Pflichtfeld (aus FHIR-Basis)
* **subject**: Referenz zum Patienten (Pflicht)
* **code**: NARSE-Therapietyp (Pflicht)
* **performed[x]**: Durchführungszeitpunkt (wenn verfügbar)

#### Verwendung außerhalb des Krankenhauses

Da viele Therapien bei seltenen Erkrankungen außerhalb des stationären Settings erfolgen (z.B. zu Hause, in spezialisierten Zentren), ist dieses Profil **nicht** an das MII-Prozedur-Modul gebunden. Eine MII-Prozedur kann optional einen zusätzlichen NARSE-Code enthalten.

#### Integration mit anderen Profilen

* Kann über `basedOn` auf Therapieempfehlungen verweisen
* Kann über `reasonReference` auf Diagnosen verweisen (optional)
* Kann in CarePlan.activity.detail aufgenommen werden

-------

Beispielinstanzen sind auf der Profilseite im Abschnitt „Examples" verlinkt.

**Suchparameter**

Folgende Suchparameter sind für das Modul Seltene Erkrankungen relevant, auch in Kombination:

1. Der Suchparameter `_id` MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?_id=1234`Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "_profile" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapie-durchgefuehrt`Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "code" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?code=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-narse-therapietyp|gentherapie`Anwendungshinweise: Weitere Informationen zur Suche nach "code" finden sich in der FHIR-Basisspezifikation - Abschnitt "token".
1. Der Suchparameter "subject" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?subject=Patient/example`Anwendungshinweise: Weitere Informationen zur Suche nach "subject" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".
1. Der Suchparameter "date" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?date=2024-02-08`Anwendungshinweise: Weitere Informationen zur Suche nach "date" finden sich in der FHIR-Basisspezifikation - Abschnitt "date".
1. Der Suchparameter "status" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?status=completed`Anwendungshinweise: Weitere Informationen zur Suche nach "status" finden sich in der FHIR-Basisspezifikation - Abschnitt "token".

-------

### Verwandte Profile

* [Therapieempfehlung-Medikamentös](StructureDefinition-mii-pr-seltene-therapieempfehlung.md) - Für Therapieempfehlungen
* [Therapieempfehlung-Nicht-Medikamentös](StructureDefinition-mii-pr-seltene-therapieempfehlung-nicht-medikamentoes.md) - Für nicht-medikamentöse Empfehlungen
* [Therapieplan](StructureDefinition-mii-pr-seltene-therapieplan.md) - Übergeordneter Therapieplan

**Usages:**

* Examples for this Profile: [Procedure/mii-exa-seltene-narse-gentherapie-sma](Procedure-mii-exa-seltene-narse-gentherapie-sma.md) and [Procedure/mii-exa-seltene-narse-stoffwechseltherapie-pompe](Procedure-mii-exa-seltene-narse-stoffwechseltherapie-pompe.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.seltene|current/StructureDefinition/StructureDefinition-mii-pr-seltene-therapie-durchgefuehrt.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Procedure](http://hl7.org/fhir/R4/procedure.html) 

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Procedure](http://hl7.org/fhir/R4/procedure.html) 

** Summary **

Mandatory: 4 elements
 Must-Support: 8 elements

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Procedure.performed[x]

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [Procedure](http://hl7.org/fhir/R4/procedure.html) 

#### Terminology Bindings (Differential)

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Procedure](http://hl7.org/fhir/R4/procedure.html) 

** Summary **

Mandatory: 4 elements
 Must-Support: 8 elements

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Procedure.performed[x]

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-seltene-therapie-durchgefuehrt.csv), [Excel](../StructureDefinition-mii-pr-seltene-therapie-durchgefuehrt.xlsx), [Schematron](../StructureDefinition-mii-pr-seltene-therapie-durchgefuehrt.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-seltene-therapie-durchgefuehrt",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapie-durchgefuehrt",
  "version" : "2027.0.0-ballot",
  "name" : "MII_PR_Seltene_TherapieDurchgefuehrt",
  "title" : "MII PR Seltene Erkrankungen Therapie Durchgeführt",
  "status" : "active",
  "date" : "2026-09-02T02:52:32+00:00",
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
  "description" : "Minimales Profil zur Dokumentation durchgeführter Therapien bei Seltenen Erkrankungen gemäß NARSE-Klassifikation. Dieses Profil erfasst Therapien unabhängig vom Durchführungsort (ambulant, stationär, außerhalb des Krankenhauses).",
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
  "type" : "Procedure",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Procedure",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Procedure",
      "path" : "Procedure"
    },
    {
      "id" : "Procedure.status",
      "path" : "Procedure.status",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.code",
      "path" : "Procedure.code",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-narse-therapietyp"
      }
    },
    {
      "id" : "Procedure.code.coding",
      "path" : "Procedure.code.coding",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.code.coding.system",
      "path" : "Procedure.code.coding.system",
      "min" : 1,
      "patternUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-narse-therapietyp"
    },
    {
      "id" : "Procedure.code.coding.code",
      "path" : "Procedure.code.coding.code",
      "min" : 1
    },
    {
      "id" : "Procedure.code.coding.display",
      "path" : "Procedure.code.coding.display",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.subject",
      "path" : "Procedure.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.performed[x]",
      "path" : "Procedure.performed[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "Procedure.performed[x]:performedDateTime",
      "path" : "Procedure.performed[x]",
      "sliceName" : "performedDateTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.performed[x]:performedPeriod",
      "path" : "Procedure.performed[x]",
      "sliceName" : "performedPeriod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }],
      "mustSupport" : true
    }]
  }
}

```
