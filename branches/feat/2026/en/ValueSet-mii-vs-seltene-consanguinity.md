# MII VS Seltene Erkrankungen Consanguinity - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2026.0.1

## ValueSet: MII VS Seltene Erkrankungen Consanguinity 

 
ValueSet zur Angabe der Blutsverwandtschaft der Eltern (Consanguinity): Ja / Nein / Unbekannt / Nicht erfasst (SNOMED CT), entsprechend dem Consanguinity Value Set aus RD-CDM v2.0.0. 

 **References** 

* [MII PR SE Consanguinity](StructureDefinition-mii-pr-seltene-consanguinity.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-seltene-consanguinity",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-consanguinity",
  "version" : "2026.0.1",
  "name" : "MII_VS_Seltene_Consanguinity",
  "title" : "MII VS Seltene Erkrankungen Consanguinity",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-27T16:21:59+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "ValueSet zur Angabe der Blutsverwandtschaft der Eltern (Consanguinity): Ja / Nein / Unbekannt / Nicht erfasst (SNOMED CT), entsprechend dem Consanguinity Value Set aus RD-CDM v2.0.0.",
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
      },
      {
        "code" : "1220561009",
        "display" : "Not recorded"
      }]
    }]
  }
}

```
