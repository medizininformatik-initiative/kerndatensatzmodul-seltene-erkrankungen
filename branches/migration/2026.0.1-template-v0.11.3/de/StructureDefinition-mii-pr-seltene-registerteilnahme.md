# MII PR SE Registerteilnahme - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR SE Registerteilnahme**

## Ressourcenprofil: MII PR SE Registerteilnahme 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-registerteilnahme | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2026-09-03 | *Maschinenlesbarer Name*:MII_PR_Seltene_Registerteilnahme |

 
Teilnahme einer Person an einem Register für seltene Erkrankungen, insbesondere an einem Register eines European Reference Network (ERN). Gedacht für die Dokumentation aus zweiter Hand im Versorgungskontext: festgehalten wird, dass die Person teilnimmt. Nah am Probanden-Profil des MII KDS Moduls Studie, aber bewusst nicht davon abgeleitet, weil dessen Pflichtangabe consent den Sekundärfall ausschließt. 

**Usages:**

* Examples for this Profile: [ResearchSubject/mii-exa-seltene-registerteilnahme](ResearchSubject-mii-exa-seltene-registerteilnahme.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.seltene|current/StructureDefinition/StructureDefinition-mii-pr-seltene-registerteilnahme.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [ResearchSubject](http://hl7.org/fhir/R4/researchsubject.html) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [ResearchSubject](http://hl7.org/fhir/R4/researchsubject.html) 

** Summary **

Must-Support: 8 elements

**Extensions**

This structure refers to these extensions:

* [https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-register](StructureDefinition-mii-ex-seltene-register.md)

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [ResearchSubject](http://hl7.org/fhir/R4/researchsubject.html) 

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [ResearchSubject](http://hl7.org/fhir/R4/researchsubject.html) 

** Summary **

Must-Support: 8 elements

**Extensions**

This structure refers to these extensions:

* [https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-register](StructureDefinition-mii-ex-seltene-register.md)

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-seltene-registerteilnahme.csv), [Excel](../StructureDefinition-mii-pr-seltene-registerteilnahme.xlsx), [Schematron](../StructureDefinition-mii-pr-seltene-registerteilnahme.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-seltene-registerteilnahme",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-registerteilnahme",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_PR_Seltene_Registerteilnahme",
  "title" : "MII PR SE Registerteilnahme",
  "status" : "active",
  "date" : "2026-09-03T07:33:22+00:00",
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
  "description" : "Teilnahme einer Person an einem Register für seltene Erkrankungen, insbesondere an einem Register eines European Reference Network (ERN). Gedacht für die Dokumentation aus zweiter Hand im Versorgungskontext: festgehalten wird, dass die Person teilnimmt. Nah am Probanden-Profil des MII KDS Moduls Studie, aber bewusst nicht davon abgeleitet, weil dessen Pflichtangabe consent den Sekundärfall ausschließt.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "BRIDG5.1",
    "uri" : "https://bridgmodel.nci.nih.gov",
    "name" : "BRIDG 5.1 Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ResearchSubject",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ResearchSubject",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ResearchSubject",
      "path" : "ResearchSubject"
    },
    {
      "id" : "ResearchSubject.extension",
      "path" : "ResearchSubject.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "ResearchSubject.extension:register",
      "path" : "ResearchSubject.extension",
      "sliceName" : "register",
      "short" : "Katalogeintrag des Registers als Library (optional)",
      "comment" : "Optionaler Verweis auf den Library-Katalogeintrag nach mii-pr-studie-register. Der verbindliche Registerbezug laeuft ueber study, weil R4 das so erzwingt.",
      "min" : 0,
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
      "comment" : "Das registereigene Pseudonym, nicht die Patienten-ID des Standorts. Bewusst optional: beim Dokumentieren aus zweiter Hand ist oft bekannt, DASS jemand teilnimmt, ohne dass das Pseudonym des Registers am Standort vorliegt. Wenn es vorliegt, ist es die wertvollste Angabe dieses Profils, weil erst sie die Verknuepfung erlaubt.",
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "ResearchSubject.status",
      "path" : "ResearchSubject.status",
      "short" : "Status der Teilnahme",
      "mustSupport" : true
    },
    {
      "id" : "ResearchSubject.period",
      "path" : "ResearchSubject.period",
      "short" : "Zeitraum der Registerteilnahme",
      "comment" : "Optional, aus demselben Grund wie identifier: das Einschlussdatum ist am dokumentierenden Standort nicht immer bekannt.",
      "mustSupport" : true
    },
    {
      "id" : "ResearchSubject.period.start",
      "path" : "ResearchSubject.period.start",
      "mustSupport" : true
    },
    {
      "id" : "ResearchSubject.study",
      "path" : "ResearchSubject.study",
      "short" : "Das Register, als ResearchStudy gefuehrt",
      "comment" : "In R4 ist study 1..1 Pflicht und auf ResearchStudy festgelegt. Ein Register muss daher als ResearchStudy vorliegen; der Library-Katalogeintrag des Moduls Studie kann hier nicht stehen. Siehe Kopfkommentar.",
      "mustSupport" : true
    },
    {
      "id" : "ResearchSubject.individual",
      "path" : "ResearchSubject.individual",
      "mustSupport" : true
    },
    {
      "id" : "ResearchSubject.consent",
      "path" : "ResearchSubject.consent",
      "short" : "Nur zu setzen, wenn die Einwilligung am dokumentierenden Standort tatsaechlich als Ressource vorliegt",
      "comment" : "Eine Registeraufnahme beruht selbstverstaendlich auf einer Einwilligung — aber die liegt beim Registerbetreiber. Ein Standort, der die Teilnahme nur nachhaelt, kann sie nicht referenzieren. Die Angabe leer zu lassen bedeutet daher NICHT, dass keine Einwilligung existiert, sondern nur, dass sie hier nicht als FHIR-Ressource greifbar ist. Genau deshalb leitet dieses Profil nicht vom Probanden-Profil des Moduls Studie ab, das consent mit 1..1 fordert.",
      "mustSupport" : true
    }]
  }
}

```
