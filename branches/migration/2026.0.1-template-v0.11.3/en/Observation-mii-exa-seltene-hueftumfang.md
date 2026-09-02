# Hüftumfang Beispiel - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Hüftumfang Beispiel**

## Example Observation: Hüftumfang Beispiel

-------

**English**

-------

Profile: [https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hueftumfang|2026.0.1](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hueftumfang|2026.0.1)

**status**: Final

**category**: Vital Signs

**code**: Hip circumference

**subject**: [Beispielpatient](Patient-mii-exa-seltene-patient.md)

**effective**: 2024-08-08 10:00:00+0200

**value**: 98 cm (Details: UCUM codecm = 'cm')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-seltene-hueftumfang",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hueftumfang|2026.0.1"]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "vital-signs",
      "display" : "Vital Signs"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "284472007",
      "display" : "Hip circumference"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-seltene-patient",
    "display" : "Beispielpatient"
  },
  "effectiveDateTime" : "2024-08-08T10:00:00+02:00",
  "valueQuantity" : {
    "value" : 98,
    "unit" : "cm",
    "system" : "http://unitsofmeasure.org",
    "code" : "cm"
  }
}

```
