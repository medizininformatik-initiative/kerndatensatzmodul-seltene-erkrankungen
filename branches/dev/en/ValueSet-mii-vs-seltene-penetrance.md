# MII VS SE Penetrance - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2026.0.1

## ValueSet: MII VS SE Penetrance 

 
Value set for qualitative descriptions of genetic penetrance 

 **References** 

* [MII EX SE Penetrance](StructureDefinition-mii-ex-seltene-penetrance.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-seltene-penetrance",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-penetrance",
  "version" : "2026.0.1",
  "name" : "PenetranceValueSet",
  "title" : "MII VS SE Penetrance",
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
  "description" : "Value set for qualitative descriptions of genetic penetrance",
  "compose" : {
    "include" : [{
      "system" : "http://human-phenotype-ontology.org",
      "concept" : [{
        "code" : "HP:0003829",
        "display" : "Incomplete penetrance"
      },
      {
        "code" : "HP:0003828",
        "display" : "Variable penetrance"
      },
      {
        "code" : "HP:0025169",
        "display" : "Complete penetrance"
      },
      {
        "code" : "HP:0003831",
        "display" : "Age-dependent penetrance"
      }]
    }]
  }
}

```
