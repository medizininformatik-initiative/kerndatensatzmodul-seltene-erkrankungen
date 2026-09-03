# Beispiel Einwilligung zur Registerteilnahme - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Beispiel Einwilligung zur Registerteilnahme**

## Beispiel Consent: Beispiel Einwilligung zur Registerteilnahme

-------

**German**

-------

## Participants

* **Role**: Patient
  * **Details**: [Anonymous Patient Female, DoB: 2024-07-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#SMA-2024-001)](Patient-patient-sma-001.md)

This consent is made under the regulation Common Rule Informed Consent .

The subject has given their consent.



## Resource Content

```json
{
  "resourceType" : "Consent",
  "id" : "mii-exa-seltene-register-einwilligung",
  "status" : "active",
  "scope" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/consentscope",
      "code" : "research"
    }]
  },
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/consentcategorycodes",
      "code" : "research"
    }]
  }],
  "patient" : {
    "reference" : "Patient/patient-sma-001"
  },
  "dateTime" : "2024-08-15",
  "policyRule" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/consentpolicycodes",
      "code" : "cric"
    }]
  }
}

```
