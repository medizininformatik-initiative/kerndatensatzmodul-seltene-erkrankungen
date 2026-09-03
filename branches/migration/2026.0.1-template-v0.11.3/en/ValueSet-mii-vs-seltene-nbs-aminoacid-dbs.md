# MII VS Seltene Erkrankungen NBS Aminosäuren (Trockenblut) - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Seltene Erkrankungen NBS Aminosäuren (Trockenblut)**

## ValueSet: MII VS Seltene Erkrankungen NBS Aminosäuren (Trockenblut) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-nbs-aminoacid-dbs | *Version*:2027.0.0-ballot.rc1 |
| Active as of 2026-09-03 | *Computable Name*:MII_VS_Seltene_NBS_AminoAcid_DBS |

 
Aminosäure-Analyte in Trockenblut — die Messgrößen des MS/MS-Aminosäureprofils im Neugeborenenscreening (Phenylketonurie, Ahornsirupkrankheit, Homocystinurie, Tyrosinämie, Harnstoffzyklusdefekte). Abgeleitet aus der LOINC-SNOMED-Ontologie und deshalb NICHT vollständig gegenüber LOINC; für die lückenlose Menge siehe mii-vs-seltene-nbs-dbs-all. 

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
  "id" : "mii-vs-seltene-nbs-aminoacid-dbs",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-nbs-aminoacid-dbs",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_VS_Seltene_NBS_AminoAcid_DBS",
  "title" : "MII VS Seltene Erkrankungen NBS Aminosäuren (Trockenblut)",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-03T09:08:22+00:00",
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
  "description" : "Aminosäure-Analyte in Trockenblut — die Messgrößen des MS/MS-Aminosäureprofils im Neugeborenenscreening (Phenylketonurie, Ahornsirupkrankheit, Homocystinurie, Tyrosinämie, Harnstoffzyklusdefekte). Abgeleitet aus der LOINC-SNOMED-Ontologie und deshalb NICHT vollständig gegenüber LOINC; für die lückenlose Menge siehe mii-vs-seltene-nbs-dbs-all.",
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
        "code" : "50065-2",
        "display" : "1-Methylhistidine [Moles/volume] in DBS"
      },
      {
        "code" : "47559-0",
        "display" : "Alpha aminobutyrate [Moles/volume] in DBS"
      },
      {
        "code" : "53064-2",
        "display" : "Beta aminoisobutyrate [Moles/volume] in DBS"
      },
      {
        "code" : "47539-2",
        "display" : "3-Methylhistidine [Moles/volume] in DBS"
      },
      {
        "code" : "47551-7",
        "display" : "Alanine [Moles/volume] in DBS"
      },
      {
        "code" : "47556-6",
        "display" : "Alanine/Amino acids.total in DBS"
      },
      {
        "code" : "88018-7",
        "display" : "Alanine/Lysine [Mass Ratio] in DBS"
      },
      {
        "code" : "94572-5",
        "display" : "Alloisoleucine [Moles/volume] in DBS"
      },
      {
        "code" : "74875-6",
        "display" : "Alloisoleucine [Moles/volume] in DBS --post therapeutic diet"
      },
      {
        "code" : "50083-5",
        "display" : "Alpha aminoadipate [Moles/volume] in DBS"
      },
      {
        "code" : "47562-4",
        "display" : "Arginine [Moles/volume] in DBS"
      },
      {
        "code" : "74876-4",
        "display" : "Arginine [Moles/volume] in DBS --post therapeutic diet"
      },
      {
        "code" : "43927-3",
        "display" : "Arginine [Presence] in DBS"
      },
      {
        "code" : "47567-3",
        "display" : "Arginine/Amino acids.total in DBS"
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
        "code" : "74877-2",
        "display" : "Argininosuccinate [Moles/volume] in DBS --post therapeutic diet"
      },
      {
        "code" : "53062-6",
        "display" : "Argininosuccinate [Moles/volume] in DBS"
      },
      {
        "code" : "53200-2",
        "display" : "Argininosuccinate/Arginine [Molar ratio] in DBS"
      },
      {
        "code" : "47572-3",
        "display" : "Asparagine [Moles/volume] in DBS"
      },
      {
        "code" : "53063-4",
        "display" : "Beta alanine [Moles/volume] in DBS"
      },
      {
        "code" : "38480-0",
        "display" : "Carnitine [Moles/volume] in DBS"
      },
      {
        "code" : "42892-0",
        "display" : "Citrulline [Moles/volume] in DBS"
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
        "code" : "53066-7",
        "display" : "Cystathionine [Moles/volume] in DBS"
      },
      {
        "code" : "38481-8",
        "display" : "Carnitine free (C0) [Moles/volume] in DBS"
      },
      {
        "code" : "74878-0",
        "display" : "Carnitine free (C0) [Moles/volume] in DBS --post therapeutic diet"
      },
      {
        "code" : "53095-6",
        "display" : "Carnitine free (C0)/Carnitine.total in DBS"
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
        "code" : "47630-9",
        "display" : "Glutamine [Moles/volume] in DBS"
      },
      {
        "code" : "47633-3",
        "display" : "Glycine [Moles/volume] in DBS"
      },
      {
        "code" : "47638-2",
        "display" : "Glycine/Amino acids.total in DBS"
      },
      {
        "code" : "93488-5",
        "display" : "Guanidinoacetate [Moles/volume] in DBS"
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
        "code" : "47643-2",
        "display" : "Histidine [Moles/volume] in DBS"
      },
      {
        "code" : "47648-1",
        "display" : "Histidine/Amino acids.total in DBS"
      },
      {
        "code" : "53158-2",
        "display" : "Homocitrulline [Moles/volume] in DBS"
      },
      {
        "code" : "44376-2",
        "display" : "Homocysteine [Presence] in DBS"
      },
      {
        "code" : "54301-7",
        "display" : "Homocysteine [Moles/volume] in DBS"
      },
      {
        "code" : "38486-7",
        "display" : "Homocystine [Presence] in DBS"
      },
      {
        "code" : "54302-5",
        "display" : "Homocystine [Moles/volume] in DBS"
      },
      {
        "code" : "54303-3",
        "display" : "Hydroxylysine [Moles/volume] in DBS"
      },
      {
        "code" : "74880-6",
        "display" : "Hydroxyproline [Moles/volume] in DBS --post therapeutic diet"
      },
      {
        "code" : "47651-5",
        "display" : "Hydroxyproline [Moles/volume] in DBS"
      },
      {
        "code" : "74881-4",
        "display" : "Isoleucine [Moles/volume] in DBS --post therapeutic diet"
      },
      {
        "code" : "47671-3",
        "display" : "Isoleucine [Moles/volume] in DBS"
      },
      {
        "code" : "47676-2",
        "display" : "Isoleucine/Amino acids.total in DBS"
      },
      {
        "code" : "47679-6",
        "display" : "Leucine [Moles/volume] in DBS"
      },
      {
        "code" : "74882-2",
        "display" : "Leucine [Moles/volume] in DBS --post therapeutic diet"
      },
      {
        "code" : "57994-6",
        "display" : "Leucine/Alanine [Mass Ratio] in DBS"
      },
      {
        "code" : "47684-6",
        "display" : "Leucine/Amino acids.total in DBS"
      },
      {
        "code" : "75268-3",
        "display" : "Leucine/Phenylalanine [Molar ratio] in DBS"
      },
      {
        "code" : "57995-3",
        "display" : "Leucine/Phenylalanine [Mass Ratio] in DBS"
      },
      {
        "code" : "47689-5",
        "display" : "Lysine [Moles/volume] in DBS"
      },
      {
        "code" : "47694-5",
        "display" : "Lysine/Amino acids.total in DBS"
      },
      {
        "code" : "74883-0",
        "display" : "Ornithine [Moles/volume] in DBS --post therapeutic diet"
      },
      {
        "code" : "47714-1",
        "display" : "Ornithine [Moles/volume] in DBS"
      },
      {
        "code" : "75215-4",
        "display" : "Ornithine/Citrulline [Molar ratio] in DBS"
      },
      {
        "code" : "109502-5",
        "display" : "Phenylalanine [Measurement] in DBS"
      },
      {
        "code" : "29572-5",
        "display" : "Phenylalanine [Mass/volume] in DBS"
      },
      {
        "code" : "74303-9",
        "display" : "Phenylalanine [Moles/volume] in DBS --post therapeutic diet"
      },
      {
        "code" : "29573-3",
        "display" : "Phenylalanine [Moles/volume] in DBS"
      },
      {
        "code" : "29571-7",
        "display" : "Phenylalanine [Presence] in DBS"
      },
      {
        "code" : "55969-0",
        "display" : "Phenylalanine/Amino acids.total in DBS"
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
        "code" : "54489-0",
        "display" : "Phosphoserine [Moles/volume] in DBS"
      },
      {
        "code" : "54328-0",
        "display" : "Pipecolate [Moles/volume] in DBS"
      },
      {
        "code" : "47732-3",
        "display" : "Proline [Moles/volume] in DBS"
      },
      {
        "code" : "47736-4",
        "display" : "Proline/Amino acids.total in DBS"
      },
      {
        "code" : "53392-7",
        "display" : "Proline/Phenylalanine [Molar ratio] in DBS"
      },
      {
        "code" : "47700-0",
        "display" : "Methionine [Moles/volume] in DBS"
      },
      {
        "code" : "63380-0",
        "display" : "Methionine [Presence] in DBS"
      },
      {
        "code" : "47705-9",
        "display" : "Methionine/Amino acids.total in DBS"
      },
      {
        "code" : "53156-6",
        "display" : "Methionine/Phenylalanine [Molar ratio] in DBS"
      },
      {
        "code" : "47742-2",
        "display" : "Serine [Moles/volume] in DBS"
      },
      {
        "code" : "47747-1",
        "display" : "Serine/Amino acids.total in DBS"
      },
      {
        "code" : "47782-8",
        "display" : "Taurine [Moles/volume] in DBS"
      },
      {
        "code" : "47784-4",
        "display" : "Threonine [Moles/volume] in DBS"
      },
      {
        "code" : "47789-3",
        "display" : "Threonine/Amino acids.total in DBS"
      },
      {
        "code" : "79330-7",
        "display" : "Trimethyllysine [Moles/volume] in DBS"
      },
      {
        "code" : "53159-0",
        "display" : "Tryptophan [Moles/volume] in DBS"
      },
      {
        "code" : "35571-9",
        "display" : "Tyrosine [Moles/volume] in DBS"
      },
      {
        "code" : "45032-0",
        "display" : "Tyrosine [Mass/volume] in DBS"
      },
      {
        "code" : "74302-1",
        "display" : "Tyrosine [Moles/volume] in DBS --post therapeutic diet"
      },
      {
        "code" : "47796-8",
        "display" : "Tyrosine/Amino acids.total in DBS"
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
        "code" : "74884-8",
        "display" : "Valine [Moles/volume] in DBS --post therapeutic diet"
      },
      {
        "code" : "47799-2",
        "display" : "Valine [Moles/volume] in DBS"
      },
      {
        "code" : "47804-0",
        "display" : "Valine/Amino acids.total in DBS"
      },
      {
        "code" : "53151-7",
        "display" : "Valine/Phenylalanine [Molar ratio] in DBS"
      }]
    }]
  }
}

```
