# MII VS Seltene Erkrankungen NBS Leitanalyten der Zielkrankheiten - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Seltene Erkrankungen NBS Leitanalyten der Zielkrankheiten**

## ValueSet: MII VS Seltene Erkrankungen NBS Leitanalyten der Zielkrankheiten 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-nbs-target-analyte | *Version*:2027.0.0-ballot |
| Active as of 2026-09-02 | *Computable Name*:MII_VS_Seltene_NBS_TargetAnalyte |

 
Leitanalyten der Zielkrankheiten des deutschen Neugeborenenscreenings nach G-BA Kinder-Richtlinie § 17 Abs. 1 (20 Zielkrankheiten) und § 23 ff. (Mukoviszidose). Je Zielkrankheit der Analyt, über den sie im Screening erkannt wird. 

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
  "id" : "mii-vs-seltene-nbs-target-analyte",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-nbs-target-analyte",
  "version" : "2027.0.0-ballot",
  "name" : "MII_VS_Seltene_NBS_TargetAnalyte",
  "title" : "MII VS Seltene Erkrankungen NBS Leitanalyten der Zielkrankheiten",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-02T03:38:58+00:00",
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
  "description" : "Leitanalyten der Zielkrankheiten des deutschen Neugeborenenscreenings nach G-BA Kinder-Richtlinie § 17 Abs. 1 (20 Zielkrankheiten) und § 23 ff. (Mukoviszidose). Je Zielkrankheit der Analyt, über den sie im Screening erkannt wird.",
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
        "code" : "29575-8",
        "display" : "Thyrotropin [Units/volume] in DBS"
      },
      {
        "code" : "38473-5",
        "display" : "17-Hydroxyprogesterone [Mass/volume] in DBS"
      },
      {
        "code" : "75217-0",
        "display" : "Biotinidase [Enzymatic activity/volume] in DBS"
      },
      {
        "code" : "54084-9",
        "display" : "Galactose [Mass/volume] in DBS"
      },
      {
        "code" : "29573-3",
        "display" : "Phenylalanine [Moles/volume] in DBS"
      },
      {
        "code" : "47679-6",
        "display" : "Leucine [Moles/volume] in DBS"
      },
      {
        "code" : "53175-6",
        "display" : "Octanoylcarnitine (C8) [Moles/volume] in DBS"
      },
      {
        "code" : "50125-4",
        "display" : "3-Hydroxypalmitoylcarnitine (C16-OH) [Moles/volume] in DBS"
      },
      {
        "code" : "53191-3",
        "display" : "Tetradecenoylcarnitine (C14:1) [Moles/volume] in DBS"
      },
      {
        "code" : "38481-8",
        "display" : "Carnitine free (C0) [Moles/volume] in DBS"
      },
      {
        "code" : "53199-6",
        "display" : "Palmitoylcarnitine (C16) [Moles/volume] in DBS"
      },
      {
        "code" : "53235-8",
        "display" : "Carnitine free (C0)/Palmitoylcarnitine (C16)+Stearoylcarnitine (C18) [Molar ratio] in DBS"
      },
      {
        "code" : "45207-8",
        "display" : "Glutarylcarnitine (C5-DC) [Moles/volume] in DBS"
      },
      {
        "code" : "42920-9",
        "display" : "Isovalerylcarnitine (C5) [Moles/volume] in DBS"
      },
      {
        "code" : "53231-7",
        "display" : "Succinylacetone [Moles/volume] in DBS"
      },
      {
        "code" : "62320-7",
        "display" : "T-cell receptor excision circle [#/volume] in DBS by NAA with probe detection"
      },
      {
        "code" : "54081-5",
        "display" : "Hemoglobinopathies newborn screening panel"
      },
      {
        "code" : "92002-5",
        "display" : "SMN1 gene [Cycle Threshold #] in DBS by NAA with probe detection"
      },
      {
        "code" : "53160-8",
        "display" : "Propionylcarnitine (C3) [Moles/volume] in DBS"
      },
      {
        "code" : "47700-0",
        "display" : "Methionine [Moles/volume] in DBS"
      },
      {
        "code" : "48633-2",
        "display" : "Trypsinogen I Free [Mass/volume] in DBS"
      }]
    }]
  }
}

```
