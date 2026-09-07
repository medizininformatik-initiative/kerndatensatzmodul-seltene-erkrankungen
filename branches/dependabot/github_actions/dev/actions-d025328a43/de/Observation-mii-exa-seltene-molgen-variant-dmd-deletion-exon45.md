# DMD Exon 45 Deletion - MolGen Variante - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **DMD Exon 45 Deletion - MolGen Variante**

## Beispiel Observation: DMD Exon 45 Deletion - MolGen Variante

-------

**German**

-------

**status**: Final

**category**: Laboratory

**code**: Genetic variant assessment

**subject**: [Max Mustermann (official) Male, DoB: 1990-01-01 ( http://test-krankenhaus.de/fhir/sid/patienten#12345)](Patient-mii-exa-seltene-patient.md)

**effective**: 2024-09-15

**value**: Positive

**note**: 

> 

Deletion des Exons 45 (176 Basen, nicht durch drei teilbar). Das Leseraster verschiebt sich, es entsteht ein vorzeitiges Stopcodon und kein funktionsfaehiges Dystrophin. Duchenne-Muskeldystrophie.


> **component****code**: Gene studied [ID]**value**: DMD

> **component****code**: Genomic source class**value**: Germline

> **component****code**: Deleted Exons**value**: Exon 45

> **component****code**: Genetic variation clinical significance [Imp]**value**: Pathogenic



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-seltene-molgen-variant-dmd-deletion-exon45",
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
  "effectiveDateTime" : "2024-09-15",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "10828004",
      "display" : "Positive"
    }]
  },
  "note" : [{
    "text" : "Deletion des Exons 45 (176 Basen, nicht durch drei teilbar). Das Leseraster verschiebt sich, es entsteht ein vorzeitiges Stopcodon und kein funktionsfaehiges Dystrophin. Duchenne-Muskeldystrophie."
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
      "text" : "Deleted Exons"
    },
    "valueString" : "Exon 45"
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
