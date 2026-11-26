# MII CM Seltene Therapieempfehlung zu MVGenomSeq-KDK-Codes - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CM Seltene Therapieempfehlung zu MVGenomSeq-KDK-Codes**

## ConceptMap: MII CM Seltene Therapieempfehlung zu MVGenomSeq-KDK-Codes 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ConceptMap/mii-cm-seltene-therapieempfehlung-to-mvgenomseq | *Version*:2027.0.0-ballot |
| Draft as of 2026-11-26 | *Computable Name*:MII_CM_Seltene_Therapieempfehlung_To_MVGenomSeq |

 
Übersetzt die Codes der MVGenomSeq-Kategorien an den Therapieempfehlungen (Therapietyp, Therapiestrategie) in die Wertelisten des KDK Seltene Erkrankungen, Schema v2.3 (RareDiseasesPlan.recommendedTherapies.type und .strategy). Das Modul führt die Codes in kebab-case, der KDK in camelCase; gene-therapy heißt im KDK genetic. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mii-cm-seltene-therapieempfehlung-to-mvgenomseq",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ConceptMap/mii-cm-seltene-therapieempfehlung-to-mvgenomseq",
  "version" : "2027.0.0-ballot",
  "name" : "MII_CM_Seltene_Therapieempfehlung_To_MVGenomSeq",
  "title" : "MII CM Seltene Therapieempfehlung zu MVGenomSeq-KDK-Codes",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-11-26",
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
  "description" : "Übersetzt die Codes der MVGenomSeq-Kategorien an den Therapieempfehlungen (Therapietyp, Therapiestrategie) in die Wertelisten des KDK Seltene Erkrankungen, Schema v2.3 (RareDiseasesPlan.recommendedTherapies.type und .strategy). Das Modul führt die Codes in kebab-case, der KDK in camelCase; gene-therapy heißt im KDK genetic.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "targetUri" : "https://github.com/BfArM-MVH/MVGenomseq_KDK/blob/v2.3/KDK/RareDiseasesPlan.json",
  "group" : [{
    "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-therapieempfehlung-typ",
    "target" : "https://github.com/BfArM-MVH/MVGenomseq_KDK/blob/v2.3/KDK/RareDiseasesPlan.json#recommendedTherapies.type",
    "targetVersion" : "v2.3",
    "element" : [{
      "code" : "causal",
      "display" : "Kausal",
      "target" : [{
        "code" : "causal",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "symptomatic",
      "display" : "Symptomatisch",
      "target" : [{
        "code" : "symptomatic",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-therapieempfehlung-strategie",
    "target" : "https://github.com/BfArM-MVH/MVGenomseq_KDK/blob/v2.3/KDK/RareDiseasesPlan.json#recommendedTherapies.strategy",
    "targetVersion" : "v2.3",
    "element" : [{
      "code" : "systemic-medication",
      "display" : "Systemische Medikation",
      "target" : [{
        "code" : "systemicMedication",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "targeted-medication",
      "display" : "Zielgerichtete Medikation",
      "target" : [{
        "code" : "targetedMedication",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "prevention-medication",
      "display" : "Präventive Medikation",
      "target" : [{
        "code" : "preventionMedication",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "gene-therapy",
      "display" : "Gentherapie",
      "target" : [{
        "code" : "genetic",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "prophylactic",
      "display" : "Prophylaxe",
      "target" : [{
        "code" : "prophylactic",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "early-detection",
      "display" : "Früherkennung",
      "target" : [{
        "code" : "earlyDetection",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "combination",
      "display" : "Kombinationstherapie",
      "target" : [{
        "code" : "combination",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "nutrition",
      "display" : "Ernährungstherapie",
      "target" : [{
        "code" : "nutrition",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "other",
      "display" : "Sonstige",
      "target" : [{
        "code" : "other",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
