# DMD Exon 45-47 Deletion - MolGen Variante - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2026.0.1

## Example Observation: DMD Exon 45-47 Deletion - MolGen Variante

**status**: Final

**category**: Laboratory

**code**: Genetic variant assessment

**subject**: [Max Mustermann Male, DoB: 1990-01-01 ( http://test-krankenhaus.de/fhir/sid/patienten#12345)](Patient-example.md)

**effective**: 2024-09-15

**value**: Positive

> **component****code**: Gene studied [ID]**value**: DMD

> **component****code**: Genomic source class**value**: Germline

> **component****code**: Genomic DNA change (gHGVS)**value**: NC_000023.11:g.31774346_31953400del

> **component****code**: DNA change (c.HGVS)**value**: c.6439-?_6912+?del

> **component****code**: Deleted Exons**value**: Exons 45-47

> **component****code**: Genetic variation clinical significance [Imp]**value**: Pathogenic



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "molgen-variant-dmd-deletion-exon45-47",
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
  "effectiveDateTime" : "2024-09-15",
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
        "code" : "HGNC:2928",
        "display" : "DMD"
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
        "code" : "81290-9",
        "display" : "Genomic DNA change (gHGVS)"
      }]
    },
    "valueCodeableConcept" : {
      "text" : "NC_000023.11:g.31774346_31953400del"
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
      "text" : "c.6439-?_6912+?del"
    }
  },
  {
    "code" : {
      "text" : "Deleted Exons"
    },
    "valueString" : "Exons 45-47"
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
  }]
}

```
