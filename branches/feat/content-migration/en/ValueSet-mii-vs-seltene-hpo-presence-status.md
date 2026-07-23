# HPO Phenotype Presence Status - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2026.0.1

## ValueSet: HPO Phenotype Presence Status 

 
LOINC codes for indicating presence or absence of phenotypic features. Follows HL7 Phenomics IG pattern. 

 **References** 

* [MII Profile SE HPO Assessment](StructureDefinition-mii-pr-seltene-hpo-assessment.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-seltene-hpo-presence-status",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-hpo-presence-status",
  "version" : "2026.0.1",
  "name" : "HPOPresenceStatus",
  "title" : "HPO Phenotype Presence Status",
  "status" : "active",
  "date" : "2026-07-23T11:05:37+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "LOINC codes for indicating presence or absence of phenotypic features. Follows HL7 Phenomics IG pattern.",
  "copyright" : "This value set includes content from LOINC which is copyrighted by Regenstrief Institute, Inc.",
  "compose" : {
    "include" : [{
      "system" : "http://loinc.org",
      "concept" : [{
        "code" : "LA9633-4",
        "display" : "Present"
      },
      {
        "code" : "LA9634-2",
        "display" : "Absent"
      }]
    }]
  }
}

```
