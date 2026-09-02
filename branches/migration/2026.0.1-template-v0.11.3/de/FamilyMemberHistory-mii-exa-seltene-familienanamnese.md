# mii-exa-seltene-familienanamnese - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-seltene-familienanamnese**

## Beispiel FamilyMemberHistory: mii-exa-seltene-familienanamnese

-------

**German**

-------

Profile: [https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-familienanamnese|2026.0.1](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-familienanamnese|2026.0.1)

**VonSEBetroffen**: Yes

**status**: Completed

**patient**: [Max Mustermann (official) Male, DoB: 1990-01-01 ( http://test-krankenhaus.de/fhir/sid/patienten#12345)](Patient-mii-exa-seltene-patient.md)

**relationship**: Natural mother

**sex**: female

**born**: 1954

**deceased**: 2004

**reasonCode**: Osteogenesis imperfecta

> **condition****code**: Sonstige näher bezeichnete Affektionen der Netzhaut

> **condition****code**: Diabetes mellitus, Typ 2: Ohne Komplikationen

> **condition****code**: Akuter transmuraler Myokardinfarkt an sonstigen Lokalisationen**contributedToDeath**: true



## Resource Content

```json
{
  "resourceType" : "FamilyMemberHistory",
  "id" : "mii-exa-seltene-familienanamnese",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-familienanamnese|2026.0.1"]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/von-seltene-betroffen",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "373066001",
        "display" : "Yes"
      }]
    }
  }],
  "status" : "completed",
  "patient" : {
    "reference" : "Patient/mii-exa-seltene-patient"
  },
  "relationship" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "65656005",
      "display" : "Natural mother"
    }]
  },
  "sex" : {
    "coding" : [{
      "code" : "female"
    }]
  },
  "bornDate" : "1954",
  "deceasedDate" : "2004",
  "reasonCode" : [{
    "coding" : [{
      "system" : "http://www.orpha.net",
      "code" : "666"
    }]
  }],
  "condition" : [{
    "code" : {
      "coding" : [{
        "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
        "version" : "2024",
        "code" : "H35.8"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
        "version" : "2024",
        "code" : "E11.9"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
        "version" : "2024",
        "code" : "I21.2"
      }]
    },
    "contributedToDeath" : true
  }]
}

```
