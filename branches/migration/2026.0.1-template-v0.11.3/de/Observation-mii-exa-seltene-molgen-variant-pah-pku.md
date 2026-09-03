# PAH c.1222C>T - MolGen Variante - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **PAH c.1222C>T - MolGen Variante**

## Beispiel Observation: PAH c.1222C>T - MolGen Variante

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

Homozygote pathogene PAH-Variante. Klassische Phenylketonurie; diaetetische Therapie indiziert.


> **component****code**: Gene studied [ID]**value**: PAH

> **component****code**: Genomic source class**value**: Germline

> **component****code**: DNA change (c.HGVS)**value**: c.1222C>T

> **component****code**: Amino acid change (pHGVS)**value**: p.Arg408Trp

> **component****code**: Allelic state**value**: Homozygous

> **component****code**: Genetic variation clinical significance [Imp]**value**: Pathogenic



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-seltene-molgen-variant-pah-pku",
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
    "text" : "Homozygote pathogene PAH-Variante. Klassische Phenylketonurie; diaetetische Therapie indiziert."
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
        "code" : "HGNC:8582",
        "display" : "PAH"
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
      "text" : "c.1222C>T"
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
      "text" : "p.Arg408Trp"
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
        "code" : "LA6705-3",
        "display" : "Homozygous"
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
  }]
}

```
