# MII EX SE Register - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII EX SE Register**

## Extension: MII EX SE Register 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-register | *Version*:2027.0.0-ballot |
| Active as of 2026-09-01 | *Computable Name*:MII_EX_Seltene_Register |

Verweis auf das Register, an dem die Person teilnimmt, als Library nach dem Profil mii-pr-studie-register des MII KDS Moduls Studie. Notwendig, weil ResearchSubject.study nur auf ResearchStudy zeigen kann, das Modul Studie ein Register aber als Library modelliert.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MII PR SE Registerteilnahme](StructureDefinition-mii-pr-seltene-registerteilnahme.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.seltene|current/StructureDefinition/StructureDefinition-mii-ex-seltene-register.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-ex-seltene-register.csv), [Excel](../StructureDefinition-mii-ex-seltene-register.xlsx), [Schematron](../StructureDefinition-mii-ex-seltene-register.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-ex-seltene-register",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-register",
  "version" : "2027.0.0-ballot",
  "name" : "MII_EX_Seltene_Register",
  "title" : "MII EX SE Register",
  "status" : "active",
  "date" : "2026-09-01T19:54:19+00:00",
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
  "description" : "Verweis auf das Register, an dem die Person teilnimmt, als Library nach dem Profil mii-pr-studie-register des MII KDS Moduls Studie. Notwendig, weil ResearchSubject.study nur auf ResearchStudy zeigen kann, das Modul Studie ein Register aber als Library modelliert.",
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
    "expression" : "ResearchSubject"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "MII EX SE Register",
      "definition" : "Verweis auf das Register, an dem die Person teilnimmt, als Library nach dem Profil mii-pr-studie-register des MII KDS Moduls Studie. Notwendig, weil ResearchSubject.study nur auf ResearchStudy zeigen kann, das Modul Studie ein Register aber als Library modelliert."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-register"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Register (Library nach mii-pr-studie-register)",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Library"]
      }]
    }]
  }
}

```
