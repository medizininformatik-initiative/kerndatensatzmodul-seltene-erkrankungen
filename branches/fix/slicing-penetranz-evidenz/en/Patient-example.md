# Beispielpatient - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispielpatient**

## Example Patient: Beispielpatient

-------

**English**

-------

Max Mustermann Male, DoB: 1990-01-01 ( http://test-krankenhaus.de/fhir/sid/patienten#12345)

-------



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "example",
  "identifier" : [{
    "system" : "http://test-krankenhaus.de/fhir/sid/patienten",
    "value" : "12345"
  }],
  "name" : [{
    "family" : "Mustermann",
    "given" : ["Max"]
  }],
  "gender" : "male",
  "birthDate" : "1990-01-01"
}

```
