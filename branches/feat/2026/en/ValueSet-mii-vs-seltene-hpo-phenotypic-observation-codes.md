# HPO Phenotypic Observation Codes - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2026.0.1

## ValueSet: HPO Phenotypic Observation Codes 

 
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
  "version" : "2026.0.1",
  "name" : "HPOPhenotypicObservationCodes",
  "title" : "HPO Phenotypic Observation Codes",
  "status" : "active",
  "date" : "2026-07-27T16:21:59+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Human Phenotype Ontology codes for phenotypic observations",
  "compose" : {
    "include" : [{
      "system" : "http://human-phenotype-ontology.org"
    }]
  }
}

```
