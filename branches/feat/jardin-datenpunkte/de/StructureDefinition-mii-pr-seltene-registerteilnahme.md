# MII PR SE Registerteilnahme - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR SE Registerteilnahme**

## Ressourcenprofil: MII PR SE Registerteilnahme 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-registerteilnahme | *Version*:2027.0.0-ballot |
| Active Stand: 2026-09-01 | *Maschinenlesbarer Name*:MII_PR_Seltene_Registerteilnahme |

 
Teilnahme einer Person an einem Register für seltene Erkrankungen, insbesondere an einem Register eines European Reference Network (ERN). Leitet vom Probanden-Profil des MII KDS Moduls Studie ab und ergänzt den Verweis auf das Register. 

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

Diese Struktur ist abgeleitet von [MII_PR_Studie_Proband](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.studie@2026.0.2&canonical=https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-proband) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Studie_Proband](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.studie@2026.0.2&canonical=https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-proband) 

** Summary **

Must-Support: 1 element

**Extensions**

This structure refers to these extensions:

* [https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-register](StructureDefinition-mii-ex-seltene-register.md)

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [MII_PR_Studie_Proband](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.studie@2026.0.2&canonical=https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-proband) 

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Studie_Proband](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.studie@2026.0.2&canonical=https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-proband) 

** Summary **

Must-Support: 1 element

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
  "version" : "2027.0.0-ballot",
  "name" : "MII_PR_Seltene_Registerteilnahme",
  "title" : "MII PR SE Registerteilnahme",
  "status" : "active",
  "date" : "2026-09-01T21:17:23+00:00",
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
      "short" : "Das Register, als ResearchStudy gefuehrt",
      "comment" : "In R4 ist study 1..1 Pflicht und auf ResearchStudy festgelegt. Ein Register muss daher als ResearchStudy vorliegen; der Library-Katalogeintrag des Moduls Studie kann hier nicht stehen. Siehe Kopfkommentar."
    },
    {
      "id" : "ResearchSubject.consent",
      "path" : "ResearchSubject.consent",
      "comment" : "Vom Probanden-Profil des Moduls Studie mit 1..1 geerbt. Für die Aufnahme in ein ERN-Register ist eine Einwilligung ohnehin die Regel; die Pflichtangabe ist hier also keine zusätzliche Hürde, sondern deckt sich mit der Praxis."
    }]
  }
}

```
