# MII VS SE Clinical Diagnosis Category - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2026.0.1

## ValueSet: MII VS SE Clinical Diagnosis Category 

 
Value set for categorizing clinical diagnoses of rare diseases 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-seltene-clinical-diagnosis-category",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-clinical-diagnosis-category",
  "version" : "2026.0.1",
  "name" : "ClinicalDiagnosisCategoryVS",
  "title" : "MII VS SE Clinical Diagnosis Category",
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
  "description" : "Value set for categorizing clinical diagnoses of rare diseases",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "439401001",
        "display" : "Diagnosis"
      },
      {
        "code" : "363358000",
        "display" : "Clinical finding"
      },
      {
        "code" : "64572001",
        "display" : "Disease"
      },
      {
        "code" : "609328004",
        "display" : "Allergic disposition"
      },
      {
        "code" : "85828009",
        "display" : "Autoimmune disease"
      },
      {
        "code" : "47367009",
        "display" : "Syndrome"
      },
      {
        "code" : "381406004",
        "display" : "Congenital disorder"
      },
      {
        "code" : "84757009",
        "display" : "Rare disease"
      }]
    }]
  }
}

```
