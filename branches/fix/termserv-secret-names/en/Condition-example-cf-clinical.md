# Mukoviszidose - Klinischer Verdacht - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mukoviszidose - Klinischer Verdacht**

## Example Condition: Mukoviszidose - Klinischer Verdacht

-------

**English**

-------

Profile: [https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis|2026.0.1](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis|2026.0.1)

**Condition Asserted Date**: 2024-08-10

**clinicalStatus**: Active

**verificationStatus**: Provisional

**category**: Encounter Diagnosis

**code**: Cystic fibrosis

**subject**: [Max Mustermann Male, DoB: 1990-01-01 ( http://test-krankenhaus.de/fhir/sid/patienten#12345)](Patient-example.md)

**recordedDate**: 2024-08-10

> **evidence****code**: Asthma**detail**: [Observation Asthma](Observation-recurrent-respiratory-infections.md)

> **evidence****code**: Chronic diarrhea**detail**: [Observation Chronic diarrhea](Observation-chronic-diarrhea.md)

> **evidence****code**: Failure to thrive**detail**: [Observation Failure to thrive](Observation-failure-to-thrive.md)

**note**: 

> 

Schweißtest positiv (Chlorid 85 mmol/l). Klinisches Bild vereinbar mit CF. Genetische Testung veranlasst.




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "example-cf-clinical",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis|2026.0.1"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/condition-assertedDate",
    "valueDateTime" : "2024-08-10"
  }],
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "code" : "active"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
      "code" : "provisional"
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
      "code" : "219700",
      "display" : "Cystic fibrosis"
    },
    {
      "system" : "http://www.orpha.net",
      "code" : "586",
      "display" : "Cystic fibrosis"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "recordedDate" : "2024-08-10",
  "evidence" : [{
    "code" : [{
      "coding" : [{
        "system" : "http://human-phenotype-ontology.org",
        "code" : "HP:0002099",
        "display" : "Asthma"
      }]
    }],
    "detail" : [{
      "reference" : "Observation/recurrent-respiratory-infections"
    }]
  },
  {
    "code" : [{
      "coding" : [{
        "system" : "http://human-phenotype-ontology.org",
        "code" : "HP:0002028",
        "display" : "Chronic diarrhea"
      }]
    }],
    "detail" : [{
      "reference" : "Observation/chronic-diarrhea"
    }]
  },
  {
    "code" : [{
      "coding" : [{
        "system" : "http://human-phenotype-ontology.org",
        "code" : "HP:0001508",
        "display" : "Failure to thrive"
      }]
    }],
    "detail" : [{
      "reference" : "Observation/failure-to-thrive"
    }]
  }],
  "note" : [{
    "text" : "Schweißtest positiv (Chlorid 85 mmol/l). Klinisches Bild vereinbar mit CF. Genetische Testung veranlasst."
  }]
}

```
