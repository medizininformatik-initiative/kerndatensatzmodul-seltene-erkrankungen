# Beispiel Register als ResearchStudy — ERN EURO-NMD - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Beispiel Register als ResearchStudy — ERN EURO-NMD**

## Beispiel ResearchStudy: Beispiel Register als ResearchStudy — ERN EURO-NMD

-------

**German**

-------

**identifier**: `https://ern-euro-nmd.eu/fhir/sid/registry`/EURO-NMD-REG

**title**: ERN EURO-NMD Patient Registry

**status**: Active

**category**: Research study

**description**: 

Registry of the European Reference Network for Rare Neuromuscular Diseases.



## Resource Content

```json
{
  "resourceType" : "ResearchStudy",
  "id" : "mii-exa-seltene-register-euro-nmd",
  "identifier" : [{
    "system" : "https://ern-euro-nmd.eu/fhir/sid/registry",
    "value" : "EURO-NMD-REG"
  }],
  "title" : "ERN EURO-NMD Patient Registry",
  "status" : "active",
  "category" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "415145008",
      "display" : "Research study"
    }]
  }],
  "description" : "Registry of the European Reference Network for Rare Neuromuscular Diseases."
}

```
