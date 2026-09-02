# MII PR SE Familienanamnese - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR SE Familienanamnese**

## Ressourcenprofil: MII PR SE Familienanamnese 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-familienanamnese | *Version*:2027.0.0-ballot |
| Active Stand: 2026-09-02 | *Maschinenlesbarer Name*:MII_PR_Seltene_Familienanamnese |

 

| | | |
| :--- | :--- | :--- |
| Dieses Profil beschreibt die Familienanamnese eines Patienten im Kontext von seltenen Erkrankungen, basierend auf dem MolGen Familienanamnese Profil. Für jedes Familienmitglied wird eine separate FamilyMemberHistory-Ressource erstellt. Das Profil unterstützt die Dokumentation von Todesfällen durch seltene Erkrankungen über condition.contributedToDeath. Für den Indexpatienten selbst kann relationship.coding[snomed] = 116154003 | Patient | verwendet werden, um den Tod des Patienten durch eine seltene Erkrankung einheitlich zu dokumentieren. |

 

Dieses Profil beschreibt die Familienanamnese im Kontext Seltener Erkrankungen. Es ermöglicht die strukturierte Erfassung von Erkrankungen bei Familienmitgliedern, insbesondere mit Fokus auf genetische und erbliche Komponenten seltener Erkrankungen.

**Wichtig:** Für **jedes Familienmitglied** wird eine **separate FamilyMemberHistory-Ressource** erstellt. Ein Familienmitglied kann mehrere Erkrankungen haben, die alle in derselben Ressource unter `condition` dokumentiert werden. Für die Dokumentation des **Todes des Indexpatienten** durch eine seltene Erkrankung kann ebenfalls eine FamilyMemberHistory-Ressource mit `relationship.coding[snomed] = 116154003 | Patient |` erstellt werden (siehe Abschnitt "Für den Indexpatienten" unten).

### Klinische Bedeutung

Die Familienanamnese ist bei seltenen Erkrankungen von besonderer Bedeutung, da viele dieser Erkrankungen eine genetische Komponente aufweisen. Die strukturierte Erfassung ermöglicht:

* Identifikation familiärer Häufungen
* Einschätzung des Vererbungsmusters
* Risikostratifizierung für Angehörige
* Planung genetischer Beratung und Testung

### Tod durch seltene Erkrankung

Die Dokumentation, ob eine Erkrankung zum Tod beigetragen hat, erfolgt über das Standard-FHIR-Element `FamilyMemberHistory.condition.contributedToDeath`. Dieses boolesche Element ist MustSupport und ermöglicht eine klare Zuordnung zwischen einer spezifischen Erkrankung und dem Todesfall.

#### Für Familienmitglieder

Dokumentieren Sie den Tod eines Familienmitglieds durch eine seltene Erkrankung wie folgt:

* `relationship`: Verwandtschaftsverhältnis (z.B. Vater, Mutter, Geschwister)
* `deceased[x]`: Todeszeitpunkt oder -alter
* `condition.code`: Die seltene Erkrankung mit ICD-10-GM, ORPHAcodes oder SNOMED CT
* `condition.contributedToDeath = true`: Kennzeichnung, dass diese Erkrankung zum Tod beitrug

#### Für den Indexpatienten

Das FamilyMemberHistory-Profil kann auch zur Dokumentation des **Todes des Indexpatienten** durch eine seltene Erkrankung verwendet werden:

* `relationship.coding[snomed]`: Setzen Sie auf `116154003 | Patient |` (verfügbar im MolGen ValueSet)
* `patient`: Referenz auf den Indexpatienten selbst
* `deceased[x]`: Todeszeitpunkt oder -alter des Patienten
* `condition.code`: Die seltene Erkrankung, die zum Tod führte
* `condition.contributedToDeath = true`

Diese Modellierung ermöglicht eine einheitliche Dokumentation von Todesfällen durch seltene Erkrankungen für Familienmitglieder und den Patienten selbst, ohne das Patient-Profil erweitern zu müssen.

#### Beispiel

```
{
  "resourceType": "FamilyMemberHistory",
  "status": "completed",
  "patient": {"reference": "Patient/example"},
  "relationship": {
    "coding": [{
      "system": "http://snomed.info/sct",
      "code": "72705000",
      "display": "Mother"
    }]
  },
  "deceasedAge": {"value": 52, "unit": "a", "system": "http://unitsofmeasure.org"},
  "condition": [{
    "code": {
      "coding": [{
        "system": "http://www.orpha.net",
        "code": "558",
        "display": "Marfan-Syndrom"
      }]
    },
    "contributedToDeath": true
  }]
}

```

### MONDO Kodierung (Sekundäre Harmonisierungsontologie)

> **Hinweis:** MONDO ist eine **sekundäre Harmonisierungsontologie** und kein primäres Diagnoseziel. Die primäre Kodierung der Familienerkrankung erfolgt über ICD-10-GM, Alpha-ID, SNOMED CT oder ORPHAcodes. MONDO-Codes können **optional ergänzend** in `condition.code.coding[mondo]` angegeben werden.

MONDO (Monarch Disease Ontology) harmonisiert verschiedene Klassifikationen und ermöglicht die Integration mit internationalen Standards wie [Phenopackets](https://phenopacket-schema.readthedocs.io/) und GA4GH. Weitere Informationen finden sich unter [Terminologien](code-systems.md).

-------

### Mapping Logisches Datenmodell zu FHIR

Das folgende Mapping zeigt die Elemente der Familienanamnese aus dem logischen Datenmodell für Seltene Erkrankungen:

### Zuordnung zu FHIR-Elementen

Die Elemente des logischen Datenmodells werden wie folgt auf das FamilyMemberHistory-Profil abgebildet:

| | | |
| :--- | :--- | :--- |
| Familienanamnese.Verwandtschaftsverhaeltnis | FamilyMemberHistory.relationship | Biologisches Verwandtschaftsverhältnis zum Indexpatienten |
| Familienanamnese.Geschlecht | FamilyMemberHistory.sex | Geschlecht des Familienmitglieds |
| Familienanamnese.GleicheSE | FamilyMemberHistory.condition.code | Wenn Code identisch mit Indexpatient-Diagnose |
| Familienanamnese.AndereSE | FamilyMemberHistory.condition.code | Wenn Code unterschiedlich zur Indexpatient-Diagnose |
| Familienanamnese.Penetranz | FamilyMemberHistory.condition.extension:penetranz | Extension für fehlende klinische Penetranz trotz genetischer Diagnose bei Familienmitgliedern |
| Familienanamnese.FamilienmitgliedVerstorben | FamilyMemberHistory.deceased[x] | Vitalstatus des Familienmitglieds |
| Familienanamnese.TodDurchSE | FamilyMemberHistory.condition.contributedToDeath | Gibt an, ob die Erkrankung zum Tod beigetragen hat |

-------

**Suchparameter**

Folgende Suchparameter sind für das Modul Seltene Erkrankungen relevant, auch in Kombination:

1. Der Suchparameter `_id` MUSS unterstützt werden:Beispiele:`GET [base]/FamilyMemberHistory?_id=1234`Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "_profile" MUSS unterstützt werden:Beispiele:`GET [base]/FamilyMemberHistory?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-familienanamnese`Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "patient" MUSS unterstützt werden:Beispiele:`GET [base]/FamilyMemberHistory?patient=Patient/example`Anwendungshinweise: Weitere Informationen zur Suche nach "patient" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".
1. Der Suchparameter "status" MUSS unterstützt werden:Beispiele:`GET [base]/FamilyMemberHistory?status=completed`Anwendungshinweise: Weitere Informationen zur Suche nach "status" finden sich in der FHIR-Basisspezifikation - Abschnitt "token".
1. Der Suchparameter "relationship" MUSS unterstützt werden:Beispiele:`GET [base]/FamilyMemberHistory?relationship=http://terminology.hl7.org/CodeSystem/v3-RoleCode|FTH`Anwendungshinweise: Weitere Informationen zur Suche nach "relationship" finden sich in der FHIR-Basisspezifikation - Abschnitt "token".
1. Der Suchparameter "code" MUSS unterstützt werden:Beispiele:`GET [base]/FamilyMemberHistory?code=http://www.orpha.net|558`Anwendungshinweise: Weitere Informationen zur Suche nach "code" finden sich in der FHIR-Basisspezifikation - Abschnitt "token".

Beispielinstanzen sind auf der Profilseite im Abschnitt „Examples" verlinkt.

**Usages:**

* Refer to this Profile: [MII PR SE Consanguinity](StructureDefinition-mii-pr-seltene-consanguinity.md)
* Examples for this Profile: [FamilyMemberHistory/family-history-001](FamilyMemberHistory-family-history-001.md) and [FamilyMemberHistory/mii-exa-seltene-familienanamnese](FamilyMemberHistory-mii-exa-seltene-familienanamnese.md)
* CapabilityStatements using this Profile: [MII CPS Seltene Erkrankungen CapabilityStatement](CapabilityStatement-mii-cps-seltene-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.seltene|current/StructureDefinition/StructureDefinition-mii-pr-seltene-familienanamnese.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_MolGen_Familienanamnese](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.molgen@2026.0.4&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/familienanamnese) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_MolGen_Familienanamnese](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.molgen@2026.0.4&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/familienanamnese) 

** Summary **

Mandatory: 2 elements(2 nested mandatory elements)
 Must-Support: 9 elements

**Extensions**

This structure refers to these extensions:

* [https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/von-seltene-betroffen](StructureDefinition-von-seltene-betroffen.md)
* [https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-penetrance](StructureDefinition-mii-ex-seltene-penetrance.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of FamilyMemberHistory.deceased[x]
* The element 1 is sliced based on the value of FamilyMemberHistory.condition.onset[x]

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [MII_PR_MolGen_Familienanamnese](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.molgen@2026.0.4&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/familienanamnese) 

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_MolGen_Familienanamnese](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.molgen@2026.0.4&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/familienanamnese) 

** Summary **

Mandatory: 2 elements(2 nested mandatory elements)
 Must-Support: 9 elements

**Extensions**

This structure refers to these extensions:

* [https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/von-seltene-betroffen](StructureDefinition-von-seltene-betroffen.md)
* [https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-penetrance](StructureDefinition-mii-ex-seltene-penetrance.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of FamilyMemberHistory.deceased[x]
* The element 1 is sliced based on the value of FamilyMemberHistory.condition.onset[x]

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-seltene-familienanamnese.csv), [Excel](../StructureDefinition-mii-pr-seltene-familienanamnese.xlsx), [Schematron](../StructureDefinition-mii-pr-seltene-familienanamnese.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-seltene-familienanamnese",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-familienanamnese",
  "version" : "2027.0.0-ballot",
  "name" : "MII_PR_Seltene_Familienanamnese",
  "title" : "MII PR SE Familienanamnese",
  "status" : "active",
  "date" : "2026-09-02T06:59:28+00:00",
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
  "description" : "Dieses Profil beschreibt die Familienanamnese eines Patienten im Kontext von seltenen Erkrankungen, basierend auf dem MolGen Familienanamnese Profil. Für jedes Familienmitglied wird eine separate FamilyMemberHistory-Ressource erstellt. Das Profil unterstützt die Dokumentation von Todesfällen durch seltene Erkrankungen über condition.contributedToDeath. Für den Indexpatienten selbst kann relationship.coding[snomed] = 116154003 | Patient | verwendet werden, um den Tod des Patienten durch eine seltene Erkrankung einheitlich zu dokumentieren.",
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
    "identity" : "MII-KDS",
    "name" : "MII KDS Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "FamilyMemberHistory",
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/familienanamnese",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "FamilyMemberHistory",
      "path" : "FamilyMemberHistory",
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "Familienanamnese",
        "comment" : "Familienanamnese"
      }]
    },
    {
      "id" : "FamilyMemberHistory.extension",
      "path" : "FamilyMemberHistory.extension",
      "min" : 1
    },
    {
      "id" : "FamilyMemberHistory.extension:vonSEBetroffen",
      "path" : "FamilyMemberHistory.extension",
      "sliceName" : "vonSEBetroffen",
      "short" : "Gibt an, ob das Familienmitglied von der gleichen seltenen Erkrankung betroffen ist",
      "definition" : "Extension zur Angabe, ob ein Familienmitglied von der gleichen seltenen Erkrankung betroffen ist wie der Patient",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/von-seltene-betroffen"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "Familienanamnese.GleicheSE",
        "comment" : "Gleiche SE"
      }]
    },
    {
      "id" : "FamilyMemberHistory.patient",
      "path" : "FamilyMemberHistory.patient",
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "Patient",
        "comment" : "Patient/Indexpatient"
      }]
    },
    {
      "id" : "FamilyMemberHistory.date",
      "path" : "FamilyMemberHistory.date",
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "Dokumentationsdatum",
        "comment" : "Datum der Familienanamnese"
      }]
    },
    {
      "id" : "FamilyMemberHistory.relationship",
      "path" : "FamilyMemberHistory.relationship",
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "Familienanamnese.Verwandtschaftsverhaeltnis",
        "comment" : "Verwandtschaftsverhältnis"
      }]
    },
    {
      "id" : "FamilyMemberHistory.sex",
      "path" : "FamilyMemberHistory.sex",
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "Familienanamnese.Geschlecht",
        "comment" : "Geschlecht"
      }]
    },
    {
      "id" : "FamilyMemberHistory.born[x]",
      "path" : "FamilyMemberHistory.born[x]",
      "mustSupport" : true
    },
    {
      "id" : "FamilyMemberHistory.age[x]",
      "path" : "FamilyMemberHistory.age[x]",
      "mustSupport" : true
    },
    {
      "id" : "FamilyMemberHistory.deceased[x]",
      "path" : "FamilyMemberHistory.deceased[x]",
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
      "id" : "FamilyMemberHistory.deceased[x]:deceasedBoolean",
      "path" : "FamilyMemberHistory.deceased[x]",
      "sliceName" : "deceasedBoolean",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "Familienanamnese.FamilienmitgliedVerstorben",
        "comment" : "Familienmitglied verstorben"
      }]
    },
    {
      "id" : "FamilyMemberHistory.deceased[x]:deceasedDate",
      "path" : "FamilyMemberHistory.deceased[x]",
      "sliceName" : "deceasedDate",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "Familienanamnese.FamilienmitgliedVerstorben",
        "comment" : "Sterbedatum"
      }]
    },
    {
      "id" : "FamilyMemberHistory.deceased[x]:deceasedAge",
      "path" : "FamilyMemberHistory.deceased[x]",
      "sliceName" : "deceasedAge",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Age"
      }],
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "Familienanamnese.FamilienmitgliedVerstorben",
        "comment" : "Alter bei Tod"
      }]
    },
    {
      "id" : "FamilyMemberHistory.reasonCode",
      "path" : "FamilyMemberHistory.reasonCode",
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "Familienanamnese.AndereSE",
        "comment" : "Grund/Erkrankung des Familienmitglieds"
      }]
    },
    {
      "id" : "FamilyMemberHistory.condition.extension:penetrance",
      "path" : "FamilyMemberHistory.condition.extension",
      "sliceName" : "penetrance",
      "short" : "Penetranz der genetischen Variante beim Familienmitglied",
      "definition" : "Angabe zur Penetranz der genetischen Variante bei der Erkrankung des Familienmitglieds",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-penetrance"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "Familienanamnese.Penetranz",
        "comment" : "Penetranz"
      }]
    },
    {
      "id" : "FamilyMemberHistory.condition.code.coding:icd10-gm",
      "path" : "FamilyMemberHistory.condition.code.coding",
      "sliceName" : "icd10-gm",
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "Familienanamnese.AndereSE",
        "comment" : "Andere SE (ICD-10-GM)"
      }]
    },
    {
      "id" : "FamilyMemberHistory.condition.code.coding:sct",
      "path" : "FamilyMemberHistory.condition.code.coding",
      "sliceName" : "sct",
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "Familienanamnese.AndereSE",
        "comment" : "Andere SE (SNOMED CT)"
      }]
    },
    {
      "id" : "FamilyMemberHistory.condition.code.coding:orphanet",
      "path" : "FamilyMemberHistory.condition.code.coding",
      "sliceName" : "orphanet",
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "Familienanamnese.AndereSE",
        "comment" : "Andere SE (Orpha-Code)"
      }]
    },
    {
      "id" : "FamilyMemberHistory.condition.code.coding:mondo",
      "path" : "FamilyMemberHistory.condition.code.coding",
      "sliceName" : "mondo",
      "short" : "MONDO Code für die Erkrankung",
      "definition" : "Monarch Disease Ontology (MONDO) Code für internationale Interoperabilität. MONDO harmonisiert SNOMED, ORDO, OMIM und ICD automatisch.",
      "min" : 0,
      "max" : "1",
      "patternCoding" : {
        "system" : "http://purl.obolibrary.org/obo/mondo.owl"
      },
      "mustSupport" : true
    },
    {
      "id" : "FamilyMemberHistory.condition.code.coding:mondo.system",
      "path" : "FamilyMemberHistory.condition.code.coding.system",
      "min" : 1
    },
    {
      "id" : "FamilyMemberHistory.condition.code.coding:mondo.code",
      "path" : "FamilyMemberHistory.condition.code.coding.code",
      "min" : 1
    },
    {
      "id" : "FamilyMemberHistory.condition.code.coding:mondo.display",
      "path" : "FamilyMemberHistory.condition.code.coding.display",
      "mustSupport" : true
    },
    {
      "id" : "FamilyMemberHistory.condition.contributedToDeath",
      "path" : "FamilyMemberHistory.condition.contributedToDeath",
      "short" : "Tod durch diese Erkrankung",
      "definition" : "Gibt an, ob diese Erkrankung zum Tod des Familienmitglieds beigetragen hat. Relevant für die Dokumentation von Todesfällen durch seltene Erkrankungen in der Familie.",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "Familienanamnese.TodDurchSE",
        "comment" : "Tod durch seltene Erkrankung"
      }]
    },
    {
      "id" : "FamilyMemberHistory.condition.onset[x]",
      "path" : "FamilyMemberHistory.condition.onset[x]",
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
      "id" : "FamilyMemberHistory.condition.onset[x]:onsetAge",
      "path" : "FamilyMemberHistory.condition.onset[x]",
      "sliceName" : "onsetAge",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Age"
      }],
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "Alter bei Erkrankungsbeginn",
        "comment" : "Alter bei Erkrankung"
      }]
    }]
  }
}

```
