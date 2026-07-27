# Beispielpatient - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2026.0.1

## Example Patient: Beispielpatient

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
