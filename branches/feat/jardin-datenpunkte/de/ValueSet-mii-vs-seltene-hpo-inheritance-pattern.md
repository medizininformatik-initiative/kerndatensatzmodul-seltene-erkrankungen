# MII VS SE HPO Inheritance Pattern - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS SE HPO Inheritance Pattern**

## ValueSet: MII VS SE HPO Inheritance Pattern 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-hpo-inheritance-pattern | *Version*:2027.0.0-ballot |
| Active Stand: 2026-09-01 | *Maschinenlesbarer Name*:HPOInheritancePatternValueSet |

 
Value set containing HPO terms for modes of inheritance 

 **References** 

* [MII EX SE Inheritance Pattern](StructureDefinition-mii-ex-seltene-inheritance-pattern.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-seltene-hpo-inheritance-pattern",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-hpo-inheritance-pattern",
  "version" : "2027.0.0-ballot",
  "name" : "HPOInheritancePatternValueSet",
  "title" : "MII VS SE HPO Inheritance Pattern",
  "status" : "active",
  "date" : "2026-09-01T21:46:35+00:00",
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
  "description" : "Value set containing HPO terms for modes of inheritance",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://human-phenotype-ontology.org",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "HP:0000005"
      }]
    },
    {
      "system" : "http://human-phenotype-ontology.org",
      "concept" : [{
        "code" : "HP:0000006",
        "display" : "Autosomal dominant inheritance"
      },
      {
        "code" : "HP:0000007",
        "display" : "Autosomal recessive inheritance"
      },
      {
        "code" : "HP:0001417",
        "display" : "X-linked inheritance"
      },
      {
        "code" : "HP:0001419",
        "display" : "X-linked recessive inheritance"
      },
      {
        "code" : "HP:0001423",
        "display" : "X-linked dominant inheritance"
      },
      {
        "code" : "HP:0001427",
        "display" : "Mitochondrial inheritance"
      },
      {
        "code" : "HP:0001428",
        "display" : "Somatic mutation"
      },
      {
        "code" : "HP:0003745",
        "display" : "Sporadic"
      },
      {
        "code" : "HP:0010983",
        "display" : "Oligogenic"
      },
      {
        "code" : "HP:0010982",
        "display" : "Polygenic"
      },
      {
        "code" : "HP:0001426",
        "display" : "Multifactorial inheritance"
      },
      {
        "code" : "HP:0012275",
        "display" : "Autosomal dominant inheritance with maternal imprinting"
      },
      {
        "code" : "HP:0012274",
        "display" : "Autosomal dominant inheritance with paternal imprinting"
      }]
    }]
  }
}

```
