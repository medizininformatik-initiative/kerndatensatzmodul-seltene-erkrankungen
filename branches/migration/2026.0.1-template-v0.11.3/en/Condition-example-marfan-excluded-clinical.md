# Marfan-Syndrom - Klinisch ausgeschlossen - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Marfan-Syndrom - Klinisch ausgeschlossen**

## Example Condition: Marfan-Syndrom - Klinisch ausgeschlossen

-------

**English**

-------

Profile: [https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis|2026.0.1](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis|2026.0.1)

**Condition Asserted Date**: 2024-12-15

**clinicalStatus**: Inactive

**verificationStatus**: Refuted

**category**: Encounter Diagnosis

**code**: Marfan-Syndrom (ausgeschlossen)

**subject**: [Max Mustermann Male, DoB: 1990-01-01 ( http://test-krankenhaus.de/fhir/sid/patienten#12345)](Patient-example.md)

**encounter**: [Encounter/cardiology-consultation](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Encounter/cardiology-consultation)

**abatement**: 2024-12-15

**recordedDate**: 2024-12-15

> **evidence****code**: Normale Aortenwurzel**detail**: [Observation Aorta root Diameter by US 2D](Observation-aortic-root-normal.md)

> **evidence****code**: Keine Linsenluxation**detail**: [Observation/lens-examination-normal](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Observation/lens-examination-normal)

**note**: 

> 

Marfan-Syndrom klinisch ausgeschlossen. Ghent-Kriterien nicht erfüllt. Aortenwurzel normwertig, keine ophthalmologischen Manifestationen, Körpergröße im Normbereich.




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "example-marfan-excluded-clinical",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis|2026.0.1"]
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
    "reference" : "Patient/example"
  },
  "encounter" : {
    "reference" : "Encounter/cardiology-consultation"
  },
  "abatementDateTime" : "2024-12-15",
  "recordedDate" : "2024-12-15",
  "evidence" : [{
    "code" : [{
      "text" : "Normale Aortenwurzel"
    }],
    "detail" : [{
      "reference" : "Observation/aortic-root-normal"
    }]
  },
  {
    "code" : [{
      "text" : "Keine Linsenluxation"
    }],
    "detail" : [{
      "reference" : "Observation/lens-examination-normal"
    }]
  }],
  "note" : [{
    "text" : "Marfan-Syndrom klinisch ausgeschlossen. Ghent-Kriterien nicht erfüllt. Aortenwurzel normwertig, keine ophthalmologischen Manifestationen, Körpergröße im Normbereich."
  }]
}

```
