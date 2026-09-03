# MII PR SE Hüftumfang - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR SE Hüftumfang**

## Ressourcenprofil: MII PR SE Hüftumfang 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hueftumfang | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2026-09-03 | *Maschinenlesbarer Name*:MII_PR_Seltene_Hueftumfang |

 
Profil zur Dokumentation des Hüftumfangs (maximale Gesäßprotuberanz) eines Patienten. Relevant für seltene Erkrankungen mit Auswirkungen auf die Körperproportionen, metabolische Erkrankungen oder Skelettdysplasien. 

Dieses Profil beschreibt die Messung des Hüftumfangs (maximale Gesäßprotuberanz) eines Patienten. Der Hüftumfang ist relevant für seltene Erkrankungen mit Auswirkungen auf die Körperproportionen, metabolische Erkrankungen oder Skelettdysplasien.

### Klinische Bedeutung

Die Messung des Hüftumfangs ist ein wichtiger Parameter bei:

* **Metabolischen Erkrankungen**: Beurteilung der Fettverteilung und metabolischer Risikofaktoren
* **Skelettdysplasien**: Dokumentation von Körperproportionen und Skelettveränderungen im Beckenbereich
* **Syndromen mit Körperbauauffälligkeiten**: Charakteristische Proportionen als diagnostisches Merkmal
* **Berechnung des Taille-Hüft-Verhältnisses (WHR)**: In Kombination mit dem Taillenumfang zur Risikoabschätzung

### Kodierung

Das Profil verwendet den LOINC-Code **56063-1** (Circumference.at maximal protrusion of gluteus muscles Pelvis) für die standardisierte Kodierung der Messung.

-------

### Verwendung mit Taille-Hüft-Verhältnis

Der Hüftumfang wird häufig in Kombination mit dem Taillenumfang zur Berechnung des **Taille-Hüft-Verhältnisses (Waist-to-Hip Ratio, WHR)** verwendet. Das WHR ist ein wichtiger Indikator für:

* Metabolisches Risiko
* Körperfettverteilung (androide vs. gynoide Verteilung)
* Prognose bei verschiedenen Erkrankungen

Siehe auch: Waist-to-Hip-Ratio

-------

**Suchparameter**

Folgende Suchparameter sind für das Modul Seltene Erkrankungen relevant, auch in Kombination:

1. Der Suchparameter `_id` MUSS unterstützt werden:Beispiele:`GET [base]/Observation?_id=1234`Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "_profile" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hueftumfang`Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "code" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?code=http://loinc.org|56063-1`Anwendungshinweise: Weitere Informationen zur Suche nach "code" finden sich in der FHIR-Basisspezifikation - Abschnitt "token".
1. Der Suchparameter "subject" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?subject=Patient/example`Anwendungshinweise: Weitere Informationen zur Suche nach "subject" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".
1. Der Suchparameter "date" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?date=2024-02-08`Anwendungshinweise: Weitere Informationen zur Suche nach "date" finden sich in der FHIR-Basisspezifikation - Abschnitt "date".
1. Der Suchparameter "value-quantity" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?value-quantity=98|http://unitsofmeasure.org|cm`Anwendungshinweise: Weitere Informationen zur Suche nach "value-quantity" finden sich in der FHIR-Basisspezifikation - Abschnitt "quantity".

Beispielinstanzen sind auf der Profilseite im Abschnitt „Examples" verlinkt.

**Usages:**

* Examples for this Profile: [Observation/mii-exa-seltene-hueftumfang](Observation-mii-exa-seltene-hueftumfang.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.seltene|current/StructureDefinition/StructureDefinition-mii-pr-seltene-hueftumfang.json)

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

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Observation](http://hl7.org/fhir/R4/observation.html) 

** Summary **

Mandatory: 1 element
 Must-Support: 6 elements
 Fixed: 5 elements

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [Observation](http://hl7.org/fhir/R4/observation.html) 

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Observation](http://hl7.org/fhir/R4/observation.html) 

** Summary **

Mandatory: 1 element
 Must-Support: 6 elements
 Fixed: 5 elements

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-seltene-hueftumfang.csv), [Excel](../StructureDefinition-mii-pr-seltene-hueftumfang.xlsx), [Schematron](../StructureDefinition-mii-pr-seltene-hueftumfang.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-seltene-hueftumfang",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hueftumfang",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_PR_Seltene_Hueftumfang",
  "title" : "MII PR SE Hüftumfang",
  "status" : "active",
  "date" : "2026-09-03T09:27:13+00:00",
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
  "description" : "Profil zur Dokumentation des Hüftumfangs (maximale Gesäßprotuberanz) eines Patienten. Relevant für seltene Erkrankungen mit Auswirkungen auf die Körperproportionen, metabolische Erkrankungen oder Skelettdysplasien.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "SE-LogicalModel",
    "uri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/LogicalModel/Seltene",
    "name" : "Mapping FHIR zu Seltene Erkrankungen Logical Model"
  },
  {
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
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "koerperlicheUntersuchung.hueftumfang",
        "comment" : "Hüftumfang"
      }]
    },
    {
      "id" : "Observation.status",
      "path" : "Observation.status",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "Status der Messung",
        "comment" : "Beobachtungsstatus"
      }]
    },
    {
      "id" : "Observation.category",
      "path" : "Observation.category",
      "mustSupport" : true
    },
    {
      "id" : "Observation.category.coding.system",
      "path" : "Observation.category.coding.system",
      "fixedUri" : "http://terminology.hl7.org/CodeSystem/observation-category"
    },
    {
      "id" : "Observation.category.coding.code",
      "path" : "Observation.category.coding.code",
      "fixedCode" : "vital-signs"
    },
    {
      "id" : "Observation.category.coding.display",
      "path" : "Observation.category.coding.display",
      "patternString" : "Vital Signs"
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "short" : "Hüftumfang",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "284472007",
          "display" : "Hip circumference"
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
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "persoenlicheInfosIndexpatient",
        "comment" : "Patient/Indexpatient"
      }]
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
      "type" : [{
        "code" : "dateTime"
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "koerperlicheUntersuchung.hueftumfang.datumHueftumfang",
        "comment" : "Datum der Messung"
      }]
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "type" : [{
        "code" : "Quantity"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x].value",
      "path" : "Observation.value[x].value",
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "koerperlicheUntersuchung.hueftumfang.hueftumfang",
        "comment" : "Hüftumfang in cm"
      }]
    },
    {
      "id" : "Observation.value[x].unit",
      "path" : "Observation.value[x].unit",
      "fixedString" : "cm"
    },
    {
      "id" : "Observation.value[x].system",
      "path" : "Observation.value[x].system",
      "fixedUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.value[x].code",
      "path" : "Observation.value[x].code",
      "fixedCode" : "cm"
    }]
  }
}

```
