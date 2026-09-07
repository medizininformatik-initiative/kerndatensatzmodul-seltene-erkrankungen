# Marfan-Syndrom - Klinisch ausgeschlossen - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Marfan-Syndrom - Klinisch ausgeschlossen**

## Beispiel Condition: Marfan-Syndrom - Klinisch ausgeschlossen

-------

**German**

-------

Profile: [MII PR SE Clinical Diagnosis](StructureDefinition-mii-pr-seltene-clinical-diagnosis.md) version: 2027.0.0-ballot.rc1

**Condition Asserted Date**: 2024-12-15

**clinicalStatus**: Inactive

**verificationStatus**: Refuted

**category**: Encounter Diagnosis

**code**: Marfan-Syndrom (ausgeschlossen)

**subject**: [Max Mustermann (official) Male, DoB: 1990-01-01 ( http://test-krankenhaus.de/fhir/sid/patienten#12345)](Patient-mii-exa-seltene-patient.md)

**encounter**: [Encounter: status = finished; class = ambulatory (ActCode#AMB); type = Seen in cardiac clinic (finding); period = 2024-12-15 --> 2024-12-15](Encounter-mii-exa-seltene-encounter-cardiology-consultation.md)

**abatement**: 2024-12-15

**recordedDate**: 2024-12-15

> **evidence****code**: Normale Aortenwurzel**detail**: [Observation Aorta root Diameter by US 2D](Observation-mii-exa-seltene-aortic-root-normal.md)

> **evidence****code**: Keine Linsenluxation**detail**: [Observation Ectopia lentis](Observation-mii-exa-seltene-lens-examination-normal.md)

**note**: 

> 

Marfan-Syndrom klinisch ausgeschlossen. Ghent-Kriterien nicht erfüllt. Aortenwurzel normwertig, keine ophthalmologischen Manifestationen, Körpergröße im Normbereich.




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "mii-exa-seltene-example-marfan-excluded-clinical",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis|2027.0.0-ballot.rc1"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/condition-assertedDate",
    "valueDateTime" : "2024-12-15"
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
      "system" : "http://omim.org",
      "version" : "2024",
      "code" : "154700",
      "display" : "Marfan syndrome"
    },
    {
      "system" : "http://www.orpha.net",
      "code" : "558",
      "display" : "Marfan syndrome"
    }],
    "text" : "Marfan-Syndrom (ausgeschlossen)"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-seltene-patient"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-seltene-encounter-cardiology-consultation"
  },
  "abatementDateTime" : "2024-12-15",
  "recordedDate" : "2024-12-15",
  "evidence" : [{
    "code" : [{
      "text" : "Normale Aortenwurzel"
    }],
    "detail" : [{
      "reference" : "Observation/mii-exa-seltene-aortic-root-normal"
    }]
  },
  {
    "code" : [{
      "text" : "Keine Linsenluxation"
    }],
    "detail" : [{
      "reference" : "Observation/mii-exa-seltene-lens-examination-normal"
    }]
  }],
  "note" : [{
    "text" : "Marfan-Syndrom klinisch ausgeschlossen. Ghent-Kriterien nicht erfüllt. Aortenwurzel normwertig, keine ophthalmologischen Manifestationen, Körpergröße im Normbereich."
  }]
}

```
