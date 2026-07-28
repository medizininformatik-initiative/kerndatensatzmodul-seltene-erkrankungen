# MII PR SE Kopfumfang - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2026.0.1

## Resource Profile: MII PR SE Kopfumfang 

 
Profil zur Dokumentation des Kopfumfangs (okzipital-frontal) eines Patienten. Besonders relevant bei seltenen Erkrankungen mit Auswirkungen auf das Schädelwachstum, z.B. Skelettdysplasien, neurologische Erkrankungen. Erbt vom MII ICU Kopfumfang-Profil. 

**Usages:**

* Examples for this Profile: [Observation/mii-exa-seltene-kopfumfang](Observation-mii-exa-seltene-kopfumfang.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/mii-ig-seltene-erkrankungen-v2026-de|current/StructureDefinition/StructureDefinition-mii-pr-seltene-kopfumfang.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-seltene-kopfumfang.csv), [Excel](../StructureDefinition-mii-pr-seltene-kopfumfang.xlsx), [Schematron](../StructureDefinition-mii-pr-seltene-kopfumfang.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-seltene-kopfumfang",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-kopfumfang",
  "version" : "2026.0.1",
  "name" : "MII_PR_Seltene_Kopfumfang",
  "title" : "MII PR SE Kopfumfang",
  "status" : "active",
  "date" : "2026-07-28T16:41:18+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Profil zur Dokumentation des Kopfumfangs (okzipital-frontal) eines Patienten. Besonders relevant bei seltenen Erkrankungen mit Auswirkungen auf das Schädelwachstum, z.B. Skelettdysplasien, neurologische Erkrankungen. Erbt vom MII ICU Kopfumfang-Profil.",
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
        "map" : "Messbefunde.Kopfumfang",
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
        "map" : "Patient",
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
        "map" : "Messbefunde.Kopfumfang.Datum",
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
        "map" : "Messbefunde.Kopfumfang",
        "comment" : "Kopfumfang in cm"
      }]
    }]
  }
}

```
