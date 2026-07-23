# Von SE betroffen Value Set - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2026.0.1

## ValueSet: Von SE betroffen Value Set 

 
ValueSet zur Angabe ob ein Familienmitglied an der gleichen SE erkrankt ist. Verwendet SNOMED CT codes für internationale Interoperabilität. 

 **References** 

* [VonSEBetroffen](StructureDefinition-von-seltene-betroffen.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "von-seltene-betroffen-vs",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/von-seltene-betroffen-vs",
  "version" : "2026.0.1",
  "name" : "VonSEBetroffenVS",
  "title" : "Von SE betroffen Value Set",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-23T10:24:15+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "ValueSet zur Angabe ob ein Familienmitglied an der gleichen SE erkrankt ist. Verwendet SNOMED CT codes für internationale Interoperabilität.",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "373066001",
        "display" : "Yes"
      },
      {
        "code" : "373067005",
        "display" : "No"
      },
      {
        "code" : "261665006",
        "display" : "Unknown"
      }]
    },
    {
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
      "version" : "3.0.0",
      "concept" : [{
        "code" : "Y",
        "display" : "Yes"
      },
      {
        "code" : "N",
        "display" : "No"
      },
      {
        "code" : "ASKU",
        "display" : "asked but unknown"
      }]
    }]
  }
}

```
