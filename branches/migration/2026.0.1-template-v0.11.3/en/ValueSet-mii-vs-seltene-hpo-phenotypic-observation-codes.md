# HPO Phenotypic Observation Codes - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HPO Phenotypic Observation Codes**

## ValueSet: HPO Phenotypic Observation Codes 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-hpo-phenotypic-observation-codes | *Version*:2027.0.0-ballot |
| Active as of 2026-09-02 | *Computable Name*:HPOPhenotypicObservationCodes |

 
Human Phenotype Ontology codes for phenotypic observations 

 **References** 

* [MII PR SE Clinical Diagnosis](StructureDefinition-mii-pr-seltene-clinical-diagnosis.md)
* [MII Profile SE Clinical Impression](StructureDefinition-mii-pr-seltene-clinical-impression.md)
* [MII Profile SE HPO Assessment](StructureDefinition-mii-pr-seltene-hpo-assessment.md)
* [MII Profile SE Symptom Condition](StructureDefinition-mii-pr-seltene-symptom-condition.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-seltene-hpo-phenotypic-observation-codes",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-hpo-phenotypic-observation-codes",
  "version" : "2027.0.0-ballot",
  "name" : "HPOPhenotypicObservationCodes",
  "title" : "HPO Phenotypic Observation Codes",
  "status" : "active",
  "date" : "2026-09-02T06:41:45+00:00",
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
  "description" : "Human Phenotype Ontology codes for phenotypic observations",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://human-phenotype-ontology.org"
    }]
  }
}

```
