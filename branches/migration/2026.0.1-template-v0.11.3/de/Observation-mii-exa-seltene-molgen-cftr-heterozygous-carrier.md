# CFTR F508del - heterozygoter Anlagetraeger - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **CFTR F508del - heterozygoter Anlagetraeger**

## Beispiel Observation: CFTR F508del - heterozygoter Anlagetraeger

-------

**German**

-------

**status**: Final

**category**: Laboratory

**code**: Genetic variant assessment

**subject**: [Max Mustermann (official) Male, DoB: 1990-01-01 ( http://test-krankenhaus.de/fhir/sid/patienten#12345)](Patient-mii-exa-seltene-patient.md)

**effective**: 2024-08-25

**value**: Positive

**note**: 

> 

Heterozygoter Anlagetraeger fuer F508del. Eine zweite CFTR-Mutation wurde bei vollstaendiger Genanalyse nicht gefunden. Mukoviszidose damit ausgeschlossen; die IRT-Erhoehung im Screening war transient.


> **component****code**: Gene studied [ID]**value**: CFTR

> **component****code**: Genomic source class**value**: Germline

> **component****code**: DNA change (c.HGVS)**value**: c.1521_1523del

> **component****code**: Amino acid change (pHGVS)**value**: p.Phe508del

> **component****code**: Allelic state**value**: Heterozygous



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-seltene-molgen-cftr-heterozygous-carrier",
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
    "reference" : "Patient/mii-exa-seltene-patient"
  },
  "effectiveDateTime" : "2024-08-25",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "10828004",
      "display" : "Positive"
    }]
  },
  "note" : [{
    "text" : "Heterozygoter Anlagetraeger fuer F508del. Eine zweite CFTR-Mutation wurde bei vollstaendiger Genanalyse nicht gefunden. Mukoviszidose damit ausgeschlossen; die IRT-Erhoehung im Screening war transient."
  }],
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
        "code" : "HGNC:1884",
        "display" : "CFTR"
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
      "text" : "c.1521_1523del"
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
      "text" : "p.Phe508del"
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
  }]
}

```
