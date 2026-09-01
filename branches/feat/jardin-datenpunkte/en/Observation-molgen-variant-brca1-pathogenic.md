# BRCA1 Pathogene Variante - MolGen - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BRCA1 Pathogene Variante - MolGen**

## Example Observation: BRCA1 Pathogene Variante - MolGen

-------

**English**

-------

**status**: Final

**category**: Laboratory

**code**: Genetic variant assessment

**subject**: [Max Mustermann Male, DoB: 1990-01-01 ( http://test-krankenhaus.de/fhir/sid/patienten#12345)](Patient-example.md)

**effective**: 2024-11-01

**value**: Positive

> **component****code**: Gene studied [ID]**value**: BRCA1

> **component****code**: Genomic source class**value**: Germline

> **component****code**: DNA change (c.HGVS)**value**: c.68_69del

> **component****code**: Amino acid change (pHGVS)**value**: p.Glu23Valfs*17

> **component****code**: Allelic state**value**: Heterozygous

> **component****code**: Genetic variation clinical significance [Imp]**value**: Pathogenic

> **component****code**: ClinVar ID**value**: 17668



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "molgen-variant-brca1-pathogenic",
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "laboratory"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "69548-6",
      "display" : "Genetic variant assessment"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectiveDateTime" : "2024-11-01",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "10828004",
      "display" : "Positive"
    }]
  },
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "48018-6",
        "display" : "Gene studied [ID]"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://www.genenames.org/geneId",
        "code" : "HGNC:1100",
        "display" : "BRCA1"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "48002-0",
        "display" : "Genomic source class"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "LA6683-2",
        "display" : "Germline"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "48004-6",
        "display" : "DNA change (c.HGVS)"
      }]
    },
    "valueCodeableConcept" : {
      "text" : "c.68_69del"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "48005-3",
        "display" : "Amino acid change (pHGVS)"
      }]
    },
    "valueCodeableConcept" : {
      "text" : "p.Glu23Valfs*17"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "53034-5",
        "display" : "Allelic state"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "LA6706-1",
        "display" : "Heterozygous"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "53037-8",
        "display" : "Genetic variation clinical significance [Imp]"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "LA6668-3",
        "display" : "Pathogenic"
      }]
    }
  },
  {
    "code" : {
      "text" : "ClinVar ID"
    },
    "valueString" : "17668"
  }]
}

```
