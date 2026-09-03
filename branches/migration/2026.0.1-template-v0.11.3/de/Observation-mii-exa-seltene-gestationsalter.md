# Beispiel Gestationsalter bei Geburt - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Beispiel Gestationsalter bei Geburt**

## Beispiel Observation: Beispiel Gestationsalter bei Geburt

-------

**German**

-------

Profile: [MII PR SE Gestationsalter bei Geburt](StructureDefinition-mii-pr-seltene-gestationsalter.md) version: 2027.0.0-ballot.rc1

**status**: Final

**code**: Gestational age--at birth

**subject**: [Anonymous Patient Female, DoB: 2024-07-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#SMA-2024-001)](Patient-patient-sma-001.md)

**effective**: 2024-07-01

**value**: 38 Wochen (Details: UCUM codewk = 'wk')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-seltene-gestationsalter",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-gestationsalter|2027.0.0-ballot.rc1"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "76516-4",
      "display" : "Gestational age--at birth"
    }]
  },
  "subject" : {
    "reference" : "Patient/patient-sma-001"
  },
  "effectiveDateTime" : "2024-07-01",
  "valueQuantity" : {
    "value" : 38,
    "unit" : "Wochen",
    "system" : "http://unitsofmeasure.org",
    "code" : "wk"
  }
}

```
