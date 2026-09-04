# MII VS Seltene Erkrankungen NBS Acylcarnitine (Trockenblut) - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Seltene Erkrankungen NBS Acylcarnitine (Trockenblut)**

## ValueSet: MII VS Seltene Erkrankungen NBS Acylcarnitine (Trockenblut) 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-nbs-acylcarnitine-dbs | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2026-09-04 | *Maschinenlesbarer Name*:MII_VS_Seltene_NBS_Acylcarnitine_DBS |

 
Acylcarnitin- und Carnitin-Analyte in Trockenblut (dried blood spot) — die Messgrößen des MS/MS-Acylcarnitinprofils im Neugeborenenscreening (Fettsäureoxidationsstörungen, Organoazidopathien, Carnitinzyklusdefekte). Abgeleitet aus der LOINC-SNOMED-Ontologie und deshalb NICHT vollständig gegenüber LOINC: enthalten ist der nach SNOMED gemappte Teil. Für die lückenlose Menge siehe mii-vs-seltene-nbs-dbs-all. 

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
  "id" : "mii-vs-seltene-nbs-acylcarnitine-dbs",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-nbs-acylcarnitine-dbs",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_VS_Seltene_NBS_Acylcarnitine_DBS",
  "title" : "MII VS Seltene Erkrankungen NBS Acylcarnitine (Trockenblut)",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-04T05:29:06+00:00",
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
  "description" : "Acylcarnitin- und Carnitin-Analyte in Trockenblut (dried blood spot) — die Messgrößen des MS/MS-Acylcarnitinprofils im Neugeborenenscreening (Fettsäureoxidationsstörungen, Organoazidopathien, Carnitinzyklusdefekte). Abgeleitet aus der LOINC-SNOMED-Ontologie und deshalb NICHT vollständig gegenüber LOINC: enthalten ist der nach SNOMED gemappte Teil. Für die lückenlose Menge siehe mii-vs-seltene-nbs-dbs-all.",
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
        "code" : "50102-3",
        "display" : "3-Hydroxybutyrylcarnitine (C4-OH) [Moles/volume] in DBS"
      },
      {
        "code" : "53189-7",
        "display" : "3-Hydroxydodecanoylcarnitine (C12-OH) [Moles/volume] in DBS"
      },
      {
        "code" : "53173-1",
        "display" : "3-Hydroxyhexanoylcarnitine (C6-OH) [Moles/volume] in DBS"
      },
      {
        "code" : "50106-4",
        "display" : "3-Hydroxyisovalerylcarnitine (C5-OH) [Moles/volume] in DBS"
      },
      {
        "code" : "53171-5",
        "display" : "3-Hydroxyisovalerylcarnitine (C5-OH)/Carnitine.free (C0) [Molar ratio] in DBS"
      },
      {
        "code" : "53172-3",
        "display" : "3-Hydroxyisovalerylcarnitine (C5-OH)/Octanoylcarnitine (C8) [Molar ratio] in DBS"
      },
      {
        "code" : "50109-8",
        "display" : "3-Hydroxylinoleoylcarnitine (C18:2-OH) [Moles/volume] in DBS"
      },
      {
        "code" : "50113-0",
        "display" : "3-Hydroxyoleoylcarnitine (C18:1-OH) [Moles/volume] in DBS"
      },
      {
        "code" : "50121-3",
        "display" : "3-Hydroxypalmitoleylcarnitine (C16:1-OH) [Moles/volume] in DBS"
      },
      {
        "code" : "50125-4",
        "display" : "3-Hydroxypalmitoylcarnitine (C16-OH) [Moles/volume] in DBS"
      },
      {
        "code" : "53201-0",
        "display" : "3-Hydroxypalmitoylcarnitine (C16-OH)/Palmitoylcarnitine (C16) [Molar ratio] in DBS"
      },
      {
        "code" : "50132-0",
        "display" : "3-Hydroxystearoylcarnitine (C18-OH) [Moles/volume] in DBS"
      },
      {
        "code" : "53196-2",
        "display" : "3-Hydroxytetradecadienoylcarnitine (C14:2-OH) [Moles/volume] in DBS"
      },
      {
        "code" : "50281-5",
        "display" : "3-Hydroxytetradecanoylcarnitine (C14-OH) [Moles/volume] in DBS"
      },
      {
        "code" : "53197-0",
        "display" : "3-Hydroxytetradecenoylcarnitine (C14:1-OH) [Moles/volume] in DBS"
      },
      {
        "code" : "50157-7",
        "display" : "Acetylcarnitine (C2) [Moles/volume] in DBS"
      },
      {
        "code" : "53237-4",
        "display" : "Acrylylcarnitine (C3:1) [Moles/volume] in DBS"
      },
      {
        "code" : "38474-3",
        "display" : "Acylcarnitine [Moles/volume] in DBS"
      },
      {
        "code" : "43717-8",
        "display" : "Acylcarnitine [Presence] in DBS"
      },
      {
        "code" : "74628-9",
        "display" : "Adipoylcarnitine (C6-DC) [Moles/volume] in DBS"
      },
      {
        "code" : "53613-6",
        "display" : "Benzoylcarnitine (BzCn) [Moles/volume] in DBS"
      },
      {
        "code" : "53065-9",
        "display" : "Butyrylcarnitine (C4) [Moles/volume] in DBS"
      },
      {
        "code" : "53180-6",
        "display" : "Decadienoylcarnitine (C10:2) [Moles/volume] in DBS"
      },
      {
        "code" : "45197-1",
        "display" : "Decanoylcarnitine (C10) [Moles/volume] in DBS"
      },
      {
        "code" : "45198-9",
        "display" : "Decenoylcarnitine (C10:1) [Moles/volume] in DBS"
      },
      {
        "code" : "53214-3",
        "display" : "Dicarboxydodecanoylcarnitine (C12-DC) [Moles/volume] in DBS"
      },
      {
        "code" : "53213-5",
        "display" : "Dicarboxydodecenoylcarnitine (C12:1-DC) [Moles/volume] in DBS"
      },
      {
        "code" : "53218-4",
        "display" : "Dicarboxypalmitoylcarnitine (C16-DC) [Moles/volume] in DBS"
      },
      {
        "code" : "53220-0",
        "display" : "Dicarboxystearoylcarnitine (C18-DC) [Moles/volume] in DBS"
      },
      {
        "code" : "53219-2",
        "display" : "Dicarboxyoleylcarnitine (C18:1-DC) [Moles/volume] in DBS"
      },
      {
        "code" : "53216-8",
        "display" : "Dicarboxytetradecanoylcarnitine (C14-DC) [Moles/volume] in DBS"
      },
      {
        "code" : "53215-0",
        "display" : "Dicarboxytetradecenoylcarnitine (C14:1-DC) [Moles/volume] in DBS"
      },
      {
        "code" : "45199-7",
        "display" : "Dodecanoylcarnitine (C12) [Moles/volume] in DBS"
      },
      {
        "code" : "45200-3",
        "display" : "Dodecenoylcarnitine (C12:1) [Moles/volume] in DBS"
      },
      {
        "code" : "53462-8",
        "display" : "Eicosanoylcarnitine (C20) [Moles/volume] in DBS"
      },
      {
        "code" : "45207-8",
        "display" : "Glutarylcarnitine (C5-DC) [Moles/volume] in DBS"
      },
      {
        "code" : "88016-1",
        "display" : "Glutarylcarnitine (C5-DC)/Acetylcarnitine (C2) [Molar ratio] in DBS"
      },
      {
        "code" : "75225-3",
        "display" : "Glutarylcarnitine (C5-DC)/Carnitine (C0) [Molar ratio] in DBS"
      },
      {
        "code" : "75216-2",
        "display" : "Glutarylcarnitine (C5-DC)/Malonylcarnitine (C3-DC) [Molar ratio] in DBS"
      },
      {
        "code" : "75267-5",
        "display" : "Glutarylcarnitine (C5-DC)/Palmitoylcarnitine (C16) [Molar ratio] in DBS"
      },
      {
        "code" : "88017-9",
        "display" : "Glutarylcarnitine (C5-DC)/Propionylcarnitine (C3) [Molar ratio] in DBS"
      },
      {
        "code" : "53204-4",
        "display" : "Heptanoylcarnitine (C7) [Moles/volume] in DBS"
      },
      {
        "code" : "45211-0",
        "display" : "Hexanoylcarnitine (C6) [Moles/volume] in DBS"
      },
      {
        "code" : "45213-6",
        "display" : "Isobutyrylcarnitine (C4) [Moles/volume] in DBS"
      },
      {
        "code" : "42920-9",
        "display" : "Isovalerylcarnitine (C5) [Moles/volume] in DBS"
      },
      {
        "code" : "45217-7",
        "display" : "Linoleoylcarnitine (C18:2) [Moles/volume] in DBS"
      },
      {
        "code" : "54462-7",
        "display" : "Malonylcarnitine (C3-DC) [Moles/volume] in DBS"
      },
      {
        "code" : "75212-1",
        "display" : "Malonylcarnitine (C3-DC)/Decanoylcarnitine (C10) [Molar ratio] in DBS"
      },
      {
        "code" : "45222-7",
        "display" : "Methylmalonylcarnitine (C4-DC) [Moles/volume] in DBS"
      },
      {
        "code" : "53181-4",
        "display" : "Methylmalonylcarnitine (C4-DC)/3-Hydroxyisovalerylcarnitine (C5-OH) [Molar ratio] in DBS"
      },
      {
        "code" : "53207-7",
        "display" : "Nonanoylcarnitine (C9) [Moles/volume] in DBS"
      },
      {
        "code" : "53175-6",
        "display" : "Octanoylcarnitine (C8) [Moles/volume] in DBS"
      },
      {
        "code" : "53176-4",
        "display" : "Octanoylcarnitine (C8)/Acetylcarnitine (C2) [Molar ratio] in DBS"
      },
      {
        "code" : "53177-2",
        "display" : "Octanoylcarnitine (C8)/Decanoylcarnitine (C10) [Molar ratio] in DBS"
      },
      {
        "code" : "88014-6",
        "display" : "Octanoylcarnitine (C8)/Carnitine.free (C0) [Molar ratio] in DBS"
      },
      {
        "code" : "53174-9",
        "display" : "Octenoylcarnitine (C8:1) [Moles/volume] in DBS"
      },
      {
        "code" : "53202-8",
        "display" : "Oleoylcarnitine (C18:1) [Moles/volume] in DBS"
      },
      {
        "code" : "53199-6",
        "display" : "Palmitoylcarnitine (C16) [Moles/volume] in DBS"
      },
      {
        "code" : "88015-3",
        "display" : "Palmitoylcarnitine (C16)/Acetylcarnitine (C2) [Molar ratio] in DBS"
      },
      {
        "code" : "88024-5",
        "display" : "Palmitoylcarnitine (C16)/Carnitine.free (C0) [Molar ratio] in DBS"
      },
      {
        "code" : "54475-9",
        "display" : "Pimeloylcarnitine (C7-DC) [Moles/volume] in DBS"
      },
      {
        "code" : "53160-8",
        "display" : "Propionylcarnitine (C3) [Moles/volume] in DBS"
      },
      {
        "code" : "53163-2",
        "display" : "Propionylcarnitine (C3)/Acetylcarnitine (C2) [Molar ratio] in DBS"
      },
      {
        "code" : "53162-4",
        "display" : "Propionylcarnitine (C3)/Carnitine.free (C0) [Molar ratio] in DBS"
      },
      {
        "code" : "53164-0",
        "display" : "Propionylcarnitine (C3)/Palmitoylcarnitine (C16) [Molar ratio] in DBS"
      },
      {
        "code" : "53161-6",
        "display" : "Propionylcarnitine (C3)/Methionine [Molar ratio] in DBS"
      },
      {
        "code" : "53241-6",
        "display" : "Stearoylcarnitine (C18) [Moles/volume] in DBS"
      },
      {
        "code" : "53400-8",
        "display" : "Stearoylcarnitine (C18)/Propionylcarnitine (C3) [Molar ratio] in DBS"
      },
      {
        "code" : "53210-1",
        "display" : "Suberylcarnitine (C8-DC) [Moles/volume] in DBS"
      },
      {
        "code" : "53190-5",
        "display" : "Tetradecadienoylcarnitine (C14:2) [Moles/volume] in DBS"
      },
      {
        "code" : "53192-1",
        "display" : "Tetradecanoylcarnitine (C14) [Moles/volume] in DBS"
      },
      {
        "code" : "53191-3",
        "display" : "Tetradecenoylcarnitine (C14:1) [Moles/volume] in DBS"
      },
      {
        "code" : "53193-9",
        "display" : "Tetradecenoylcarnitine (C14:1)/Acetylcarnitine (C2) [Molar ratio] in DBS"
      },
      {
        "code" : "53194-7",
        "display" : "Tetradecenoylcarnitine (C14:1)/Dodecenoylcarnitine (C12:1) [Molar ratio] in DBS"
      },
      {
        "code" : "88025-2",
        "display" : "Tetradecenoylcarnitine (C14:1)/Carnitine.free (C0) [Molar ratio] in DBS"
      },
      {
        "code" : "53195-4",
        "display" : "Tetradecenoylcarnitine (C14:1)/Palmitoylcarnitine (C16) [Molar ratio] in DBS"
      },
      {
        "code" : "70159-9",
        "display" : "Tetradecenoylcarnitine (C14:1)/Tetradecanoylcarnitine (C14) [Molar ratio] in DBS"
      },
      {
        "code" : "53170-7",
        "display" : "Tiglylcarnitine (C5:1) [Moles/volume] in DBS"
      }]
    }]
  }
}

```
