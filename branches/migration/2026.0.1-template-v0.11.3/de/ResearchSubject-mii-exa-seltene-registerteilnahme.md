# Beispiel Registerteilnahme — ERN EURO-NMD - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Beispiel Registerteilnahme — ERN EURO-NMD**

## Beispiel ResearchSubject: Beispiel Registerteilnahme — ERN EURO-NMD

-------

**German**

-------

Profile: [MII PR SE Registerteilnahme](StructureDefinition-mii-pr-seltene-registerteilnahme.md) version: 2027.0.0-ballot.rc1

**MII EX SE Register**: [ERN EURO-NMD Patient Registry — Katalogeintrag](Library-mii-exa-seltene-register-katalog-euro-nmd.md)

**identifier**: `https://ern-euro-nmd.eu/fhir/sid/subject`/NMD-DE-004712

**status**: On-study

**period**: 2024-08-15 --> (ongoing)

**study**: [ResearchStudy ERN EURO-NMD Patient Registry](ResearchStudy-mii-exa-seltene-register-euro-nmd.md)

**individual**: [Anonymous Patient Female, DoB: 2024-07-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#SMA-2024-001)](Patient-patient-sma-001.md)

**consent**: [mii-exa-seltene-register-einwilligung](Consent-mii-exa-seltene-register-einwilligung.md)



## Resource Content

```json
{
  "resourceType" : "ResearchSubject",
  "id" : "mii-exa-seltene-registerteilnahme",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-registerteilnahme|2027.0.0-ballot.rc1"]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-register",
    "valueReference" : {
      "reference" : "Library/mii-exa-seltene-register-katalog-euro-nmd"
    }
  }],
  "identifier" : [{
    "system" : "https://ern-euro-nmd.eu/fhir/sid/subject",
    "value" : "NMD-DE-004712"
  }],
  "status" : "on-study",
  "period" : {
    "start" : "2024-08-15"
  },
  "study" : {
    "reference" : "ResearchStudy/mii-exa-seltene-register-euro-nmd"
  },
  "individual" : {
    "reference" : "Patient/patient-sma-001"
  },
  "consent" : {
    "reference" : "Consent/mii-exa-seltene-register-einwilligung"
  }
}

```
