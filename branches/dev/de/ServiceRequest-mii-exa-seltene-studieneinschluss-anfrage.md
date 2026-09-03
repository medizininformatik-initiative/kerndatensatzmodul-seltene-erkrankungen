# Studieneinschlussempfehlung - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Studieneinschlussempfehlung**

## Beispiel ServiceRequest: Studieneinschlussempfehlung

-------

**German**

-------

Profile: [MII PR SE Studieneinschluss Anfrage](StructureDefinition-mii-pr-seltene-studieneinschluss-anfrage.md) version: 2027.0.0-ballot.rc1

**status**: Active

**intent**: Proposal

**category**: Clinical trial (procedure)

**code**: Referral to clinical trial (procedure)

**subject**: [Max Mustermann (official) Male, DoB: 1990-01-01 ( http://test-krankenhaus.de/fhir/sid/patienten#12345)](Patient-mii-exa-seltene-patient.md)

**authoredOn**: 2023-03-28

**note**: 

> 

Pruefung des Einschlusses in eine laufende Studie zur Gentherapie empfohlen.




## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "mii-exa-seltene-studieneinschluss-anfrage",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-studieneinschluss-anfrage|2027.0.0-ballot.rc1"]
  },
  "status" : "active",
  "intent" : "proposal",
  "category" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "110465008",
      "display" : "Clinical trial (procedure)"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "702475000",
      "display" : "Referral to clinical trial (procedure)"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-seltene-patient"
  },
  "authoredOn" : "2023-03-28",
  "note" : [{
    "text" : "Pruefung des Einschlusses in eine laufende Studie zur Gentherapie empfohlen."
  }]
}

```
