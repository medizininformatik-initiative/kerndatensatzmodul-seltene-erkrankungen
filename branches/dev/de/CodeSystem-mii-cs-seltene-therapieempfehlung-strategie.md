# MII CS SE Therapieempfehlung Strategie - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CS SE Therapieempfehlung Strategie**

## CodeSystem: MII CS SE Therapieempfehlung Strategie 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-therapieempfehlung-strategie | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2026-09-11 | *Maschinenlesbarer Name*:MII_CS_Seltene_TherapieempfehlungStrategie |

 
Strategietypen für Therapieempfehlungen bei seltenen Erkrankungen, abgeleitet aus MV GenomSeq 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MII VS SE Therapieempfehlung Strategie](ValueSet-mii-vs-seltene-therapieempfehlung-strategie.md)
* [MII VS SE Therapieempfehlung Strategie - Medikamentös](ValueSet-mii-vs-seltene-therapieempfehlung-strategie-medikamentoes.md)
* [MII VS SE Therapieempfehlung Strategie - Nicht-Medikamentös](ValueSet-mii-vs-seltene-therapieempfehlung-strategie-nicht-medikamentoes.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-seltene-therapieempfehlung-strategie",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablecodesystem",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablecodesystem"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "shareable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "publishable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionPolicy",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/artifact-version-policy-codes",
        "code" : "package",
        "display" : "Package"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/resource-approvalDate",
    "valueDate" : "2026-09-02"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-topic",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl",
        "code" : "C4873"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-author",
    "valueContactDetail" : {
      "telecom" : [{
        "system" : "email",
        "value" : "thomas.debertshaeuser@charite.de"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-editor",
    "valueContactDetail" : {
      "name" : "Taskforce Core Data Set"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-reviewer",
    "valueContactDetail" : {
      "name" : "Interoperability Working Group",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/interoperability-working-group"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-reviewer",
    "valueContactDetail" : {
      "name" : "National Steering Committee",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/national-steering-committee"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-endorser",
    "valueContactDetail" : {
      "name" : "Interoperability Working Group",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/interoperability-working-group"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-endorser",
    "valueContactDetail" : {
      "name" : "National Steering Committee",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/national-steering-committee"
      }]
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-therapieempfehlung-strategie",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_CS_Seltene_TherapieempfehlungStrategie",
  "title" : "MII CS SE Therapieempfehlung Strategie",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-11T14:10:38+00:00",
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
  "description" : "Strategietypen für Therapieempfehlungen bei seltenen Erkrankungen, abgeleitet aus MV GenomSeq",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 9,
  "concept" : [{
    "code" : "systemic-medication",
    "display" : "Systemische Medikation",
    "definition" : "Systemische medikamentöse Therapie, die den gesamten Körper betrifft"
  },
  {
    "code" : "targeted-medication",
    "display" : "Zielgerichtete Medikation",
    "definition" : "Zielgerichtete medikamentöse Therapie basierend auf molekularen Targets"
  },
  {
    "code" : "prevention-medication",
    "display" : "Präventive Medikation",
    "definition" : "Medikamentöse Therapie zur Prävention von Krankheitsmanifestationen"
  },
  {
    "code" : "gene-therapy",
    "display" : "Gentherapie",
    "definition" : "Therapeutische Intervention durch Genmodifikation oder Genersatz"
  },
  {
    "code" : "prophylactic",
    "display" : "Prophylaxe",
    "definition" : "Vorbeugende Maßnahmen zur Verhinderung von Komplikationen"
  },
  {
    "code" : "early-detection",
    "display" : "Früherkennung",
    "definition" : "Maßnahmen zur frühzeitigen Erkennung von Krankheitszeichen"
  },
  {
    "code" : "combination",
    "display" : "Kombinationstherapie",
    "definition" : "Kombinierte Anwendung mehrerer Therapieansätze"
  },
  {
    "code" : "nutrition",
    "display" : "Ernährungstherapie",
    "definition" : "Therapeutische Intervention durch spezielle Ernährungsmaßnahmen"
  },
  {
    "code" : "other",
    "display" : "Sonstige",
    "definition" : "Andere Therapiestrategien, die nicht in die definierten Kategorien fallen"
  }]
}

```
