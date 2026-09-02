# Ehlers-Danlos-Syndrom - Ausgeschlossen - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ehlers-Danlos-Syndrom - Ausgeschlossen**

## Example Condition: Ehlers-Danlos-Syndrom - Ausgeschlossen

-------

**English**

-------

Profile: [https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis|2026.0.1](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis|2026.0.1)

**Condition Asserted Date**: 2024-11-20

**clinicalStatus**: Inactive

**verificationStatus**: Refuted

**category**: Encounter Diagnosis

**code**: Ehlers-Danlos-Syndrom (ausgeschlossen)

**subject**: [Max Mustermann Male, DoB: 1990-01-01 ( http://test-krankenhaus.de/fhir/sid/patienten#12345)](Patient-example.md)

**abatement**: 2024-11-20

**recordedDate**: 2024-11-20

### Evidences

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Detail** |
| * | Beighton-Score niedrig | [Observation/beighton-score-low](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=http://fhir.org/packages/de.basisprofil.r4/Observation/beighton-score-low) |

**note**: 

> 

EDS als Differentialdiagnose ausgeschlossen. Beighton-Score 2/9, keine Hauthyperextensibilität, keine atrophen Narben.




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "example-eds-excluded-clinical",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis|2026.0.1"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/condition-assertedDate",
    "valueDateTime" : "2024-11-20"
  }],
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "code" : "inactive"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
      "code" : "refuted"
    }]
  },
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
      "code" : "encounter-diagnosis"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "version" : "2024",
      "code" : "Q79.6",
      "display" : "Ehlers-Danlos-Syndrom"
    },
    {
      "system" : "http://www.orpha.net",
      "code" : "98249",
      "display" : "Ehlers-Danlos syndrome"
    }],
    "text" : "Ehlers-Danlos-Syndrom (ausgeschlossen)"
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "abatementDateTime" : "2024-11-20",
  "recordedDate" : "2024-11-20",
  "evidence" : [{
    "code" : [{
      "text" : "Beighton-Score niedrig"
    }],
    "detail" : [{
      "reference" : "Observation/beighton-score-low"
    }]
  }],
  "note" : [{
    "text" : "EDS als Differentialdiagnose ausgeschlossen. Beighton-Score 2/9, keine Hauthyperextensibilität, keine atrophen Narben."
  }]
}

```
