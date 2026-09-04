# MII PR SE Kopfumfang - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR SE Kopfumfang**

## Resource Profile: MII PR SE Kopfumfang 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-kopfumfang | *Version*:2027.0.0-ballot.rc1 |
| Active as of 2026-09-04 | *Computable Name*:MII_PR_Seltene_Kopfumfang |

 
Profil zur Dokumentation des Kopfumfangs (okzipital-frontal) eines Patienten. Besonders relevant bei seltenen Erkrankungen mit Auswirkungen auf das Schädelwachstum, z.B. Skelettdysplasien, neurologische Erkrankungen. Erbt vom MII ICU Kopfumfang-Profil. 

This profile describes the measurement of the head circumference (occipital-frontal) of a patient. The head circumference is particularly relevant for rare diseases affecting skull growth, e.g. skeletal dysplasias, neurological diseases or syndromes with macro-/microcephaly.

### Clinical relevance

Measuring the head circumference is an important parameter for:

* **Skeletal dysplasias**: diseases such as achondroplasia often show characteristic head proportions
* **Neurological diseases**: macrocephaly or microcephaly as a leading symptom
* **Syndromes**: many rare syndromes have characteristic head measurements as a diagnostic criterion
* **Developmental disorders**: monitoring of skull growth over time

### Coding

The profile uses the LOINC code **9843-4** (Head Occipital-frontal circumference) for the standardized coding of the measurement.

-------

**Search parameters** are declared module-wide in the [CapabilityStatement](CapabilityStatement-mii-cps-seltene-capabilitystatement.md) — machine-readable and complete there, rather than repeated by hand per profile.

Example instances are linked in the "Examples" section of the profile page.

**Usages:**

* Examples for this Profile: [Observation/mii-exa-seltene-kopfumfang](Observation-mii-exa-seltene-kopfumfang.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.seltene|current/StructureDefinition/StructureDefinition-mii-pr-seltene-kopfumfang.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-seltene-kopfumfang.csv), [Excel](../StructureDefinition-mii-pr-seltene-kopfumfang.xlsx), [Schematron](../StructureDefinition-mii-pr-seltene-kopfumfang.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-seltene-kopfumfang",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-kopfumfang",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_PR_Seltene_Kopfumfang",
  "title" : "MII PR SE Kopfumfang",
  "status" : "active",
  "date" : "2026-09-04T08:01:15+00:00",
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
  "description" : "Profil zur Dokumentation des Kopfumfangs (okzipital-frontal) eines Patienten. Besonders relevant bei seltenen Erkrankungen mit Auswirkungen auf das Schädelwachstum, z.B. Skelettdysplasien, neurologische Erkrankungen. Erbt vom MII ICU Kopfumfang-Profil.",
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-muv-kopfumfang",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation",
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "koerperlicheUntersuchung.kopfumfang",
        "comment" : "Kopfumfang"
      }]
    },
    {
      "id" : "Observation.status",
      "path" : "Observation.status",
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "Status der Messung",
        "comment" : "Beobachtungsstatus"
      }]
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "short" : "Kopfumfang okzipital-frontal"
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "persoenlicheInfosIndexpatient",
        "comment" : "Patient/Indexpatient"
      }]
    },
    {
      "id" : "Observation.effective[x]:effectiveDateTime",
      "path" : "Observation.effective[x]",
      "sliceName" : "effectiveDateTime",
      "type" : [{
        "code" : "dateTime"
      }],
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "koerperlicheUntersuchung.kopfumfang.datumKopfumfang",
        "comment" : "Datum der Messung"
      }]
    },
    {
      "id" : "Observation.value[x]:valueQuantity",
      "path" : "Observation.value[x]",
      "sliceName" : "valueQuantity",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.value[x]:valueQuantity.value",
      "path" : "Observation.value[x].value",
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "koerperlicheUntersuchung.kopfumfang.kopfumfang",
        "comment" : "Kopfumfang in cm"
      }]
    }]
  }
}

```
