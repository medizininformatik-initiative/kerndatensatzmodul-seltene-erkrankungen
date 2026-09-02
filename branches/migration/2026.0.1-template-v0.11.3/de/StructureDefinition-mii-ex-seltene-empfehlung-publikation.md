# MII EX SE Empfehlung Publikation - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EX SE Empfehlung Publikation**

## Extension: MII EX SE Empfehlung Publikation 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-publikation | *Version*:2027.0.0-ballot |
| Active Stand: 2026-09-02 | *Maschinenlesbarer Name*:MII_EX_Seltene_Empfehlung_Publikation |

Verweis auf Publikation der (einzelnen) Empfehlung

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MII PR SE Studieneinschluss Anfrage](StructureDefinition-mii-pr-seltene-studieneinschluss-anfrage.md), [MII PR SE Therapieempfehlung Kombinationstherapie](StructureDefinition-mii-pr-seltene-therapieempfehlung-kombination.md), [MII PR SE Therapieempfehlung Nicht-Medikamentös](StructureDefinition-mii-pr-seltene-therapieempfehlung-nicht-medikamentoes.md) and [MII PR SE Therapieempfehlung Systemische Therapie](StructureDefinition-mii-pr-seltene-therapieempfehlung.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.seltene|current/StructureDefinition/StructureDefinition-mii-ex-seltene-empfehlung-publikation.json)

### Formale Ansichten des Extension-Inhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [AlleAll](#tabs-all) 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Simple Extension with the type string, Identifier: Verweis auf Publikation der (einzelnen) Empfehlung

 **Differential-AnsichtDifferential View** 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

 **Snapshot-Ansicht** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Simple Extension with the type string, Identifier: Verweis auf Publikation der (einzelnen) Empfehlung

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-ex-seltene-empfehlung-publikation.csv), [Excel](../StructureDefinition-mii-ex-seltene-empfehlung-publikation.xlsx), [Schematron](../StructureDefinition-mii-ex-seltene-empfehlung-publikation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-ex-seltene-empfehlung-publikation",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-publikation",
  "version" : "2027.0.0-ballot",
  "name" : "MII_EX_Seltene_Empfehlung_Publikation",
  "title" : "MII EX SE Empfehlung Publikation",
  "status" : "active",
  "date" : "2026-09-02T17:07:58+00:00",
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
  "description" : "Verweis auf Publikation der (einzelnen) Empfehlung",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "MedicationRequest"
  },
  {
    "type" : "element",
    "expression" : "RequestGroup"
  },
  {
    "type" : "element",
    "expression" : "ServiceRequest"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "MII EX SE Empfehlung Publikation",
      "definition" : "Verweis auf Publikation der (einzelnen) Empfehlung"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-publikation"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1,
      "type" : [{
        "code" : "string"
      },
      {
        "code" : "Identifier"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.value[x]:valueIdentifier",
      "path" : "Extension.value[x]",
      "sliceName" : "valueIdentifier",
      "short" : "Identifikator Publikation",
      "definition" : "Eindeutiger Identifikator zur Publikation in einer Publikationsdatenbank",
      "comment" : "Z.B. Document Object Identifier (DOI): https://doi.org/10.3414/ME18-03-0003 oder PubMed Identifier (PMID): http://www.ncbi.nlm.nih.gov/pubmed/30016818",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "Extension.value[x]:valueIdentifier.system",
      "path" : "Extension.value[x].system",
      "comment" : "Publikationsdatenbank, z.B. DOI: http://doi.org oder PMID: http://www.ncbi.nlm.nih.gov/pubmed",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Extension.value[x]:valueIdentifier.value",
      "path" : "Extension.value[x].value",
      "comment" : "Identifikator zur Publikation, z.B. DOI: 10.1000/182 oder PMID: 30016818",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Extension.value[x]:valueString",
      "path" : "Extension.value[x]",
      "sliceName" : "valueString",
      "short" : "Andere Publikationsquelle",
      "definition" : "Publikationsquelle die nicht über eine Publikationsdatenbank referenzierbar ist",
      "comment" : "Z.B. Whitepaper oder Leitlinie",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
