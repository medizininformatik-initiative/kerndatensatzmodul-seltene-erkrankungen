# Familienanamnese - Urgroßmutter mit Muskelerkrankung - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Familienanamnese - Urgroßmutter mit Muskelerkrankung**

## Example FamilyMemberHistory: Familienanamnese - Urgroßmutter mit Muskelerkrankung

-------

**English**

-------

Profile: [MII PR SE Familienanamnese](StructureDefinition-mii-pr-seltene-familienanamnese.md) version: 2027.0.0-ballot.rc1

**VonSEBetroffen**: Unknown

**status**: Completed

**patient**: [Anonymous Patient Female, DoB: 2024-07-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#SMA-2024-001)](Patient-patient-sma-001.md)

**date**: 2024-07-22

**relationship**: Great grandmother

### Conditions

| | |
| :--- | :--- |
| - | **Code** |
| * | Unbekannte Muskelerkrankung |



## Resource Content

```json
{
  "resourceType" : "FamilyMemberHistory",
  "id" : "family-history-001",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-familienanamnese|2027.0.0-ballot.rc1"]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-von-se-betroffen",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "261665006",
        "display" : "Unknown"
      }]
    }
  }],
  "status" : "completed",
  "patient" : {
    "reference" : "Patient/patient-sma-001"
  },
  "date" : "2024-07-22",
  "relationship" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "78652007",
      "display" : "Great grandmother"
    }]
  },
  "condition" : [{
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "129565002",
        "display" : "Disorder of muscle"
      }],
      "text" : "Unbekannte Muskelerkrankung"
    }
  }]
}

```
