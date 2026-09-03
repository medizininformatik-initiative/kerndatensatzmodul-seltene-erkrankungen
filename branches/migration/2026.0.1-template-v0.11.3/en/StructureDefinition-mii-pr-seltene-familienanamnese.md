# MII PR SE Familienanamnese - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR SE Familienanamnese**

## Resource Profile: MII PR SE Familienanamnese 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-familienanamnese | *Version*:2027.0.0-ballot.rc1 |
| Active as of 2026-09-03 | *Computable Name*:MII_PR_Seltene_Familienanamnese |

 

| | | |
| :--- | :--- | :--- |
| Dieses Profil beschreibt die Familienanamnese eines Patienten im Kontext von seltenen Erkrankungen, basierend auf dem MolGen Familienanamnese Profil. Für jedes Familienmitglied wird eine separate FamilyMemberHistory-Ressource erstellt. Das Profil unterstützt die Dokumentation von Todesfällen durch seltene Erkrankungen über condition.contributedToDeath. Für den Indexpatienten selbst kann relationship.coding[snomed] = 116154003 | Patient | verwendet werden, um den Tod des Patienten durch eine seltene Erkrankung einheitlich zu dokumentieren. |

 

This profile describes the family history in the context of rare diseases. It enables the structured recording of diseases in family members, with a particular focus on genetic and hereditary components of rare diseases.

**Important:** A **separate FamilyMemberHistory resource** is created for **each family member**. A family member can have several diseases, all of which are documented in the same resource under `condition`. To document the **death of the index patient** due to a rare disease, a FamilyMemberHistory resource with `relationship.coding[snomed] = 116154003 | Patient |` can also be created (see section "For the index patient" below).

### Clinical relevance

The family history is of particular importance in rare diseases, as many of these diseases have a genetic component. Structured recording enables:

* Identification of familial clustering
* Assessment of the inheritance pattern
* Risk stratification for relatives
* Planning of genetic counseling and testing

### Death due to a rare disease

Whether a disease contributed to death is documented via the standard FHIR element `FamilyMemberHistory.condition.contributedToDeath`. This boolean element is MustSupport and enables a clear association between a specific disease and the death.

#### For family members

Document the death of a family member due to a rare disease as follows:

* `relationship`: family relationship (e.g. father, mother, sibling)
* `deceased[x]`: time or age of death
* `condition.code`: the rare disease with ICD-10-GM, ORPHAcodes or SNOMED CT
* `condition.contributedToDeath = true`: indication that this disease contributed to death

#### For the index patient

The FamilyMemberHistory profile can also be used to document the **death of the index patient** due to a rare disease:

* `relationship.coding[snomed]`: set to `116154003 | Patient |` (available in the MolGen ValueSet)
* `patient`: reference to the index patient
* `deceased[x]`: time or age of death of the patient
* `condition.code`: the rare disease that led to death
* `condition.contributedToDeath = true`

This modeling enables uniform documentation of deaths due to rare diseases for family members and the patient, without having to extend the Patient profile.

#### Example

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

### MONDO coding (secondary harmonization ontology)

> **Note:** MONDO is a **secondary harmonization ontology** and not a primary diagnostic target. The primary coding of the family disease uses ICD-10-GM, Alpha-ID, SNOMED CT or ORPHAcodes. MONDO codes can **optionally** be added in `condition.code.coding[mondo]`.

MONDO (Monarch Disease Ontology) harmonizes different classifications and enables integration with international standards such as [Phenopackets](https://phenopacket-schema.readthedocs.io/) and GA4GH. Further information can be found under [Terminologies](code-systems.md).

-------

### Mapping of the logical data model to FHIR

The following mapping shows the family history elements from the logical data model for rare diseases:

### Assignment to FHIR elements

The elements of the logical data model are mapped to the FamilyMemberHistory profile as follows:

| | | |
| :--- | :--- | :--- |
| Familienanamnese.Verwandtschaftsverhaeltnis | FamilyMemberHistory.relationship | Biological relationship to the index patient |
| Familienanamnese.Geschlecht | FamilyMemberHistory.sex | Sex of the family member |
| Familienanamnese.GleicheSE | FamilyMemberHistory.condition.code | If the code is identical to the index patient's diagnosis |
| Familienanamnese.AndereSE | FamilyMemberHistory.condition.code | If the code differs from the index patient's diagnosis |
| Familienanamnese.Penetranz | FamilyMemberHistory.condition.extension:penetranz | Extension for missing clinical penetrance despite a genetic diagnosis in family members |
| Familienanamnese.FamilienmitgliedVerstorben | FamilyMemberHistory.deceased[x] | Vital status of the family member |
| Familienanamnese.TodDurchSE | FamilyMemberHistory.condition.contributedToDeath | Indicates whether the disease contributed to death |

-------

**Search parameters**

The following search parameters are relevant for the Rare Diseases module, also in combination:

1. The search parameter `_id` MUST be supported:Examples:`GET [base]/FamilyMemberHistory?_id=1234`Usage notes: Further information on searching for "_id" can be found in the [FHIR base specification, section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. The search parameter "_profile" MUST be supported:Examples:`GET [base]/FamilyMemberHistory?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-familienanamnese`Usage notes: Further information on searching for "_profile" can be found in the [FHIR base specification, section "token"](http://hl7.org/fhir/R4/search.html#all).
1. The search parameter "patient" MUST be supported:Examples:`GET [base]/FamilyMemberHistory?patient=Patient/example`Usage notes: Further information on searching for "patient" can be found in the FHIR base specification, section "reference".
1. The search parameter "status" MUST be supported:Examples:`GET [base]/FamilyMemberHistory?status=completed`Usage notes: Further information on searching for "status" can be found in the FHIR base specification, section "token".
1. The search parameter "relationship" MUST be supported:Examples:`GET [base]/FamilyMemberHistory?relationship=http://terminology.hl7.org/CodeSystem/v3-RoleCode|FTH`Usage notes: Further information on searching for "relationship" can be found in the FHIR base specification, section "token".
1. The search parameter "code" MUST be supported:Examples:`GET [base]/FamilyMemberHistory?code=http://www.orpha.net|558`Usage notes: Further information on searching for "code" can be found in the FHIR base specification, section "token".

Example instances are linked in the "Examples" section of the profile page.

**Usages:**

* Refer to this Profile: [MII PR SE Consanguinity](StructureDefinition-mii-pr-seltene-consanguinity.md)
* Examples for this Profile: [FamilyMemberHistory/family-history-001](FamilyMemberHistory-family-history-001.md) and [FamilyMemberHistory/mii-exa-seltene-familienanamnese](FamilyMemberHistory-mii-exa-seltene-familienanamnese.md)
* CapabilityStatements using this Profile: [MII CPS Seltene Erkrankungen CapabilityStatement](CapabilityStatement-mii-cps-seltene-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.seltene|current/StructureDefinition/StructureDefinition-mii-pr-seltene-familienanamnese.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-seltene-familienanamnese.csv), [Excel](../StructureDefinition-mii-pr-seltene-familienanamnese.xlsx), [Schematron](../StructureDefinition-mii-pr-seltene-familienanamnese.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-seltene-familienanamnese",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-familienanamnese",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_PR_Seltene_Familienanamnese",
  "title" : "MII PR SE Familienanamnese",
  "status" : "active",
  "date" : "2026-09-03T07:17:59+00:00",
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
        "map" : "familienanamnese",
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
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-von-se-betroffen"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "familienanamnese.gleicheSE",
        "comment" : "Gleiche SE"
      }]
    },
    {
      "id" : "FamilyMemberHistory.patient",
      "path" : "FamilyMemberHistory.patient",
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "persoenlicheInfosIndexpatient",
        "comment" : "Patient/Indexpatient"
      }]
    },
    {
      "id" : "FamilyMemberHistory.date",
      "path" : "FamilyMemberHistory.date",
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "familienanamnese.dokumentationsdatum",
        "comment" : "Datum der Familienanamnese"
      }]
    },
    {
      "id" : "FamilyMemberHistory.relationship",
      "path" : "FamilyMemberHistory.relationship",
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "familienanamnese.verwandtschaftsverhaeltnis",
        "comment" : "Verwandtschaftsverhältnis"
      }]
    },
    {
      "id" : "FamilyMemberHistory.sex",
      "path" : "FamilyMemberHistory.sex",
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "familienanamnese.geschlecht",
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
        "map" : "familienanamnese.familienmitgliedVerstorben",
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
        "map" : "familienanamnese.familienmitgliedVerstorben",
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
        "map" : "familienanamnese.familienmitgliedVerstorben",
        "comment" : "Alter bei Tod"
      }]
    },
    {
      "id" : "FamilyMemberHistory.reasonCode",
      "path" : "FamilyMemberHistory.reasonCode",
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "familienanamnese.andereSE",
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
        "map" : "familienanamnese.penetranz",
        "comment" : "Penetranz"
      }]
    },
    {
      "id" : "FamilyMemberHistory.condition.code.coding:icd10-gm",
      "path" : "FamilyMemberHistory.condition.code.coding",
      "sliceName" : "icd10-gm",
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "familienanamnese.andereSE",
        "comment" : "Andere SE (ICD-10-GM)"
      }]
    },
    {
      "id" : "FamilyMemberHistory.condition.code.coding:sct",
      "path" : "FamilyMemberHistory.condition.code.coding",
      "sliceName" : "sct",
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "familienanamnese.andereSE",
        "comment" : "Andere SE (SNOMED CT)"
      }]
    },
    {
      "id" : "FamilyMemberHistory.condition.code.coding:orphanet",
      "path" : "FamilyMemberHistory.condition.code.coding",
      "sliceName" : "orphanet",
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "familienanamnese.andereSE",
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
        "map" : "familienanamnese.todDurchSE",
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
