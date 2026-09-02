# HPO Severity - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **HPO Severity**

## ValueSet: HPO Severity 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-hpo-severity | *Version*:2027.0.0-ballot |
| Active Stand: 2026-09-02 | *Maschinenlesbarer Name*:HPOSeverity |
| **Copyright/Rechtliches**: This value set includes content from Human Phenotype Ontology (HPO). | |

 
HPO codes for describing severity of phenotypic abnormalities. Follows HL7 Phenomics IG component pattern. 

 **References** 

* [MII Profile SE HPO Assessment](StructureDefinition-mii-pr-seltene-hpo-assessment.md)
* [MII Profile SE Symptom Condition](StructureDefinition-mii-pr-seltene-symptom-condition.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-seltene-hpo-severity",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-hpo-severity",
  "version" : "2027.0.0-ballot",
  "name" : "HPOSeverity",
  "title" : "HPO Severity",
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
  "description" : "HPO codes for describing severity of phenotypic abnormalities. Follows HL7 Phenomics IG component pattern.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "copyright" : "This value set includes content from Human Phenotype Ontology (HPO).",
  "compose" : {
    "include" : [{
      "system" : "http://human-phenotype-ontology.org",
      "concept" : [{
        "code" : "HP:0012828",
        "display" : "Severe"
      },
      {
        "code" : "HP:0012825",
        "display" : "Mild"
      },
      {
        "code" : "HP:0012826",
        "display" : "Moderate"
      },
      {
        "code" : "HP:0012829",
        "display" : "Profound"
      },
      {
        "code" : "HP:0012827",
        "display" : "Borderline"
      }]
    }]
  }
}

```
