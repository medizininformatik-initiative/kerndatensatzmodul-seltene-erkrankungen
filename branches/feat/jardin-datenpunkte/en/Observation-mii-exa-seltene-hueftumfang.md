# Hüftumfang Beispiel - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Hüftumfang Beispiel**

## Example Observation: Hüftumfang Beispiel

-------

**English**

-------

Profile: [https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hueftumfang|2026.0.1](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hueftumfang|2026.0.1)

**status**: Final

**category**: Vital Signs

**code**: Circumference.at maximal protrusion of gluteus muscles Pelvis

**subject**: [Beispielpatient](Patient-example.md)

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
      "system" : "http://loinc.org",
      "code" : "56063-1",
      "display" : "Circumference.at maximal protrusion of gluteus muscles Pelvis"
    }]
  },
  "subject" : {
    "reference" : "Patient/example",
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
