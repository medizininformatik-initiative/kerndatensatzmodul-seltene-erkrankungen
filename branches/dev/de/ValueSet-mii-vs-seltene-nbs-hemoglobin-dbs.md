# MII VS Seltene Erkrankungen NBS Hämoglobin-Fraktionen (Trockenblut) - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Seltene Erkrankungen NBS Hämoglobin-Fraktionen (Trockenblut)**

## ValueSet: MII VS Seltene Erkrankungen NBS Hämoglobin-Fraktionen (Trockenblut) 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-nbs-hemoglobin-dbs | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2026-09-04 | *Maschinenlesbarer Name*:MII_VS_Seltene_NBS_Hemoglobin_DBS |

 
Hämoglobin-Fraktionen in Trockenblut, bezogen auf das Gesamthämoglobin — die Messgrößen des Screenings auf Sichelzellkrankheit und weitere Hämoglobinopathien. Abgeleitet aus der LOINC-SNOMED-Ontologie und deshalb deutlich unvollständig gegenüber LOINC (rund ein Drittel der DBS-Hämoglobin-Codes); für die lückenlose Menge siehe mii-vs-seltene-nbs-dbs-all. 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-seltene-nbs-hemoglobin-dbs",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-nbs-hemoglobin-dbs",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_VS_Seltene_NBS_Hemoglobin_DBS",
  "title" : "MII VS Seltene Erkrankungen NBS Hämoglobin-Fraktionen (Trockenblut)",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-04T06:37:14+00:00",
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
  "description" : "Hämoglobin-Fraktionen in Trockenblut, bezogen auf das Gesamthämoglobin — die Messgrößen des Screenings auf Sichelzellkrankheit und weitere Hämoglobinopathien. Abgeleitet aus der LOINC-SNOMED-Ontologie und deshalb deutlich unvollständig gegenüber LOINC (rund ein Drittel der DBS-Hämoglobin-Codes); für die lückenlose Menge siehe mii-vs-seltene-nbs-dbs-all.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://loinc.org",
      "concept" : [{
        "code" : "54069-0",
        "display" : "Hemoglobin Barts/Hemoglobin.total in DBS"
      },
      {
        "code" : "96595-4",
        "display" : "Hemoglobin A1c/Hemoglobin.total in DBS"
      },
      {
        "code" : "54072-4",
        "display" : "Hemoglobin A/Hemoglobin.total in DBS"
      },
      {
        "code" : "54073-2",
        "display" : "Hemoglobin C/Hemoglobin.total in DBS"
      },
      {
        "code" : "54070-8",
        "display" : "Hemoglobin D/Hemoglobin.total in DBS"
      },
      {
        "code" : "54071-6",
        "display" : "Hemoglobin E/Hemoglobin.total in DBS"
      },
      {
        "code" : "54074-0",
        "display" : "Hemoglobin F/Hemoglobin.total in DBS"
      },
      {
        "code" : "54068-2",
        "display" : "Hemoglobin O - Arab/Hemoglobin.total in DBS"
      },
      {
        "code" : "56476-5",
        "display" : "Hemoglobin S/Hemoglobin.total in DBS"
      }]
    }]
  }
}

```
