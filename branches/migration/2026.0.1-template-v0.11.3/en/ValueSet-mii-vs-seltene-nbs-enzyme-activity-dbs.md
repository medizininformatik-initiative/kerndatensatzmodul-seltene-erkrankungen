# MII VS Seltene Erkrankungen NBS Enzymaktivitäten (Trockenblut) - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Seltene Erkrankungen NBS Enzymaktivitäten (Trockenblut)**

## ValueSet: MII VS Seltene Erkrankungen NBS Enzymaktivitäten (Trockenblut) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-nbs-enzyme-activity-dbs | *Version*:2027.0.0-ballot |
| Active as of 2026-09-02 | *Computable Name*:MII_VS_Seltene_NBS_EnzymeActivity_DBS |

 
Enzymaktivitäten (katalytische Konzentration), die in Trockenblut bestimmt werden — u. a. Biotinidase und Galaktose-Enzyme des deutschen Neugeborenenscreenings sowie die Enzyme lysosomaler Speicherkrankheiten, die international gescreent werden. 

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
  "id" : "mii-vs-seltene-nbs-enzyme-activity-dbs",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-nbs-enzyme-activity-dbs",
  "version" : "2027.0.0-ballot",
  "name" : "MII_VS_Seltene_NBS_EnzymeActivity_DBS",
  "title" : "MII VS Seltene Erkrankungen NBS Enzymaktivitäten (Trockenblut)",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-02T06:59:28+00:00",
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
  "description" : "Enzymaktivitäten (katalytische Konzentration), die in Trockenblut bestimmt werden — u. a. Biotinidase und Galaktose-Enzyme des deutschen Neugeborenenscreenings sowie die Enzyme lysosomaler Speicherkrankheiten, die international gescreent werden.",
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
        "code" : "55909-6",
        "display" : "Alpha-L-iduronidase [Enzymatic activity/volume] in DBS"
      },
      {
        "code" : "79455-2",
        "display" : "Alpha-N-acetylgalactosaminidase [Enzymatic activity/volume] in DBS"
      },
      {
        "code" : "88019-5",
        "display" : "N-Acetylgalactosamine-6-Sulfatase [Enzymatic activity/volume] in DBS"
      },
      {
        "code" : "79463-6",
        "display" : "N-Acetylgalactosamine-4-Sulfatase [Enzymatic activity/volume] in DBS"
      },
      {
        "code" : "75094-3",
        "display" : "Galactose 1 phosphate uridyl transferase [Enzymatic activity/volume] in DBS --post therapeutic diet"
      },
      {
        "code" : "42906-8",
        "display" : "Galactose 1 phosphate uridyl transferase [Enzymatic activity/volume] in DBS"
      },
      {
        "code" : "55827-0",
        "display" : "Acid alpha glucosidase [Enzymatic activity/volume] in DBS"
      },
      {
        "code" : "62316-5",
        "display" : "Acid sphingomyelinase [Enzymatic activity/volume] in DBS"
      },
      {
        "code" : "75052-1",
        "display" : "Adenosine deaminase [Enzymatic activity/volume] in DBS"
      },
      {
        "code" : "96586-3",
        "display" : "Alanine aminotransferase [Enzymatic activity/volume] in DBS"
      },
      {
        "code" : "79454-5",
        "display" : "Alpha fucosidase [Enzymatic activity/volume] in DBS"
      },
      {
        "code" : "104114-4",
        "display" : "Alpha-N-acetylglucosaminidase [Enzymatic activity/volume] in DBS"
      },
      {
        "code" : "55908-8",
        "display" : "Alpha galactosidase A [Enzymatic activity/volume] in DBS"
      },
      {
        "code" : "55910-4",
        "display" : "Alpha mannosidase [Enzymatic activity/volume] in DBS"
      },
      {
        "code" : "55912-0",
        "display" : "Arylsulfatase [Enzymatic activity/volume] in DBS"
      },
      {
        "code" : "96587-1",
        "display" : "Aspartate aminotransferase [Enzymatic activity/volume] in DBS"
      },
      {
        "code" : "79458-6",
        "display" : "Beta-N-acetylhexosaminidase [Enzymatic activity/volume] in DBS"
      },
      {
        "code" : "55916-1",
        "display" : "Beta galactosidase [Enzymatic activity/volume] in DBS"
      },
      {
        "code" : "79457-8",
        "display" : "Beta glucuronidase [Enzymatic activity/volume] in DBS"
      },
      {
        "code" : "80425-2",
        "display" : "Beta-N-acetylhexosaminidase.A [Enzymatic activity/volume] in DBS"
      },
      {
        "code" : "75217-0",
        "display" : "Biotinidase [Enzymatic activity/volume] in DBS"
      },
      {
        "code" : "111824-9",
        "display" : "Cerebroside sulfatase [Enzymatic activity/volume] in DBS"
      },
      {
        "code" : "55836-1",
        "display" : "Chitotriosidase [Enzymatic activity/volume] in DBS"
      },
      {
        "code" : "73958-1",
        "display" : "Cholesterol esterase [Enzymatic activity/volume] in DBS"
      },
      {
        "code" : "107446-7",
        "display" : "Creatine kinase.MM [Enzymatic activity/volume] in DBS"
      },
      {
        "code" : "62310-8",
        "display" : "Galactosylceramidase [Enzymatic activity/volume] in DBS"
      },
      {
        "code" : "96593-9",
        "display" : "Gamma glutamyl transferase [Enzymatic activity/volume] in DBS"
      },
      {
        "code" : "55917-9",
        "display" : "Glucosylceramidase [Enzymatic activity/volume] in DBS"
      },
      {
        "code" : "104113-6",
        "display" : "Heparan-N-sulfatase [Enzymatic activity/volume] in DBS"
      },
      {
        "code" : "79462-8",
        "display" : "Iduronate-2-Sulfatase [Enzymatic activity/volume] in DBS"
      },
      {
        "code" : "59246-9",
        "display" : "Palmitoyl protein thioesterase [Enzymatic activity/volume] in DBS"
      },
      {
        "code" : "79467-7",
        "display" : "Purine nucleoside phosphorylase [Enzymatic activity/volume] in DBS"
      },
      {
        "code" : "75058-8",
        "display" : "Thymidine phosphorylase [Enzymatic activity/volume] in DBS"
      },
      {
        "code" : "72498-9",
        "display" : "Tripeptidyl peptidase I [Enzymatic activity/volume] in DBS"
      }]
    }]
  }
}

```
