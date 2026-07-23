# MII PR SE Familienanamnese - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2026.0.1

## Resource Profile: MII PR SE Familienanamnese 

 

| | | |
| :--- | :--- | :--- |
| Dieses Profil beschreibt die Familienanamnese eines Patienten im Kontext von seltenen Erkrankungen, basierend auf dem MolGen Familienanamnese Profil. Für jedes Familienmitglied wird eine separate FamilyMemberHistory-Ressource erstellt. Das Profil unterstützt die Dokumentation von Todesfällen durch seltene Erkrankungen über condition.contributedToDeath. Für den Indexpatienten selbst kann relationship.coding[snomed] = 116154003 | Patient | verwendet werden, um den Tod des Patienten durch eine seltene Erkrankung einheitlich zu dokumentieren. |

 

**Usages:**

* Examples for this Profile: [FamilyMemberHistory/family-history-001](FamilyMemberHistory-family-history-001.md) and [FamilyMemberHistory/mii-exa-seltene-familienanamnese](FamilyMemberHistory-mii-exa-seltene-familienanamnese.md)
* CapabilityStatements using this Profile: [MII CPS Seltene Erkrankungen CapabilityStatement](CapabilityStatement-mii-cps-seltene-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/mii-ig-seltene-erkrankungen-v2026-de|current/StructureDefinition/StructureDefinition-mii-pr-seltene-familienanamnese.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-seltene-familienanamnese.csv), [Excel](../StructureDefinition-mii-pr-seltene-familienanamnese.xlsx), [Schematron](../StructureDefinition-mii-pr-seltene-familienanamnese.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-seltene-familienanamnese",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-familienanamnese",
  "version" : "2026.0.1",
  "name" : "MII_PR_Seltene_Familienanamnese",
  "title" : "MII PR SE Familienanamnese",
  "status" : "active",
  "date" : "2026-07-23T15:55:45+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Dieses Profil beschreibt die Familienanamnese eines Patienten im Kontext von seltenen Erkrankungen, basierend auf dem MolGen Familienanamnese Profil. Für jedes Familienmitglied wird eine separate FamilyMemberHistory-Ressource erstellt. Das Profil unterstützt die Dokumentation von Todesfällen durch seltene Erkrankungen über condition.contributedToDeath. Für den Indexpatienten selbst kann relationship.coding[snomed] = 116154003 | Patient | verwendet werden, um den Tod des Patienten durch eine seltene Erkrankung einheitlich zu dokumentieren.",
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
