# MII VS Seltene Erkrankungen NBS Quotienten (Trockenblut) - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Seltene Erkrankungen NBS Quotienten (Trockenblut)**

## ValueSet: MII VS Seltene Erkrankungen NBS Quotienten (Trockenblut) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-nbs-ratio-dbs | *Version*:2027.0.0-ballot |
| Active as of 2026-09-02 | *Computable Name*:MII_VS_Seltene_NBS_Ratio_DBS |

 
Diagnostische Quotienten aus Trockenblut-Analyten. Im Neugeborenenscreening tragen die Verhältnisse (z. B. C3/C2, Phe/Tyr) einen großen Teil der diagnostischen Trennschärfe, weil sie von der Probenqualität weniger abhängen als Einzelwerte. 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-seltene-nbs-ratio-dbs",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-nbs-ratio-dbs",
  "version" : "2027.0.0-ballot",
  "name" : "MII_VS_Seltene_NBS_Ratio_DBS",
  "title" : "MII VS Seltene Erkrankungen NBS Quotienten (Trockenblut)",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-02T16:35:11+00:00",
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
  "description" : "Diagnostische Quotienten aus Trockenblut-Analyten. Im Neugeborenenscreening tragen die Verhältnisse (z. B. C3/C2, Phe/Tyr) einen großen Teil der diagnostischen Trennschärfe, weil sie von der Probenqualität weniger abhängen als Einzelwerte.",
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
        "code" : "53171-5",
        "display" : "3-Hydroxyisovalerylcarnitine (C5-OH)/Carnitine.free (C0) [Molar ratio] in DBS"
      },
      {
        "code" : "53172-3",
        "display" : "3-Hydroxyisovalerylcarnitine (C5-OH)/Octanoylcarnitine (C8) [Molar ratio] in DBS"
      },
      {
        "code" : "53201-0",
        "display" : "3-Hydroxypalmitoylcarnitine (C16-OH)/Palmitoylcarnitine (C16) [Molar ratio] in DBS"
      },
      {
        "code" : "75214-7",
        "display" : "Arginine/Ornithine [Molar ratio] in DBS"
      },
      {
        "code" : "53398-4",
        "display" : "Arginine/Phenylalanine [Molar ratio] in DBS"
      },
      {
        "code" : "53200-2",
        "display" : "Argininosuccinate/Arginine [Molar ratio] in DBS"
      },
      {
        "code" : "45192-2",
        "display" : "Carnitine esters/Carnitine.free (C0) [Molar ratio] in DBS"
      },
      {
        "code" : "54092-2",
        "display" : "Citrulline/Arginine [Molar ratio] in DBS"
      },
      {
        "code" : "53157-4",
        "display" : "Citrulline/Phenylalanine [Molar ratio] in DBS"
      },
      {
        "code" : "53399-2",
        "display" : "Citrulline/Tyrosine [Molar ratio] in DBS"
      },
      {
        "code" : "104196-1",
        "display" : "Creatine/Creatinine [Molar ratio] in DBS"
      },
      {
        "code" : "53233-3",
        "display" : "Carnitine free (C0)/Palmitoylcarnitine (C16) [Molar ratio] in DBS"
      },
      {
        "code" : "53234-1",
        "display" : "Carnitine free (C0)/Stearoylcarnitine (C18) [Molar ratio] in DBS"
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
        "code" : "107506-8",
        "display" : "Guanidinoacetate/Creatine [Molar ratio] in DBS"
      },
      {
        "code" : "104195-3",
        "display" : "Guanidinoacetate/Creatinine [Molar ratio] in DBS"
      },
      {
        "code" : "75268-3",
        "display" : "Leucine/Phenylalanine [Molar ratio] in DBS"
      },
      {
        "code" : "75212-1",
        "display" : "Malonylcarnitine (C3-DC)/Decanoylcarnitine (C10) [Molar ratio] in DBS"
      },
      {
        "code" : "53181-4",
        "display" : "Methylmalonylcarnitine (C4-DC)/3-Hydroxyisovalerylcarnitine (C5-OH) [Molar ratio] in DBS"
      },
      {
        "code" : "80154-8",
        "display" : "Monolysocardiolipin/Cardiolipin [Molar ratio] in DBS"
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
        "code" : "75215-4",
        "display" : "Ornithine/Citrulline [Molar ratio] in DBS"
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
        "code" : "74300-5",
        "display" : "Phenylalanine/Tyrosine [Molar ratio] in DBS --post therapeutic diet"
      },
      {
        "code" : "35572-7",
        "display" : "Phenylalanine/Tyrosine [Molar ratio] in DBS"
      },
      {
        "code" : "53392-7",
        "display" : "Proline/Phenylalanine [Molar ratio] in DBS"
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
        "code" : "53156-6",
        "display" : "Methionine/Phenylalanine [Molar ratio] in DBS"
      },
      {
        "code" : "53400-8",
        "display" : "Stearoylcarnitine (C18)/Propionylcarnitine (C3) [Molar ratio] in DBS"
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
        "code" : "74481-3",
        "display" : "Tyrosine/Phenylalanine [Molar ratio] in DBS"
      },
      {
        "code" : "74299-9",
        "display" : "Tyrosine/Phenylalanine [Molar ratio] in DBS --post therapeutic diet"
      },
      {
        "code" : "53151-7",
        "display" : "Valine/Phenylalanine [Molar ratio] in DBS"
      }]
    }]
  }
}

```
