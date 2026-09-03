# Beispiel Register-Katalogeintrag (Library) - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Register-Katalogeintrag (Library)**

## Library: Beispiel Register-Katalogeintrag (Library) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/Library/mii-exa-seltene-register-katalog-euro-nmd | *Version*:2027.0.0-ballot.rc1 |
| Active as of 2026-09-03 | *Computable Name*:ERNEuroNMDRegistry |
| *Other Identifiers:*https://ern-euro-nmd.eu/fhir/sid/registry#EURO-NMD-REG | |

-------

**English**

-------

**Exception parsing generated Narrative (see /tmp/liquid-02454c0f-fa2e-4c57-899e-05c2f69bffe2.html): unexpected non-end of element null::a at line 135 column 50**



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "mii-exa-seltene-register-katalog-euro-nmd",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/Library/mii-exa-seltene-register-katalog-euro-nmd",
  "identifier" : [{
    "system" : "https://ern-euro-nmd.eu/fhir/sid/registry",
    "value" : "EURO-NMD-REG"
  }],
  "version" : "2027.0.0-ballot.rc1",
  "name" : "ERNEuroNMDRegistry",
  "title" : "ERN EURO-NMD Patient Registry — Katalogeintrag",
  "status" : "active",
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/library-type",
      "code" : "asset-collection"
    }]
  },
  "date" : "2026-09-03T09:44:41+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "relatedArtifact" : [{
    "type" : "documentation",
    "url" : "https://ern-euro-nmd.eu/registry/",
    "document" : {
      "url" : "https://ern-euro-nmd.eu/registry/"
    }
  }]
}

```
