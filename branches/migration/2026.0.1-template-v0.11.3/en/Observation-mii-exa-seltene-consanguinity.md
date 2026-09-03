# Consanguinity - Eltern blutsverwandt - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Consanguinity - Eltern blutsverwandt**

## Example Observation: Consanguinity - Eltern blutsverwandt

-------

**English**

-------

Profile: [MII PR SE Consanguinity](StructureDefinition-mii-pr-seltene-consanguinity.md) version: 2027.0.0-ballot.rc1

**status**: Final

**category**: Social History

**code**: Consanguinity

**subject**: [Max Mustermann (official) Male, DoB: 1990-01-01 ( http://test-krankenhaus.de/fhir/sid/patienten#12345)](Patient-mii-exa-seltene-patient.md)

**effective**: 2024-11-15

**value**: Eltern blutsverwandt (Cousins 1. Grades)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-seltene-consanguinity",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-consanguinity|2027.0.0-ballot.rc1"]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "social-history"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "842009",
      "display" : "Consanguinity"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-seltene-patient"
  },
  "effectiveDateTime" : "2024-11-15",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "373066001",
      "display" : "Yes"
    }],
    "text" : "Eltern blutsverwandt (Cousins 1. Grades)"
  }
}

```
