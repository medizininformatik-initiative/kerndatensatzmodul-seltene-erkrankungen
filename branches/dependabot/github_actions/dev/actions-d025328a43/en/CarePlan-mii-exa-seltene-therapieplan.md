# Therapieplan Example - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Therapieplan Example**

## Example CarePlan: Therapieplan Example

-------

**English**

-------

Profile: [MII PR SE Therapieplan](StructureDefinition-mii-pr-seltene-therapieplan.md) version: 2027.0.0-ballot.rc1

**status**: Draft

**intent**: Proposal

**description**: Therapieplan für den Patienten

**subject**: [Max Mustermann (official) Male, DoB: 1990-01-01 ( http://test-krankenhaus.de/fhir/sid/patienten#12345)](Patient-mii-exa-seltene-patient.md)

**created**: 2023-03-28

> **activity****reference**: [MedicationRequest: status = active; intent = proposal; category = Gentherapie,Kausal; medication[x] = ONASEMNOGENE ABEPARVOVEC; note = Einmalige intravenöse Infusion der Gentherapie](MedicationRequest-mii-exa-seltene-therapieempfehlung-gentherapie-sma.md)

> **activity****reference**: [ServiceRequest Physical therapy procedure](ServiceRequest-mii-exa-seltene-therapieempfehlung-physiotherapie-sma.md)

> **activity****reference**: [ServiceRequest Referral to clinical trial (procedure)](ServiceRequest-mii-exa-seltene-studieneinschluss-anfrage.md)



## Resource Content

```json
{
  "resourceType" : "CarePlan",
  "id" : "mii-exa-seltene-therapieplan",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieplan|2027.0.0-ballot.rc1"]
  },
  "status" : "draft",
  "intent" : "proposal",
  "description" : "Therapieplan für den Patienten",
  "subject" : {
    "reference" : "Patient/mii-exa-seltene-patient"
  },
  "created" : "2023-03-28",
  "activity" : [{
    "reference" : {
      "reference" : "MedicationRequest/mii-exa-seltene-therapieempfehlung-gentherapie-sma"
    }
  },
  {
    "reference" : {
      "reference" : "ServiceRequest/mii-exa-seltene-therapieempfehlung-physiotherapie-sma"
    }
  },
  {
    "reference" : {
      "reference" : "ServiceRequest/mii-exa-seltene-studieneinschluss-anfrage"
    }
  }]
}

```
