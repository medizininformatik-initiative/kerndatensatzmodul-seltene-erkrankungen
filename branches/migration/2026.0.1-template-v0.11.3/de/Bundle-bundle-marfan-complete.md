# Marfan-Syndrom Fallbeispiel - Vollständiges Transaction Bundle - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Marfan-Syndrom Fallbeispiel - Vollständiges Transaction Bundle**

## Beispiel Bundle: Marfan-Syndrom Fallbeispiel - Vollständiges Transaction Bundle



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "bundle-marfan-complete",
  "type" : "transaction",
  "timestamp" : "2024-12-15T14:00:00Z",
  "entry" : [{
    "fullUrl" : "urn:uuid:546740dd-771d-41e4-a2a5-e8d6a2b5c505",
    "resource" : {
      "resourceType" : "Patient",
      "id" : "patient-marfan-001",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Patient_patient-marfan-001\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Patient patient-marfan-001</b></p><a name=\"patient-marfan-001\"> </a><a name=\"hcpatient-marfan-001\"> </a><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Anonymous Patient Male, DoB: 2005-01-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#MRF-2024-001)</p><hr/></div></div>"
      },
      "identifier" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/sid/patient-id",
        "value" : "MRF-2024-001"
      }],
      "gender" : "male",
      "birthDate" : "2005-01-01"
    },
    "request" : {
      "method" : "POST",
      "url" : "Patient"
    }
  },
  {
    "fullUrl" : "urn:uuid:12b18efe-aae8-4039-9e2c-466ee0cb0ce0",
    "resource" : {
      "resourceType" : "Condition",
      "id" : "condition-marfan-suspected",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis|2026.0.1"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Condition_condition-marfan-suspected\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition condition-marfan-suspected</b></p><a name=\"condition-marfan-suspected\"> </a><a name=\"hccondition-marfan-suspected\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis|2026.0.1\">https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis|2026.0.1</a></p></div><p><b>Condition Asserted Date</b>: 2024-12-10</p><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status provisional}\">Provisional</span></p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-category encounter-diagnosis}\">Encounter Diagnosis</span></p><p><b>code</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/icd-10-gm Q87.4}, {http://snomed.info/sct 19346006}, {http://www.orpha.net 558}\">Verdacht auf Marfan-Syndrom</span></p><p><b>subject</b>: <a href=\"Patient-patient-marfan-001.html\">Anonymous Patient Male, DoB: 2005-01-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#MRF-2024-001)</a></p><p><b>recordedDate</b>: 2024-12-10</p><p><b>note</b>: </p><blockquote><div><p>Verdacht auf Marfan-Syndrom aufgrund klinischer Präsentation</p>\n</div></blockquote></div></div>"
      },
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/condition-assertedDate",
        "valueDateTime" : "2024-12-10"
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
          "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
          "version" : "2024",
          "code" : "Q87.4",
          "display" : "Marfan-Syndrom"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "19346006",
          "display" : "Marfan syndrome"
        },
        {
          "system" : "http://www.orpha.net",
          "code" : "558",
          "display" : "Marfan syndrome"
        }],
        "text" : "Verdacht auf Marfan-Syndrom"
      },
      "subject" : {
        "reference" : "Patient/patient-marfan-001"
      },
      "recordedDate" : "2024-12-10",
      "note" : [{
        "text" : "Verdacht auf Marfan-Syndrom aufgrund klinischer Präsentation"
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Condition"
    }
  },
  {
    "fullUrl" : "urn:uuid:6842a03b-9adc-4cb7-9126-85d317203e7b",
    "resource" : {
      "resourceType" : "Condition",
      "id" : "condition-marfan-clinical",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis|2026.0.1"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Condition_condition-marfan-clinical\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition condition-marfan-clinical</b></p><a name=\"condition-marfan-clinical\"> </a><a name=\"hccondition-marfan-clinical\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis|2026.0.1\">https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis|2026.0.1</a></p></div><p><b>Condition Asserted Date</b>: 2024-12-15</p><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-category encounter-diagnosis}\">Encounter Diagnosis</span></p><p><b>code</b>: <span title=\"Codes:{http://omim.org 154700}, {http://snomed.info/sct 19346006}, {http://www.orpha.net 558}\">Marfan-Syndrom</span></p><p><b>subject</b>: <a href=\"Patient-patient-marfan-001.html\">Anonymous Patient Male, DoB: 2005-01-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#MRF-2024-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-encounter-cardiology.html\">Encounter: status = finished; class = ambulatory (ActCode#AMB); type = Seen in cardiac clinic (finding); period = 2024-12-15 --&gt; 2024-12-15; reasonCode = Chest pain</a></p><p><b>recordedDate</b>: 2024-12-15</p><blockquote><p><b>evidence</b></p><p><b>code</b>: <span title=\"Codes:{http://human-phenotype-ontology.org HP:0002616}\">Aortic root aneurysm</span></p><p><b>detail</b>: <a href=\"Observation-symptom-aortic-root.html\">Observation Aortic root aneurysm</a></p></blockquote><blockquote><p><b>evidence</b></p><p><b>code</b>: <span title=\"Codes:{http://human-phenotype-ontology.org HP:0001659}\">Aortic regurgitation</span></p><p><b>detail</b>: <a href=\"Observation-symptom-aortic-regurg.html\">Observation Aortic regurgitation</a></p></blockquote><blockquote><p><b>evidence</b></p><p><b>code</b>: <span title=\"Codes:{http://human-phenotype-ontology.org HP:0001653}\">Mitral regurgitation</span></p><p><b>detail</b>: <a href=\"Observation-symptom-mitral-regurg.html\">Observation Mitral regurgitation</a></p></blockquote><blockquote><p><b>evidence</b></p><p><b>code</b>: <span title=\"Codes:{http://human-phenotype-ontology.org HP:0000098}\">Tall stature</span></p><p><b>detail</b>: <a href=\"Observation-observation-height-001.html\">Observation Body height</a></p></blockquote><blockquote><p><b>evidence</b></p><p><b>code</b>: <span title=\"Codes:{http://human-phenotype-ontology.org HP:0100559}\">Lower limb asymmetry</span></p><p><b>detail</b>: <a href=\"Observation-observation-leg-asymmetry.html\">Observation Leg length discrepancy</a></p></blockquote><blockquote><p><b>evidence</b></p><p><b>code</b>: <span title=\"Codes:{http://human-phenotype-ontology.org HP:0100749}\">Chest pain</span></p><p><b>detail</b>: <a href=\"Observation-symptom-chest-pain.html\">Observation Chest pain</a></p></blockquote><p><b>note</b>: </p><blockquote><div><p>Marfan-Syndrom klinisch diagnostiziert basierend auf kardialen Befunden, Skelettmerkmalen und ophthalmologischer Manifestation</p>\n</div></blockquote></div></div>"
      },
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/condition-assertedDate",
        "valueDateTime" : "2024-12-15"
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
          "code" : "confirmed"
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
          "system" : "http://snomed.info/sct",
          "code" : "19346006",
          "display" : "Marfan syndrome"
        },
        {
          "system" : "http://www.orpha.net",
          "code" : "558",
          "display" : "Marfan syndrome"
        }],
        "text" : "Marfan-Syndrom"
      },
      "subject" : {
        "reference" : "Patient/patient-marfan-001"
      },
      "encounter" : {
        "reference" : "Encounter/encounter-cardiology"
      },
      "recordedDate" : "2024-12-15",
      "evidence" : [{
        "code" : [{
          "coding" : [{
            "system" : "http://human-phenotype-ontology.org",
            "code" : "HP:0002616",
            "display" : "Aortic root aneurysm"
          }]
        }],
        "detail" : [{
          "reference" : "Observation/symptom-aortic-root"
        }]
      },
      {
        "code" : [{
          "coding" : [{
            "system" : "http://human-phenotype-ontology.org",
            "code" : "HP:0001659",
            "display" : "Aortic regurgitation"
          }]
        }],
        "detail" : [{
          "reference" : "Observation/symptom-aortic-regurg"
        }]
      },
      {
        "code" : [{
          "coding" : [{
            "system" : "http://human-phenotype-ontology.org",
            "code" : "HP:0001653",
            "display" : "Mitral regurgitation"
          }]
        }],
        "detail" : [{
          "reference" : "Observation/symptom-mitral-regurg"
        }]
      },
      {
        "code" : [{
          "coding" : [{
            "system" : "http://human-phenotype-ontology.org",
            "code" : "HP:0000098",
            "display" : "Tall stature"
          }]
        }],
        "detail" : [{
          "reference" : "Observation/observation-height-001"
        }]
      },
      {
        "code" : [{
          "coding" : [{
            "system" : "http://human-phenotype-ontology.org",
            "code" : "HP:0100559",
            "display" : "Lower limb asymmetry"
          }]
        }],
        "detail" : [{
          "reference" : "Observation/observation-leg-asymmetry"
        }]
      },
      {
        "code" : [{
          "coding" : [{
            "system" : "http://human-phenotype-ontology.org",
            "code" : "HP:0100749",
            "display" : "Chest pain"
          }]
        }],
        "detail" : [{
          "reference" : "Observation/symptom-chest-pain"
        }]
      }],
      "note" : [{
        "text" : "Marfan-Syndrom klinisch diagnostiziert basierend auf kardialen Befunden, Skelettmerkmalen und ophthalmologischer Manifestation"
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Condition"
    }
  },
  {
    "fullUrl" : "urn:uuid:23bd27f8-f2b5-4bc9-8fa3-078c26bc64a2",
    "resource" : {
      "resourceType" : "Condition",
      "id" : "condition-marfan-genetic",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-genetic-diagnosis|2026.0.1"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Condition_condition-marfan-genetic\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition condition-marfan-genetic</b></p><a name=\"condition-marfan-genetic\"> </a><a name=\"hccondition-marfan-genetic\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-genetic-diagnosis|2026.0.1\">https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-genetic-diagnosis|2026.0.1</a></p></div><p><b>Condition Asserted Date</b>: 2024-12-20</p><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>category</b>: <span title=\"Codes:{http://snomed.info/sct 782964007}\">Genetic disease</span></p><p><b>code</b>: <span title=\"Codes:{http://omim.org 154700}, {http://snomed.info/sct 19346006}, {http://www.orpha.net 558}\">Marfan-Syndrom - genetisch bestätigt</span></p><p><b>subject</b>: <a href=\"Patient-patient-marfan-001.html\">Anonymous Patient Male, DoB: 2005-01-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#MRF-2024-001)</a></p><p><b>recordedDate</b>: 2024-12-20</p><h3>Evidences</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Code</b></td><td><b>Detail</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://snomed.info/sct 106221001}\">Genetic finding</span></td><td><a href=\"Observation-variant-fbn1-001.html\">Observation Genetic analysis master panel</a></td></tr></table><p><b>note</b>: </p><blockquote><div><p>FBN1-Mutation c.3217G&gt;A (p.Gly1073Arg) nachgewiesen, krankheitsursächlich. Genetische Diagnose existiert parallel zur klinischen Diagnose.</p>\n</div></blockquote></div></div>"
      },
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/condition-assertedDate",
        "valueDateTime" : "2024-12-20"
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
          "code" : "confirmed"
        }]
      },
      "category" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "782964007",
          "display" : "Genetic disease"
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
          "system" : "http://snomed.info/sct",
          "code" : "19346006",
          "display" : "Marfan syndrome"
        },
        {
          "system" : "http://www.orpha.net",
          "code" : "558",
          "display" : "Marfan syndrome"
        }],
        "text" : "Marfan-Syndrom - genetisch bestätigt"
      },
      "subject" : {
        "reference" : "Patient/patient-marfan-001"
      },
      "recordedDate" : "2024-12-20",
      "evidence" : [{
        "code" : [{
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "106221001",
            "display" : "Genetic finding"
          }]
        }],
        "detail" : [{
          "reference" : "Observation/variant-fbn1-001"
        }]
      }],
      "note" : [{
        "text" : "FBN1-Mutation c.3217G>A (p.Gly1073Arg) nachgewiesen, krankheitsursächlich. Genetische Diagnose existiert parallel zur klinischen Diagnose."
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Condition"
    }
  },
  {
    "fullUrl" : "urn:uuid:f584ef12-6225-4e71-9186-68528f68e07d",
    "resource" : {
      "resourceType" : "Condition",
      "id" : "condition-cataract",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis|2026.0.1"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Condition_condition-cataract\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition condition-cataract</b></p><a name=\"condition-cataract\"> </a><a name=\"hccondition-cataract\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis|2026.0.1\">https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis|2026.0.1</a></p></div><p><b>Condition Asserted Date</b>: 2024-10-15</p><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical resolved}\">Resolved</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-category encounter-diagnosis}\">Encounter Diagnosis</span></p><p><b>code</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/icd-10-gm H26.9}, {http://snomed.info/sct 193570009}, {http://human-phenotype-ontology.org HP:0000518}\">Katarakt bilateral</span></p><p><b>subject</b>: <a href=\"Patient-patient-marfan-001.html\">Anonymous Patient Male, DoB: 2005-01-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#MRF-2024-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-encounter-ophthalmology.html\">Encounter: status = finished; class = ambulatory (ActCode#AMB); type = Ophthalmic examination and evaluation; period = 2024-10-15 --&gt; 2024-10-15</a></p><p><b>abatement</b>: 2024-11-12</p><p><b>recordedDate</b>: 2024-10-15</p><h3>Evidences</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Code</b></td><td><b>Detail</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://human-phenotype-ontology.org HP:0000518}\">Cataract</span></td><td><a href=\"Observation-symptom-cataract.html\">Observation Cataract</a></td></tr></table><p><b>note</b>: </p><blockquote><div><p>Katarakt bilateral, operativ versorgt</p>\n</div></blockquote></div></div>"
      },
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/condition-assertedDate",
        "valueDateTime" : "2024-10-15"
      }],
      "clinicalStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
          "code" : "resolved"
        }]
      },
      "verificationStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
          "code" : "confirmed"
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
          "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
          "version" : "2024",
          "code" : "H26.9",
          "display" : "Katarakt, nicht näher bezeichnet"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "193570009",
          "display" : "Cataract"
        },
        {
          "system" : "http://human-phenotype-ontology.org",
          "code" : "HP:0000518",
          "display" : "Cataract"
        }],
        "text" : "Katarakt bilateral"
      },
      "subject" : {
        "reference" : "Patient/patient-marfan-001"
      },
      "encounter" : {
        "reference" : "Encounter/encounter-ophthalmology"
      },
      "abatementDateTime" : "2024-11-12",
      "recordedDate" : "2024-10-15",
      "evidence" : [{
        "code" : [{
          "coding" : [{
            "system" : "http://human-phenotype-ontology.org",
            "code" : "HP:0000518",
            "display" : "Cataract"
          }]
        }],
        "detail" : [{
          "reference" : "Observation/symptom-cataract"
        }]
      }],
      "note" : [{
        "text" : "Katarakt bilateral, operativ versorgt"
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Condition"
    }
  },
  {
    "fullUrl" : "urn:uuid:72fa4681-014d-4caa-86a3-97cea92766f4",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "observation-height-001",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Observation_observation-height-001\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation observation-height-001</b></p><a name=\"observation-height-001\"> </a><a name=\"hcobservation-height-001\"> </a><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category vital-signs}\">Vital Signs</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 8302-2}\">Body height</span></p><p><b>subject</b>: <a href=\"Patient-patient-marfan-001.html\">Anonymous Patient Male, DoB: 2005-01-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#MRF-2024-001)</a></p><p><b>effective</b>: 2024-12-15</p><p><b>value</b>: 213 cm<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codecm = 'cm')</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation H}\">High</span></p><p><b>bodySite</b>: <span title=\"Codes:{http://snomed.info/sct 38266002}\">Entire body as a whole</span></p><h3>Components</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Code</b></td><td><b>Value[x]</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://human-phenotype-ontology.org HP:0000098}\">Tall stature</span></td><td>Pathologischer Hochwuchs &gt;99. Perzentile</td></tr></table></div></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "vital-signs"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "8302-2",
          "display" : "Body height"
        }]
      },
      "subject" : {
        "reference" : "Patient/patient-marfan-001"
      },
      "effectiveDateTime" : "2024-12-15",
      "valueQuantity" : {
        "value" : 213,
        "unit" : "cm",
        "system" : "http://unitsofmeasure.org",
        "code" : "cm"
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "H",
          "display" : "High"
        }]
      }],
      "bodySite" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "38266002",
          "display" : "Entire body as a whole"
        }]
      },
      "component" : [{
        "code" : {
          "coding" : [{
            "system" : "http://human-phenotype-ontology.org",
            "code" : "HP:0000098",
            "display" : "Tall stature"
          }]
        },
        "valueString" : "Pathologischer Hochwuchs >99. Perzentile"
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Observation"
    }
  },
  {
    "fullUrl" : "urn:uuid:9dfa4ddc-723f-4c65-b86d-1a88304e77fe",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "observation-leg-asymmetry",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Observation_observation-leg-asymmetry\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation observation-leg-asymmetry</b></p><a name=\"observation-leg-asymmetry\"> </a><a name=\"hcobservation-leg-asymmetry\"> </a><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category exam}\">Exam</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 707738004}\">Leg length discrepancy</span></p><p><b>subject</b>: <a href=\"Patient-patient-marfan-001.html\">Anonymous Patient Male, DoB: 2005-01-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#MRF-2024-001)</a></p><p><b>effective</b>: 2024-12-15</p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 7771000}\">Left</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation A}\">Abnormal</span></p><p><b>bodySite</b>: <span title=\"Codes:{http://snomed.info/sct 30021000}\">Lower leg structure</span></p><h3>Components</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Code</b></td><td><b>Value[x]</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://human-phenotype-ontology.org HP:0100559}\">Lower limb asymmetry</span></td><td>Rechtes Bein verkürzt</td></tr></table></div></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "exam"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "707738004",
          "display" : "Leg length discrepancy"
        }]
      },
      "subject" : {
        "reference" : "Patient/patient-marfan-001"
      },
      "effectiveDateTime" : "2024-12-15",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "7771000",
          "display" : "Left"
        }]
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "A",
          "display" : "Abnormal"
        }]
      }],
      "bodySite" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "30021000",
          "display" : "Lower leg structure"
        }]
      },
      "component" : [{
        "code" : {
          "coding" : [{
            "system" : "http://human-phenotype-ontology.org",
            "code" : "HP:0100559",
            "display" : "Lower limb asymmetry"
          }]
        },
        "valueString" : "Rechtes Bein verkürzt"
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Observation"
    }
  },
  {
    "fullUrl" : "urn:uuid:b5f66545-2f6e-450c-a92e-8e9d2626e003",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "symptom-chest-pain",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Observation_symptom-chest-pain\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation symptom-chest-pain</b></p><a name=\"symptom-chest-pain\"> </a><a name=\"hcsymptom-chest-pain\"> </a><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category exam}\">Exam</span></p><p><b>code</b>: <span title=\"Codes:{http://human-phenotype-ontology.org HP:0100749}, {http://snomed.info/sct 29857009}\">Thoraxschmerzen</span></p><p><b>subject</b>: <a href=\"Patient-patient-marfan-001.html\">Anonymous Patient Male, DoB: 2005-01-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#MRF-2024-001)</a></p><p><b>effective</b>: 2024-12-15</p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 52101004}\">Present</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation A}\">Abnormal</span></p></div></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "exam"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://human-phenotype-ontology.org",
          "code" : "HP:0100749",
          "display" : "Chest pain"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "29857009",
          "display" : "Chest pain"
        }],
        "text" : "Thoraxschmerzen"
      },
      "subject" : {
        "reference" : "Patient/patient-marfan-001"
      },
      "effectiveDateTime" : "2024-12-15",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "52101004",
          "display" : "Present"
        }]
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "A",
          "display" : "Abnormal"
        }]
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Observation"
    }
  },
  {
    "fullUrl" : "urn:uuid:ce25223c-45fe-4a87-ba1b-e120cba24e94",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "symptom-cataract",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Observation_symptom-cataract\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation symptom-cataract</b></p><a name=\"symptom-cataract\"> </a><a name=\"hcsymptom-cataract\"> </a><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category exam}\">Exam</span></p><p><b>code</b>: <span title=\"Codes:{http://human-phenotype-ontology.org HP:0000518}, {http://snomed.info/sct 193570009}\">Katarakt bilateral</span></p><p><b>subject</b>: <a href=\"Patient-patient-marfan-001.html\">Anonymous Patient Male, DoB: 2005-01-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#MRF-2024-001)</a></p><p><b>effective</b>: 2024-10-15</p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 51440002}\">Bilateral</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation A}\">Abnormal</span></p><p><b>bodySite</b>: <span title=\"Codes:{http://snomed.info/sct 81745001}\">Eye structure</span></p></div></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "exam"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://human-phenotype-ontology.org",
          "code" : "HP:0000518",
          "display" : "Cataract"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "193570009",
          "display" : "Cataract"
        }],
        "text" : "Katarakt bilateral"
      },
      "subject" : {
        "reference" : "Patient/patient-marfan-001"
      },
      "effectiveDateTime" : "2024-10-15",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "51440002",
          "display" : "Bilateral"
        }]
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "A",
          "display" : "Abnormal"
        }]
      }],
      "bodySite" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "81745001",
          "display" : "Eye structure"
        }]
      }
    },
    "request" : {
      "method" : "POST",
      "url" : "Observation"
    }
  },
  {
    "fullUrl" : "urn:uuid:a482bf38-9c7a-4295-a0f2-a38c1d15aae7",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "symptom-aortic-root",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Observation_symptom-aortic-root\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation symptom-aortic-root</b></p><a name=\"symptom-aortic-root\"> </a><a name=\"hcsymptom-aortic-root\"> </a><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category imaging}\">Imaging</span></p><p><b>code</b>: <span title=\"Codes:{http://human-phenotype-ontology.org HP:0002616}, {http://snomed.info/sct 251036003}\">Aortenwurzeldilatation</span></p><p><b>subject</b>: <a href=\"Patient-patient-marfan-001.html\">Anonymous Patient Male, DoB: 2005-01-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#MRF-2024-001)</a></p><p><b>effective</b>: 2024-12-15</p><p><b>value</b>: 48 mm<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemm = 'mm')</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation H}\">High</span></p><h3>ReferenceRanges</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>High</b></td><td><b>Text</b></td></tr><tr><td style=\"display: none\">*</td><td>40 mm</td><td>Normwert &lt;40mm</td></tr></table></div></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "imaging"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://human-phenotype-ontology.org",
          "code" : "HP:0002616",
          "display" : "Aortic root aneurysm"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "251036003",
          "display" : "Aortic root dilatation"
        }],
        "text" : "Aortenwurzeldilatation"
      },
      "subject" : {
        "reference" : "Patient/patient-marfan-001"
      },
      "effectiveDateTime" : "2024-12-15",
      "valueQuantity" : {
        "value" : 48,
        "unit" : "mm",
        "system" : "http://unitsofmeasure.org",
        "code" : "mm"
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "H",
          "display" : "High"
        }]
      }],
      "referenceRange" : [{
        "high" : {
          "value" : 40,
          "unit" : "mm"
        },
        "text" : "Normwert <40mm"
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Observation"
    }
  },
  {
    "fullUrl" : "urn:uuid:7b78bb46-817f-4786-84f8-0805b1580192",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "symptom-aortic-regurg",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Observation_symptom-aortic-regurg\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation symptom-aortic-regurg</b></p><a name=\"symptom-aortic-regurg\"> </a><a name=\"hcsymptom-aortic-regurg\"> </a><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category imaging}\">Imaging</span></p><p><b>code</b>: <span title=\"Codes:{http://human-phenotype-ontology.org HP:0001659}, {http://snomed.info/sct 60234000}\">Aortenklappeninsuffizienz</span></p><p><b>subject</b>: <a href=\"Patient-patient-marfan-001.html\">Anonymous Patient Male, DoB: 2005-01-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#MRF-2024-001)</a></p><p><b>effective</b>: 2024-12-15</p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 838545002}\">Aortenklappeninsuffizienz Grad II</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation A}\">Abnormal</span></p></div></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "imaging"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://human-phenotype-ontology.org",
          "code" : "HP:0001659",
          "display" : "Aortic regurgitation"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "60234000",
          "display" : "Aortic valve regurgitation"
        }],
        "text" : "Aortenklappeninsuffizienz"
      },
      "subject" : {
        "reference" : "Patient/patient-marfan-001"
      },
      "effectiveDateTime" : "2024-12-15",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "838545002",
          "display" : "Moderate aortic valve regurgitation"
        }],
        "text" : "Aortenklappeninsuffizienz Grad II"
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "A",
          "display" : "Abnormal"
        }]
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Observation"
    }
  },
  {
    "fullUrl" : "urn:uuid:a933aaca-920c-4d29-be34-1d38c60b8bc9",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "symptom-mitral-regurg",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Observation_symptom-mitral-regurg\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation symptom-mitral-regurg</b></p><a name=\"symptom-mitral-regurg\"> </a><a name=\"hcsymptom-mitral-regurg\"> </a><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category imaging}\">Imaging</span></p><p><b>code</b>: <span title=\"Codes:{http://human-phenotype-ontology.org HP:0001653}, {http://snomed.info/sct 48724000}\">Mitralklappeninsuffizienz</span></p><p><b>subject</b>: <a href=\"Patient-patient-marfan-001.html\">Anonymous Patient Male, DoB: 2005-01-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#MRF-2024-001)</a></p><p><b>effective</b>: 2024-12-15</p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 838451005}\">Mitralklappeninsuffizienz Grad I</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation A}\">Abnormal</span></p></div></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "imaging"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://human-phenotype-ontology.org",
          "code" : "HP:0001653",
          "display" : "Mitral regurgitation"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "48724000",
          "display" : "Mitral valve regurgitation"
        }],
        "text" : "Mitralklappeninsuffizienz"
      },
      "subject" : {
        "reference" : "Patient/patient-marfan-001"
      },
      "effectiveDateTime" : "2024-12-15",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "838451005",
          "display" : "Mild mitral valve regurgitation"
        }],
        "text" : "Mitralklappeninsuffizienz Grad I"
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "A",
          "display" : "Abnormal"
        }]
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Observation"
    }
  },
  {
    "fullUrl" : "urn:uuid:b769b1ea-3ec2-4b35-86d2-9a0ca128e1e6",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "variant-fbn1-001",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Observation_variant-fbn1-001\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation variant-fbn1-001</b></p><a name=\"variant-fbn1-001\"> </a><a name=\"hcvariant-fbn1-001\"> </a><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 55233-1}\">Genetic analysis master panel</span></p><p><b>subject</b>: <a href=\"Patient-patient-marfan-001.html\">Anonymous Patient Male, DoB: 2005-01-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#MRF-2024-001)</a></p><p><b>effective</b>: 2024-12-20</p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 10828004}\">Positive</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation POS}\">Positive</span></p><p><b>note</b>: </p><blockquote><div><p>Pathogene FBN1-Mutation, krankheitsursächlich für Marfan-Syndrom</p>\n</div></blockquote><blockquote><p><b>component</b></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 48018-6}\">Gene studied [ID]</span></p><p><b>value</b>: <span title=\"Codes:{http://www.genenames.org/geneId HGNC:3603}\">FBN1</span></p></blockquote><blockquote><p><b>component</b></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 48004-6}\">DNA change (c.HGVS)</span></p><p><b>value</b>: <span title=\"Codes:\">c.3217G&gt;A</span></p></blockquote><blockquote><p><b>component</b></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 48005-3}\">Amino acid change (pHGVS)</span></p><p><b>value</b>: <span title=\"Codes:\">p.Gly1073Arg</span></p></blockquote><blockquote><p><b>component</b></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 53037-8}\">Genetic variation clinical significance [Imp]</span></p><p><b>value</b>: <span title=\"Codes:{http://loinc.org LA6668-3}\">Pathogenic</span></p></blockquote></div></div>"
      },
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
          "code" : "55233-1",
          "display" : "Genetic analysis master panel"
        }]
      },
      "subject" : {
        "reference" : "Patient/patient-marfan-001"
      },
      "effectiveDateTime" : "2024-12-20",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "10828004",
          "display" : "Positive"
        }]
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "POS",
          "display" : "Positive"
        }]
      }],
      "note" : [{
        "text" : "Pathogene FBN1-Mutation, krankheitsursächlich für Marfan-Syndrom"
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
            "code" : "HGNC:3603",
            "display" : "FBN1"
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
          "text" : "c.3217G>A"
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
          "text" : "p.Gly1073Arg"
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
    },
    "request" : {
      "method" : "POST",
      "url" : "Observation"
    }
  },
  {
    "fullUrl" : "urn:uuid:b4d84fa0-2c48-4613-ba4f-05b75d83c3c9",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "observation-echo-aortic",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Observation_observation-echo-aortic\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation observation-echo-aortic</b></p><a name=\"observation-echo-aortic\"> </a><a name=\"hcobservation-echo-aortic\"> </a><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category imaging}\">Imaging</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 78176-5}\">Aorta root Diameter by US 2D</span></p><p><b>subject</b>: <a href=\"Patient-patient-marfan-001.html\">Anonymous Patient Male, DoB: 2005-01-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#MRF-2024-001)</a></p><p><b>effective</b>: 2024-12-15</p><p><b>value</b>: 48 mm<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemm = 'mm')</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation H}\">High</span></p><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 40701008}\">Echocardiography</span></p></div></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "imaging"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "78176-5",
          "display" : "Aorta root Diameter by US 2D"
        }]
      },
      "subject" : {
        "reference" : "Patient/patient-marfan-001"
      },
      "effectiveDateTime" : "2024-12-15",
      "valueQuantity" : {
        "value" : 48,
        "unit" : "mm",
        "system" : "http://unitsofmeasure.org",
        "code" : "mm"
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "H",
          "display" : "High"
        }]
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "40701008",
          "display" : "Echocardiography"
        }]
      }
    },
    "request" : {
      "method" : "POST",
      "url" : "Observation"
    }
  },
  {
    "fullUrl" : "urn:uuid:796c77be-100b-4935-b738-ef8d6175d668",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "observation-echo-av",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Observation_observation-echo-av\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation observation-echo-av</b></p><a name=\"observation-echo-av\"> </a><a name=\"hcobservation-echo-av\"> </a><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category imaging}\">Imaging</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 18112-3}\">Aortic valve Regurgitation degree by US.doppler</span></p><p><b>subject</b>: <a href=\"Patient-patient-marfan-001.html\">Anonymous Patient Male, DoB: 2005-01-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#MRF-2024-001)</a></p><p><b>effective</b>: 2024-12-15</p><p><b>value</b>: <span title=\"Codes:\">Grad II</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation A}\">Abnormal</span></p><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 40701008}\">Echocardiography</span></p></div></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "imaging"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "18112-3",
          "display" : "Aortic valve Regurgitation degree by US.doppler"
        }]
      },
      "subject" : {
        "reference" : "Patient/patient-marfan-001"
      },
      "effectiveDateTime" : "2024-12-15",
      "valueCodeableConcept" : {
        "text" : "Grad II"
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "A",
          "display" : "Abnormal"
        }]
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "40701008",
          "display" : "Echocardiography"
        }]
      }
    },
    "request" : {
      "method" : "POST",
      "url" : "Observation"
    }
  },
  {
    "fullUrl" : "urn:uuid:c9a2b002-1177-4c4e-82c0-a8d32983da28",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "observation-echo-mv",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Observation_observation-echo-mv\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation observation-echo-mv</b></p><a name=\"observation-echo-mv\"> </a><a name=\"hcobservation-echo-mv\"> </a><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category imaging}\">Imaging</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 18113-1}\">Mitral valve Regurgitation degree by US.doppler</span></p><p><b>subject</b>: <a href=\"Patient-patient-marfan-001.html\">Anonymous Patient Male, DoB: 2005-01-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#MRF-2024-001)</a></p><p><b>effective</b>: 2024-12-15</p><p><b>value</b>: <span title=\"Codes:\">Grad I</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation A}\">Abnormal</span></p><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 40701008}\">Echocardiography</span></p></div></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "imaging"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "18113-1",
          "display" : "Mitral valve Regurgitation degree by US.doppler"
        }]
      },
      "subject" : {
        "reference" : "Patient/patient-marfan-001"
      },
      "effectiveDateTime" : "2024-12-15",
      "valueCodeableConcept" : {
        "text" : "Grad I"
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "A",
          "display" : "Abnormal"
        }]
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "40701008",
          "display" : "Echocardiography"
        }]
      }
    },
    "request" : {
      "method" : "POST",
      "url" : "Observation"
    }
  },
  {
    "fullUrl" : "urn:uuid:7aa4841a-ee1c-462f-86c7-00a2705d42f4",
    "resource" : {
      "resourceType" : "Procedure",
      "id" : "procedure-cataract-surgery",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Procedure_procedure-cataract-surgery\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Procedure procedure-cataract-surgery</b></p><a name=\"procedure-cataract-surgery\"> </a><a name=\"hcprocedure-cataract-surgery\"> </a><p><b>status</b>: Completed</p><p><b>category</b>: <span title=\"Codes:{http://snomed.info/sct 387713003}\">Surgical procedure</span></p><p><b>code</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/ops 5-144.5a}, {http://snomed.info/sct 54885007}\">Phakoemulsifikation mit IOL-Implantation</span></p><p><b>subject</b>: <a href=\"Patient-patient-marfan-001.html\">Anonymous Patient Male, DoB: 2005-01-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#MRF-2024-001)</a></p><p><b>performed</b>: 2024-11-12</p><p><b>reasonReference</b>: <a href=\"Condition-condition-cataract.html\">Condition Katarakt, nicht näher bezeichnet</a></p><p><b>outcome</b>: <span title=\"Codes:\">Erfolgreiche Linsenimplantation ohne Komplikationen</span></p><p><b>note</b>: </p><blockquote><div><p>Komplikationslose Phakoemulsifikation beider Augen mit Implantation monofokaler Intraokularlinsen</p>\n</div></blockquote></div></div>"
      },
      "status" : "completed",
      "category" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "387713003",
          "display" : "Surgical procedure"
        }]
      },
      "code" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/bfarm/ops",
          "code" : "5-144.5a",
          "display" : "Extrakapsuläre Extraktion der Linse [ECCE]: Linsenkernverflüssigung [Phakoemulsifikation] über kornealen Zugang: Mit Einführung einer kapselfixierten Hinterkammerlinse, monofokale Intraokularlinse"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "54885007",
          "display" : "Extraction of cataract"
        }],
        "text" : "Phakoemulsifikation mit IOL-Implantation"
      },
      "subject" : {
        "reference" : "Patient/patient-marfan-001"
      },
      "performedDateTime" : "2024-11-12",
      "reasonReference" : [{
        "reference" : "Condition/condition-cataract"
      }],
      "outcome" : {
        "text" : "Erfolgreiche Linsenimplantation ohne Komplikationen"
      },
      "note" : [{
        "text" : "Komplikationslose Phakoemulsifikation beider Augen mit Implantation monofokaler Intraokularlinsen"
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Procedure"
    }
  },
  {
    "fullUrl" : "urn:uuid:853a938b-bc21-4757-98cc-c33554ea26af",
    "resource" : {
      "resourceType" : "Procedure",
      "id" : "procedure-aortic-planned",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Procedure_procedure-aortic-planned\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Procedure procedure-aortic-planned</b></p><a name=\"procedure-aortic-planned\"> </a><a name=\"hcprocedure-aortic-planned\"> </a><p><b>status</b>: Preparation</p><p><b>category</b>: <span title=\"Codes:{http://snomed.info/sct 387713003}\">Surgical procedure</span></p><p><b>code</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/ops 5-354.0a}, {http://snomed.info/sct 428179006}\">Aortenwurzelersatz (David-Operation)</span></p><p><b>subject</b>: <a href=\"Patient-patient-marfan-001.html\">Anonymous Patient Male, DoB: 2005-01-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#MRF-2024-001)</a></p><p><b>performed</b>: 2025-03-15 --&gt; (ongoing)</p><p><b>reasonReference</b>: <a href=\"Condition-condition-marfan-clinical.html\">Condition Marfan syndrome</a></p><p><b>note</b>: </p><blockquote><div><p>Geplante klappensparende Aortenwurzelersatz-Operation nach David bei progredienter Aortenwurzeldilatation</p>\n</div></blockquote></div></div>"
      },
      "status" : "preparation",
      "category" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "387713003",
          "display" : "Surgical procedure"
        }]
      },
      "code" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/bfarm/ops",
          "code" : "5-354.0a",
          "display" : "Andere Operationen an Herzklappen: Aortenklappe: Rekonstruktion der Aortenwurzel mit Implantation einer Gefäßprothese nach David"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "428179006",
          "display" : "Replacement of aortic root"
        }],
        "text" : "Aortenwurzelersatz (David-Operation)"
      },
      "subject" : {
        "reference" : "Patient/patient-marfan-001"
      },
      "performedPeriod" : {
        "start" : "2025-03-15"
      },
      "reasonReference" : [{
        "reference" : "Condition/condition-marfan-clinical"
      }],
      "note" : [{
        "text" : "Geplante klappensparende Aortenwurzelersatz-Operation nach David bei progredienter Aortenwurzeldilatation"
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Procedure"
    }
  },
  {
    "fullUrl" : "urn:uuid:8fb04be6-9930-4aec-8a5f-4ef9b904ae51",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "medication-losartan",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"MedicationStatement_medication-losartan\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement medication-losartan</b></p><a name=\"medication-losartan\"> </a><a name=\"hcmedication-losartan\"> </a><p><b>status</b>: Active</p><p><b>medication</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/atc C09CA01}, {http://snomed.info/sct 373567002}\">Losartan 50mg</span></p><p><b>subject</b>: <a href=\"Patient-patient-marfan-001.html\">Anonymous Patient Male, DoB: 2005-01-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#MRF-2024-001)</a></p><p><b>effective</b>: 2024-12-15</p><p><b>reasonReference</b>: <a href=\"Condition-condition-marfan-clinical.html\">Condition Marfan syndrome</a></p><p><b>note</b>: </p><blockquote><div><p>Zur Progressionshemmung der Aortenwurzeldilatation bei Marfan-Syndrom</p>\n</div></blockquote><blockquote><p><b>dosage</b></p><p><b>text</b>: 50mg einmal täglich</p><p><b>timing</b>: Once per 1 day</p><p><b>route</b>: <span title=\"Codes:{http://snomed.info/sct 26643006}\">Oral route</span></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>50 mg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg = 'mg')</span></td></tr></table></blockquote></div></div>"
      },
      "status" : "active",
      "medicationCodeableConcept" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/bfarm/atc",
          "code" : "C09CA01",
          "display" : "Losartan"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "373567002",
          "display" : "Losartan"
        }],
        "text" : "Losartan 50mg"
      },
      "subject" : {
        "reference" : "Patient/patient-marfan-001"
      },
      "effectiveDateTime" : "2024-12-15",
      "reasonReference" : [{
        "reference" : "Condition/condition-marfan-clinical"
      }],
      "note" : [{
        "text" : "Zur Progressionshemmung der Aortenwurzeldilatation bei Marfan-Syndrom"
      }],
      "dosage" : [{
        "text" : "50mg einmal täglich",
        "timing" : {
          "repeat" : {
            "frequency" : 1,
            "period" : 1,
            "periodUnit" : "d"
          }
        },
        "route" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "26643006",
            "display" : "Oral route"
          }]
        },
        "doseAndRate" : [{
          "doseQuantity" : {
            "value" : 50,
            "unit" : "mg",
            "system" : "http://unitsofmeasure.org",
            "code" : "mg"
          }
        }]
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "MedicationStatement"
    }
  },
  {
    "fullUrl" : "urn:uuid:35d41288-207b-4be7-967a-d92e295d1c75",
    "resource" : {
      "resourceType" : "ClinicalImpression",
      "id" : "clinical-impression-seltene-assessment",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-impression|2026.0.1"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"ClinicalImpression_clinical-impression-seltene-assessment\"> </a><p class=\"res-header-id\"><b>Generated Narrative: ClinicalImpression clinical-impression-seltene-assessment</b></p><a name=\"clinical-impression-seltene-assessment\"> </a><a name=\"hcclinical-impression-seltene-assessment\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-impression|2026.0.1\">https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-impression|2026.0.1</a></p></div><p><b>status</b>: Completed</p><p><b>subject</b>: <a href=\"Patient-patient-marfan-001.html\">Anonymous Patient Male, DoB: 2005-01-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#MRF-2024-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-encounter-cardiology.html\">Encounter: status = finished; class = ambulatory (ActCode#AMB); type = Seen in cardiac clinic (finding); period = 2024-12-15 --&gt; 2024-12-15; reasonCode = Chest pain</a></p><p><b>effective</b>: 2024-12-15</p><p><b>date</b>: 2024-12-15</p><p><b>problem</b>: </p><ul><li><a href=\"Condition-condition-marfan-suspected.html\">Condition Marfan-Syndrom</a></li><li><a href=\"Condition-condition-marfan-clinical.html\">Condition Marfan syndrome</a></li><li><a href=\"Condition-condition-marfan-genetic.html\">Condition Marfan syndrome</a></li></ul><blockquote><p><b>investigation</b></p><p><b>code</b>: <span title=\"Codes:\">Echokardiographie</span></p><p><b>item</b>: </p><ul><li><a href=\"Observation-observation-echo-aortic.html\">Observation Aorta root Diameter by US 2D</a></li><li><a href=\"Observation-observation-echo-av.html\">Observation Aortic valve Regurgitation degree by US.doppler</a></li><li><a href=\"Observation-observation-echo-mv.html\">Observation Mitral valve Regurgitation degree by US.doppler</a></li></ul></blockquote><p><b>summary</b>: 19-jähriger Patient mit Z.n. Katarakt-OP im ZSE vorstellig. Kardiologische Mitbeurteilung zeigt: Aortenwurzeldilatation (48mm), AKI Grad II, MKI Grad I. Skelettale Merkmale (Hochwuchs 2,13m, Beinlängendifferenz) bestätigen Marfan-Syndrom. Klinische und genetische Diagnose gesichert.</p><blockquote><p><b>finding</b></p><p><b>itemReference</b>: <a href=\"Condition-condition-marfan-clinical.html\">Condition Marfan syndrome</a></p></blockquote><blockquote><p><b>finding</b></p><p><b>itemReference</b>: <a href=\"Condition-condition-marfan-genetic.html\">Condition Marfan syndrome</a></p></blockquote><blockquote><p><b>finding</b></p><p><b>itemCodeableConcept</b>: <span title=\"Codes:{http://snomed.info/sct 251036003}\">Aortic root dilatation</span></p><p><b>itemReference</b>: <a href=\"Observation-symptom-aortic-root.html\">Observation Aortic root aneurysm</a></p></blockquote><blockquote><p><b>finding</b></p><p><b>itemCodeableConcept</b>: <span title=\"Codes:{http://snomed.info/sct 60234000}\">Aortic valve regurgitation</span></p><p><b>itemReference</b>: <a href=\"Observation-symptom-aortic-regurg.html\">Observation Aortic regurgitation</a></p></blockquote><blockquote><p><b>finding</b></p><p><b>itemCodeableConcept</b>: <span title=\"Codes:{http://snomed.info/sct 48724000}\">Mitral valve regurgitation</span></p><p><b>itemReference</b>: <a href=\"Observation-symptom-mitral-regurg.html\">Observation Mitral regurgitation</a></p></blockquote><blockquote><p><b>finding</b></p><p><b>itemCodeableConcept</b>: <span title=\"Codes:{http://snomed.info/sct 248328003}\">Tall stature</span></p><p><b>itemReference</b>: <a href=\"Observation-observation-height-001.html\">Observation Body height</a></p></blockquote><blockquote><p><b>finding</b></p><p><b>itemCodeableConcept</b>: <span title=\"Codes:{http://snomed.info/sct 707738004}\">Leg length discrepancy</span></p><p><b>itemReference</b>: <a href=\"Observation-observation-leg-asymmetry.html\">Observation Leg length discrepancy</a></p></blockquote><p><b>prognosisCodeableConcept</b>: <span title=\"Codes:{http://snomed.info/sct 67334001}\">Guarded prognosis</span></p><p><b>note</b>: , </p><blockquote><div><p>Katarakt in jungem Alter war Anlass für ZSE-Konsultation. Marfan-Syndrom klinisch und genetisch (FBN1-Mutation) bestätigt. OP-Indikation für Aortenwurzelersatz durch Kardiologie gestellt. Medikamentöse Therapie mit Losartan eingeleitet.</p>\n</div></blockquote><blockquote><div><p>Multidisziplinäre Betreuung im ZSE etabliert. Regelmäßige kardiologische Kontrollen alle 6 Monate. Genetische Beratung für Familienplanung empfohlen.</p>\n</div></blockquote></div></div>"
      },
      "status" : "completed",
      "subject" : {
        "reference" : "Patient/patient-marfan-001"
      },
      "encounter" : {
        "reference" : "Encounter/encounter-cardiology"
      },
      "effectiveDateTime" : "2024-12-15",
      "date" : "2024-12-15",
      "problem" : [{
        "reference" : "Condition/condition-marfan-suspected"
      },
      {
        "reference" : "Condition/condition-marfan-clinical"
      },
      {
        "reference" : "Condition/condition-marfan-genetic"
      }],
      "investigation" : [{
        "code" : {
          "text" : "Echokardiographie"
        },
        "item" : [{
          "reference" : "Observation/observation-echo-aortic"
        },
        {
          "reference" : "Observation/observation-echo-av"
        },
        {
          "reference" : "Observation/observation-echo-mv"
        }]
      }],
      "summary" : "19-jähriger Patient mit Z.n. Katarakt-OP im ZSE vorstellig. Kardiologische Mitbeurteilung zeigt: Aortenwurzeldilatation (48mm), AKI Grad II, MKI Grad I. Skelettale Merkmale (Hochwuchs 2,13m, Beinlängendifferenz) bestätigen Marfan-Syndrom. Klinische und genetische Diagnose gesichert.",
      "finding" : [{
        "itemReference" : {
          "reference" : "Condition/condition-marfan-clinical"
        }
      },
      {
        "itemReference" : {
          "reference" : "Condition/condition-marfan-genetic"
        }
      },
      {
        "itemCodeableConcept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "251036003",
            "display" : "Aortic root dilatation"
          }]
        },
        "itemReference" : {
          "reference" : "Observation/symptom-aortic-root"
        }
      },
      {
        "itemCodeableConcept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "60234000",
            "display" : "Aortic valve regurgitation"
          }]
        },
        "itemReference" : {
          "reference" : "Observation/symptom-aortic-regurg"
        }
      },
      {
        "itemCodeableConcept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "48724000",
            "display" : "Mitral valve regurgitation"
          }]
        },
        "itemReference" : {
          "reference" : "Observation/symptom-mitral-regurg"
        }
      },
      {
        "itemCodeableConcept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "248328003",
            "display" : "Tall stature"
          }]
        },
        "itemReference" : {
          "reference" : "Observation/observation-height-001"
        }
      },
      {
        "itemCodeableConcept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "707738004",
            "display" : "Leg length discrepancy"
          }]
        },
        "itemReference" : {
          "reference" : "Observation/observation-leg-asymmetry"
        }
      }],
      "prognosisCodeableConcept" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "67334001",
          "display" : "Guarded prognosis"
        }]
      }],
      "note" : [{
        "text" : "Katarakt in jungem Alter war Anlass für ZSE-Konsultation. Marfan-Syndrom klinisch und genetisch (FBN1-Mutation) bestätigt. OP-Indikation für Aortenwurzelersatz durch Kardiologie gestellt. Medikamentöse Therapie mit Losartan eingeleitet."
      },
      {
        "text" : "Multidisziplinäre Betreuung im ZSE etabliert. Regelmäßige kardiologische Kontrollen alle 6 Monate. Genetische Beratung für Familienplanung empfohlen."
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "ClinicalImpression"
    }
  },
  {
    "fullUrl" : "urn:uuid:258f0a21-4c6e-473d-87e9-36a5bf01bb1a",
    "resource" : {
      "resourceType" : "Encounter",
      "id" : "encounter-ophthalmology",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Encounter_encounter-ophthalmology\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Encounter encounter-ophthalmology</b></p><a name=\"encounter-ophthalmology\"> </a><a name=\"hcencounter-ophthalmology\"> </a><p><b>status</b>: Finished</p><p><b>class</b>: <a href=\"http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActCode.html#v3-ActCode-AMB\">ActCode: AMB</a> (ambulatory)</p><p><b>type</b>: <span title=\"Codes:{http://snomed.info/sct 36228007}\">Ophthalmic examination and evaluation</span></p><p><b>subject</b>: <a href=\"Patient-patient-marfan-001.html\">Anonymous Patient Male, DoB: 2005-01-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#MRF-2024-001)</a></p><p><b>period</b>: 2024-10-15 --&gt; 2024-10-15</p><h3>Diagnoses</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Condition</b></td><td><b>Use</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"Condition-condition-cataract.html\">Condition Katarakt, nicht näher bezeichnet</a></td><td><span title=\"Codes:{http://terminology.hl7.org/CodeSystem/diagnosis-role AD}\">Admission diagnosis</span></td></tr></table></div></div>"
      },
      "status" : "finished",
      "class" : {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
        "code" : "AMB",
        "display" : "ambulatory"
      },
      "type" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "36228007",
          "display" : "Ophthalmic examination and evaluation"
        }]
      }],
      "subject" : {
        "reference" : "Patient/patient-marfan-001"
      },
      "period" : {
        "start" : "2024-10-15",
        "end" : "2024-10-15"
      },
      "diagnosis" : [{
        "condition" : {
          "reference" : "Condition/condition-cataract"
        },
        "use" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/diagnosis-role",
            "code" : "AD",
            "display" : "Admission diagnosis"
          }]
        }
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Encounter"
    }
  },
  {
    "fullUrl" : "urn:uuid:70504d04-a6f0-4aa8-bd20-9b475b94438c",
    "resource" : {
      "resourceType" : "Encounter",
      "id" : "encounter-cataract-surgery",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Encounter_encounter-cataract-surgery\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Encounter encounter-cataract-surgery</b></p><a name=\"encounter-cataract-surgery\"> </a><a name=\"hcencounter-cataract-surgery\"> </a><p><b>status</b>: Finished</p><p><b>class</b>: <a href=\"http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActCode.html#v3-ActCode-SS\">ActCode: SS</a> (short stay)</p><p><b>type</b>: <span title=\"Codes:{http://snomed.info/sct 305408004}\">Admission to surgical department</span></p><p><b>subject</b>: <a href=\"Patient-patient-marfan-001.html\">Anonymous Patient Male, DoB: 2005-01-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#MRF-2024-001)</a></p><p><b>period</b>: 2024-11-12 07:00:00+0000 --&gt; 2024-11-12 15:00:00+0000</p><h3>Diagnoses</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Condition</b></td><td><b>Use</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"Condition-condition-cataract.html\">Condition Katarakt, nicht näher bezeichnet</a></td><td><span title=\"Codes:{http://terminology.hl7.org/CodeSystem/diagnosis-role CC}\">Chief complaint</span></td></tr></table></div></div>"
      },
      "status" : "finished",
      "class" : {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
        "code" : "SS",
        "display" : "short stay"
      },
      "type" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "305408004",
          "display" : "Admission to surgical department"
        }]
      }],
      "subject" : {
        "reference" : "Patient/patient-marfan-001"
      },
      "period" : {
        "start" : "2024-11-12T07:00:00Z",
        "end" : "2024-11-12T15:00:00Z"
      },
      "diagnosis" : [{
        "condition" : {
          "reference" : "Condition/condition-cataract"
        },
        "use" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/diagnosis-role",
            "code" : "CC",
            "display" : "Chief complaint"
          }]
        }
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Encounter"
    }
  },
  {
    "fullUrl" : "urn:uuid:c90d7e24-a787-4d1b-b402-36b64362cc13",
    "resource" : {
      "resourceType" : "Encounter",
      "id" : "encounter-cardiology",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Encounter_encounter-cardiology\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Encounter encounter-cardiology</b></p><a name=\"encounter-cardiology\"> </a><a name=\"hcencounter-cardiology\"> </a><p><b>status</b>: Finished</p><p><b>class</b>: <a href=\"http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActCode.html#v3-ActCode-AMB\">ActCode: AMB</a> (ambulatory)</p><p><b>type</b>: <span title=\"Codes:{http://snomed.info/sct 185228002}\">Seen in cardiac clinic (finding)</span></p><p><b>subject</b>: <a href=\"Patient-patient-marfan-001.html\">Anonymous Patient Male, DoB: 2005-01-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#MRF-2024-001)</a></p><p><b>period</b>: 2024-12-15 --&gt; 2024-12-15</p><p><b>reasonCode</b>: <span title=\"Codes:{http://snomed.info/sct 29857009}\">Thoraxschmerzen bei V.a. Marfan-Syndrom</span></p><h3>Diagnoses</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Condition</b></td><td><b>Use</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"Condition-condition-marfan-clinical.html\">Condition Marfan syndrome</a></td><td><span title=\"Codes:{http://terminology.hl7.org/CodeSystem/diagnosis-role AD}\">Admission diagnosis</span></td></tr></table></div></div>"
      },
      "status" : "finished",
      "class" : {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
        "code" : "AMB",
        "display" : "ambulatory"
      },
      "type" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "185228002",
          "display" : "Seen in cardiac clinic (finding)"
        }]
      }],
      "subject" : {
        "reference" : "Patient/patient-marfan-001"
      },
      "period" : {
        "start" : "2024-12-15",
        "end" : "2024-12-15"
      },
      "reasonCode" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "29857009",
          "display" : "Chest pain"
        }],
        "text" : "Thoraxschmerzen bei V.a. Marfan-Syndrom"
      }],
      "diagnosis" : [{
        "condition" : {
          "reference" : "Condition/condition-marfan-clinical"
        },
        "use" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/diagnosis-role",
            "code" : "AD",
            "display" : "Admission diagnosis"
          }]
        }
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Encounter"
    }
  },
  {
    "fullUrl" : "urn:uuid:1ec76c96-9e7d-403a-9ea5-1f2eaea6ef28",
    "resource" : {
      "resourceType" : "Encounter",
      "id" : "encounter-surgery-planned",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Encounter_encounter-surgery-planned\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Encounter encounter-surgery-planned</b></p><a name=\"encounter-surgery-planned\"> </a><a name=\"hcencounter-surgery-planned\"> </a><p><b>status</b>: Planned</p><p><b>class</b>: <a href=\"http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActCode.html#v3-ActCode-IMP\">ActCode: IMP</a> (inpatient encounter)</p><p><b>type</b>: <span title=\"Codes:{http://snomed.info/sct 305357000}\">Admission to cardiology department</span></p><p><b>subject</b>: <a href=\"Patient-patient-marfan-001.html\">Anonymous Patient Male, DoB: 2005-01-01 ( https://www.medizininformatik-initiative.de/fhir/sid/patient-id#MRF-2024-001)</a></p><p><b>period</b>: 2025-03-15 --&gt; (ongoing)</p><p><b>reasonCode</b>: <span title=\"Codes:\">Elektive Aortenwurzelersatz-Operation bei Marfan-Syndrom</span></p><h3>Diagnoses</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Condition</b></td><td><b>Use</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"Condition-condition-marfan-clinical.html\">Condition Marfan syndrome</a></td><td><span title=\"Codes:{http://terminology.hl7.org/CodeSystem/diagnosis-role CC}\">Chief complaint</span></td></tr></table></div></div>"
      },
      "status" : "planned",
      "class" : {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
        "code" : "IMP",
        "display" : "inpatient encounter"
      },
      "type" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "305357000",
          "display" : "Admission to cardiology department"
        }]
      }],
      "subject" : {
        "reference" : "Patient/patient-marfan-001"
      },
      "period" : {
        "start" : "2025-03-15"
      },
      "reasonCode" : [{
        "text" : "Elektive Aortenwurzelersatz-Operation bei Marfan-Syndrom"
      }],
      "diagnosis" : [{
        "condition" : {
          "reference" : "Condition/condition-marfan-clinical"
        },
        "use" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/diagnosis-role",
            "code" : "CC",
            "display" : "Chief complaint"
          }]
        }
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Encounter"
    }
  }]
}

```
