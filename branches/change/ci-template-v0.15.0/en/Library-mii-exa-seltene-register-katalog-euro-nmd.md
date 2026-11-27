# Beispiel Register-Katalogeintrag (Library) - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Register-Katalogeintrag (Library)**

## Library: Beispiel Register-Katalogeintrag (Library) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/Library/mii-exa-seltene-register-katalog-euro-nmd | *Version*:2027.0.0-ballot |
| Active as of 2026-11-27 | *Computable Name*:ERNEuroNMDRegistry |
| *Other Identifiers:*https://ern-euro-nmd.eu/fhir/sid/registry#EURO-NMD-REG | |

-------

**English**

-------

* **Related Artifacts: **: **Id: **
  * **Documentation***: mii-exa-seltene-register-katalog-euro-nmd
* **Related Artifacts: **: **Version: **
  * **Documentation***: 2027.0.0-ballot
* **Related Artifacts: **: **Url: **
  * **Documentation***: [ERN EURO-NMD Patient Registry — Katalogeintrag](Library-mii-exa-seltene-register-katalog-euro-nmd.md)
* **Related Artifacts: **: ** **
  * **Documentation***:  EURO-NMD-REG 
* **Related Artifacts: **: **Date: **
  * **Documentation***: 2026-11-27 14:25:20+0000
* **Related Artifacts: **: **Publisher: **
  * **Documentation***: Medizininformatik Initiative
* **Related Artifacts: **: **Jurisdiction: **
  * **Documentation***: DE



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
  "version" : "2027.0.0-ballot",
  "name" : "ERNEuroNMDRegistry",
  "title" : "ERN EURO-NMD Patient Registry — Katalogeintrag",
  "status" : "active",
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/library-type",
      "code" : "asset-collection"
    }]
  },
  "date" : "2026-11-27T14:25:20+00:00",
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
    "document" : {
      "url" : "https://ern-euro-nmd.eu/registry/"
    }
  }]
}

```
