# HPO Severity - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2026.0.1

## ValueSet: HPO Severity 

 
HPO codes for describing severity of phenotypic abnormalities. Follows HL7 Phenomics IG component pattern. 

 **References** 

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
  "id" : "mii-vs-seltene-hpo-severity",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-hpo-severity",
  "version" : "2026.0.1",
  "name" : "HPOSeverity",
  "title" : "HPO Severity",
  "status" : "active",
  "date" : "2026-07-23T11:20:28+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "HPO codes for describing severity of phenotypic abnormalities. Follows HL7 Phenomics IG component pattern.",
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
