# MII VS SE Therapieempfehlung Strategie - Medikamentös - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2026.0.1

## ValueSet: MII VS SE Therapieempfehlung Strategie - Medikamentös 

 
ValueSet für medikamentöse Therapiestrategien (für MedicationRequest Profile) - Verwendet für MedicationRequest-basierte Therapieempfehlungen im Kontext Modellvorhaben GenomSeq 

 **References** 

* [MII PR SE Therapieempfehlung Systemische Therapie](StructureDefinition-mii-pr-seltene-therapieempfehlung.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-seltene-therapieempfehlung-strategie-medikamentoes",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-therapieempfehlung-strategie-medikamentoes",
  "version" : "2026.0.1",
  "name" : "MII_VS_Seltene_TherapieempfehlungStrategieMedikamentoes",
  "title" : "MII VS SE Therapieempfehlung Strategie - Medikamentös",
  "status" : "active",
  "date" : "2026-07-28T16:26:31+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "ValueSet für medikamentöse Therapiestrategien (für MedicationRequest Profile) - Verwendet für MedicationRequest-basierte Therapieempfehlungen im Kontext Modellvorhaben GenomSeq",
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-therapieempfehlung-strategie",
      "concept" : [{
        "code" : "systemic-medication",
        "display" : "Systemische Medikation"
      },
      {
        "code" : "targeted-medication",
        "display" : "Zielgerichtete Medikation"
      },
      {
        "code" : "prevention-medication",
        "display" : "Präventive Medikation"
      },
      {
        "code" : "gene-therapy",
        "display" : "Gentherapie"
      },
      {
        "code" : "combination",
        "display" : "Kombinationstherapie"
      }]
    }]
  }
}

```
