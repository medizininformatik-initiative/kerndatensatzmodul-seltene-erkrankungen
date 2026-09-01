# MII PR SE Registerteilnahme - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR SE Registerteilnahme**

## Resource Profile: MII PR SE Registerteilnahme 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-registerteilnahme | *Version*:2027.0.0-ballot |
| Active as of 2026-09-01 | *Computable Name*:MII_PR_Seltene_Registerteilnahme |

 
Teilnahme einer Person an einem Register für seltene Erkrankungen, insbesondere an einem Register eines European Reference Network (ERN). Leitet vom Probanden-Profil des MII KDS Moduls Studie ab und ergänzt den Verweis auf das Register. 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.seltene|current/StructureDefinition/StructureDefinition-mii-pr-seltene-registerteilnahme.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-seltene-registerteilnahme.csv), [Excel](../StructureDefinition-mii-pr-seltene-registerteilnahme.xlsx), [Schematron](../StructureDefinition-mii-pr-seltene-registerteilnahme.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-seltene-registerteilnahme",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-registerteilnahme",
  "version" : "2027.0.0-ballot",
  "name" : "MII_PR_Seltene_Registerteilnahme",
  "title" : "MII PR SE Registerteilnahme",
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
  "description" : "Teilnahme einer Person an einem Register für seltene Erkrankungen, insbesondere an einem Register eines European Reference Network (ERN). Leitet vom Probanden-Profil des MII KDS Moduls Studie ab und ergänzt den Verweis auf das Register.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "resource",
  "abstract" : false,
  "type" : "ResearchSubject",
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-proband",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ResearchSubject",
      "path" : "ResearchSubject"
    },
    {
      "id" : "ResearchSubject.extension",
      "path" : "ResearchSubject.extension",
      "min" : 1
    },
    {
      "id" : "ResearchSubject.extension:register",
      "path" : "ResearchSubject.extension",
      "sliceName" : "register",
      "short" : "Register, an dem teilgenommen wird",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-register"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ResearchSubject.identifier",
      "path" : "ResearchSubject.identifier",
      "short" : "Pseudonym der Person im Register",
      "comment" : "Vom Modul Studie geerbt: der subjectIdentificationCode ist dort verpflichtend. In Registern ist das üblicherweise das registereigene Pseudonym, nicht die Patienten-ID des Standorts."
    },
    {
      "id" : "ResearchSubject.status",
      "path" : "ResearchSubject.status",
      "short" : "Status der Teilnahme"
    },
    {
      "id" : "ResearchSubject.period",
      "path" : "ResearchSubject.period",
      "short" : "Zeitraum der Registerteilnahme"
    },
    {
      "id" : "ResearchSubject.study",
      "path" : "ResearchSubject.study",
      "short" : "Nur zu setzen, wenn das Register zusätzlich als ResearchStudy geführt wird",
      "comment" : "Siehe Kopfkommentar: der eigentliche Registerbezug läuft über die Extension 'register', weil ResearchSubject.study nicht auf eine Library zeigen kann."
    },
    {
      "id" : "ResearchSubject.consent",
      "path" : "ResearchSubject.consent",
      "comment" : "Vom Probanden-Profil des Moduls Studie mit 1..1 geerbt. Für die Aufnahme in ein ERN-Register ist eine Einwilligung ohnehin die Regel; die Pflichtangabe ist hier also keine zusätzliche Hürde, sondern deckt sich mit der Praxis."
    }]
  }
}

```
