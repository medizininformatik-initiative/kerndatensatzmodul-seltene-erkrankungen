# MII EXA SE Beispielpatient - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII EXA SE Beispielpatient**

## Example Patient: MII EXA SE Beispielpatient

-------

**English**

-------

Profile: [MII PR Person Patient](https://medizininformatik-initiative.github.io/kerndatensatz-basis/2027.0.0-ballot.rc1/StructureDefinition-mii-pr-person-patient.html)

Max Mustermann (official) Male, DoB: 1990-01-01 ( http://test-krankenhaus.de/fhir/sid/patienten#12345)

-------



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "mii-exa-seltene-patient",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient"]
  },
  "identifier" : [{
    "system" : "http://test-krankenhaus.de/fhir/sid/patienten",
    "value" : "12345"
  }],
  "name" : [{
    "use" : "official",
    "family" : "Mustermann",
    "given" : ["Max"]
  }],
  "gender" : "male",
  "birthDate" : "1990-01-01"
}

```
