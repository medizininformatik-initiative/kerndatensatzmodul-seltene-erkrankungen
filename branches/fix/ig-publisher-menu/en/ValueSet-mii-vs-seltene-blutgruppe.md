# MII VS SE Blutgruppe - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2026.0.1

## ValueSet: MII VS SE Blutgruppe 

 
ValueSet für Blutgruppen (AB0 und Rhesusfaktor) basierend auf LOINC Answer List für 882-1 

 **References** 

* [MII PR SE Blutgruppe](StructureDefinition-mii-pr-seltene-blutgruppe.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-seltene-blutgruppe",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-blutgruppe",
  "version" : "2026.0.1",
  "name" : "MII_VS_Seltene_Blutgruppe",
  "title" : "MII VS SE Blutgruppe",
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
  "description" : "ValueSet für Blutgruppen (AB0 und Rhesusfaktor) basierend auf LOINC Answer List für 882-1",
  "compose" : {
    "include" : [{
      "system" : "http://loinc.org",
      "concept" : [{
        "code" : "LA21321-7",
        "display" : "O Pos"
      },
      {
        "code" : "LA21322-5",
        "display" : "O Neg"
      },
      {
        "code" : "LA21327-4",
        "display" : "B Pos"
      },
      {
        "code" : "LA21328-2",
        "display" : "B Neg"
      },
      {
        "code" : "LA21323-3",
        "display" : "AB Pos"
      },
      {
        "code" : "LA21324-1",
        "display" : "AB Neg"
      },
      {
        "code" : "LA21325-8",
        "display" : "A Pos"
      },
      {
        "code" : "LA21326-6",
        "display" : "A Neg"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "278147001",
        "display" : "Blood group O Rh(D) positive (finding)"
      },
      {
        "code" : "278148006",
        "display" : "Blood group O Rh(D) negative (finding)"
      },
      {
        "code" : "278150003",
        "display" : "Blood group B Rh(D) positive (finding)"
      },
      {
        "code" : "278153001",
        "display" : "Blood group B Rh(D) negative (finding)"
      },
      {
        "code" : "278151004",
        "display" : "Blood group AB Rh(D) positive (finding)"
      },
      {
        "code" : "278154007",
        "display" : "Blood group AB Rh(D) negative (finding)"
      },
      {
        "code" : "278149003",
        "display" : "Blood group A Rh(D) positive (finding)"
      },
      {
        "code" : "278152006",
        "display" : "Blood group A Rh(D) negative (finding)"
      }]
    }]
  }
}

```
