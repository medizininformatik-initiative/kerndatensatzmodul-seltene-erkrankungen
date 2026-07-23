# HPO Assessment - Excluded Phenotype - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2026.0.1

## Example Observation: HPO Assessment - Excluded Phenotype

Profile: [MII Profile SE HPO Assessment](StructureDefinition-mii-pr-seltene-hpo-assessment.md) version: 2026.0.1

**status**: Final

**code**: Arachnodactyly

**subject**: [Patient/example-patient](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/example-patient)

**effective**: 2024-01-15

**note**: 

> 

Arachnodactyly explicitly excluded during clinical examination. Arm span/height ratio within normal limits. Demonstrates HL7 Phenomics IG pattern for excluded phenotypes.


### Components

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | Presence findings | Absent |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-seltene-hpo-assessment-excluded",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment|2026.0.1"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://human-phenotype-ontology.org",
      "code" : "HP:0001166",
      "display" : "Arachnodactyly"
    }]
  },
  "subject" : {
    "reference" : "Patient/example-patient"
  },
  "effectiveDateTime" : "2024-01-15",
  "note" : [{
    "text" : "Arachnodactyly explicitly excluded during clinical examination. Arm span/height ratio within normal limits. Demonstrates HL7 Phenomics IG pattern for excluded phenotypes."
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "260411009",
        "display" : "Presence findings"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "LA9634-2",
        "display" : "Absent"
      }]
    }
  }]
}

```
