# MII PR SE ICF Assessment - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR SE ICF Assessment**

## Ressourcenprofil: MII PR SE ICF Assessment 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-icf-assessment | *Version*:2027.0.0-ballot |
| Active Stand: 2026-09-14 | *Maschinenlesbarer Name*:MII_PR_Seltene_ICFAssessment |

 
Observation profile grading a single ICF category for a patient, as required by the JARDIN MDS draft and the ERDRI-CDS. Observation.code carries the ICF category; the WHO qualifiers are carried as components, because body structures take three of them and activities/participation take two (capacity and performance). 

Dieses Profil stuft für eine Patientin oder einen Patienten **eine** Kategorie der WHO-**Internationalen Klassifikation der Funktionsfähigkeit, Behinderung und Gesundheit (ICF)** ein. Sowohl der JARDIN-MDS-Entwurf als auch das ERDRI-CDS verlangen, Funktionsfähigkeit und Behinderung auf diese Weise zu erfassen; kein MII-Modul deckte das bisher ab.

`Observation.code` trägt die ICF-Kategorie, `Observation.component` die WHO-Beurteilungsmerkmale.

### Warum die Beurteilungsmerkmale Components sind und kein Wert

Ihre Zahl ist je ICF-Kapitel verschieden, ein einzelnes `value[x]` kann sie daher nicht tragen. `value[x]` ist folglich geschlossen (`0..0`), und je Kapitel regelt eine Invariante, welche Components auftreten dürfen:

| | | |
| :--- | :--- | :--- |
| `b` | Körperfunktionen | Ausmaß der Schädigung |
| `s` | Körperstrukturen | Ausmaß, Art der Schädigung, Lokalisation |
| `d` | Aktivitäten und Partizipation | **Leistungsfähigkeit**und**Leistung** |
| `e` | Umweltfaktoren | Barriere oder Förderfaktor |

Ohne diese Einschränkungen nähme das Profil anstandslos eine anatomische Lokalisation auf einer Körper**funktion** entgegen — etwas, das die ICF nicht definiert.

Die Unterscheidung in Kapitel `d` ist das Herzstück der Klassifikation und bei seltenen Erkrankungen häufig der eigentliche Punkt: **Leistungsfähigkeit** (capacity) ist, was jemand unter Testbedingungen kann, **Leistung** (performance), was er in seiner eigenen Umgebung tatsächlich tut. Beide teilen sich ein BfArM-CodeSystem und werden deshalb am Component-Code auseinandergehalten, nicht am Wertesystem.

> **Hinweis zur Reihenfolge:** Die ICF selbst nennt in Kapitel `d` zuerst die Leistung und dann die Leistungsfähigkeit. Die Slice-Reihenfolge dieses Profils ist alphabetisch und bedeutet nichts — maßgeblich ist der Component-Code, nicht die Position.

### Terminologie

Aufgelöst gegen das BfArM-FHIR-Paket `bfarm.terminologien.icf`:

* Die Klassifikation erscheint unter dem HL7-Canonical `http://hl7.org/fhir/sid/icf`. Ein eigenes URI prägt das BfArM dafür nicht.
* **Deutsch ist kein zweites CodeSystem.** `icf-translation` ist ein `content=supplement` gegen dasselbe Canonical — ein CodeSystem, beide Sprachen. Hier muss sich nichts für eine Sprache entscheiden, und das ValueSet braucht keinen deutschen Zwilling.
* Die **Beurteilungsmerkmale** sind eigene CodeSystems, sieben an der Zahl, veröffentlicht unter `https://terminologien.bfarm.de/fhir/CodeSystem/icf-q-*`.
* Das Trennzeichen trägt Bedeutung, und das BfArM hat es **in** die Codes gelegt: Das Ausmaß der Schädigung läuft `.0`…`.4`, `.8`, `.9`, Förderfaktoren laufen `+0`…`+4`. Barriere und Förderfaktor unterscheiden sich damit am Code selbst und nicht an einem Vorzeichen, das ein Parser rekonstruieren müsste.

### Drei offene Punkte

> **Die Bindung löst im Build womöglich nicht auf.** Der MII-Terminologieserver führt `http://hl7.org/fhir/sid/icf` derzeit nicht und meldet es als unbekanntes CodeSystem. [`mii-vs-seltene-icf`](ValueSet-mii-vs-seltene-icf.md) hat in dieser Publikation deshalb keine Expansion, obwohl `code.coding` **required** dagegen gebunden ist. Die Lücke liegt beim Serverbetrieb und schließt sich, sobald das BfArM-Paket dort geladen ist; die ICF-Codes selbst bleiben gültig.**Die Edition ist nicht gepinnt.** Das BfArM liefert Release 2005 mit 1495 Konzepten; `tx.fhir.org` führt unter **demselben** Canonical 2017a, eine Expansion dort ergab 1616. Gleiches URI, rund 120 Konzepte Unterschied. Eine required-Bindung darf nicht stillschweigend über beides hinweggehen.**Die Zuständigkeit ist offen — bewusst, nicht aus Versehen.** Dieser Datenpunkt ist **nicht** spezifisch für seltene Erkrankungen: Funktionsfähigkeit und Behinderung werden bei Schlaganfall, in der Onkologie und in der Geriatrie genauso eingestuft, und die ICF ist eine WHO-Klassifikation für die gesamte Gesundheit, nicht für eine Indikation. Modelliert ist sie hier, weil der Bedarf hier entstand und konkret war — der JARDIN-MDS-Entwurf ist die Datenanforderung eines europäischen Referenznetzwerks mit Frist, und kein angebundenes MII-Modul deckte sie ab. Ein Modul für **Symptome und den klinischen Phänotyp** wäre der naheliegende Ort, sollte eines sie übernehmen; dieselbe Abwägung fiel beim Geschlecht bei Geburt anders aus (HDB-782), das ans Basismodul verwiesen wurde, weil es dort sowohl einen Standard als auch einen Platz dafür schon gab. Rückmeldungen dazu sind im Ballot willkommen.

-------

**Suchparameter** sind modulweit im [CapabilityStatement](CapabilityStatement-mii-cps-seltene-capabilitystatement.md) deklariert — dort maschinenlesbar und vollständig, statt je Profil von Hand wiederholt.

Beispielinstanzen sind auf der Profilseite im Abschnitt „Examples" verlinkt.

**Usages:**

* Examples for this Profile: [Observation/mii-exa-seltene-icf-aktivitaet](Observation-mii-exa-seltene-icf-aktivitaet.md), [Observation/mii-exa-seltene-icf-koerperfunktion](Observation-mii-exa-seltene-icf-koerperfunktion.md), [Observation/mii-exa-seltene-icf-koerperstruktur](Observation-mii-exa-seltene-icf-koerperstruktur.md) and [Observation/mii-exa-seltene-icf-umweltfaktor](Observation-mii-exa-seltene-icf-umweltfaktor.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.seltene|current/StructureDefinition/StructureDefinition-mii-pr-seltene-icf-assessment.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Observation](http://hl7.org/fhir/R4/observation.html) 

#### Terminology Bindings (Differential)

#### Constraints

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Observation](http://hl7.org/fhir/R4/observation.html) 

** Summary **

Mandatory: 4 elements
 Must-Support: 21 elements
 Prohibited: 1 element

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Observation.category
* The element 1 is sliced based on the value of Observation.component

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [Observation](http://hl7.org/fhir/R4/observation.html) 

#### Terminology Bindings (Differential)

#### Constraints

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Observation](http://hl7.org/fhir/R4/observation.html) 

** Summary **

Mandatory: 4 elements
 Must-Support: 21 elements
 Prohibited: 1 element

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Observation.category
* The element 1 is sliced based on the value of Observation.component

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-seltene-icf-assessment.csv), [Excel](../StructureDefinition-mii-pr-seltene-icf-assessment.xlsx), [Schematron](../StructureDefinition-mii-pr-seltene-icf-assessment.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-seltene-icf-assessment",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablestructuredefinition",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablestructuredefinition"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "shareable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "publishable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-usage",
    "valueMarkdown" : "Use this profile as the technical FHIR representation of the corresponding Medical Informatics Initiative logical model. The profile constrains a base FHIR resource for the MII module context by specifying how elements are used, which elements are required or not used, which extensions and terminology bindings apply, and how the resource maps to the module-specific content model. Implementers should produce and consume resource instances that conform to this profile when exchanging data for the corresponding MII module."
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionPolicy",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/artifact-version-policy-codes",
        "code" : "package",
        "display" : "Package"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/resource-approvalDate",
    "valueDate" : "2026-09-02"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-topic",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl",
        "code" : "C4873"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-author",
    "valueContactDetail" : {
      "telecom" : [{
        "system" : "email",
        "value" : "thomas.debertshaeuser@charite.de"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-editor",
    "valueContactDetail" : {
      "name" : "Taskforce Core Data Set"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-reviewer",
    "valueContactDetail" : {
      "name" : "Interoperability Working Group",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/interoperability-working-group"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-reviewer",
    "valueContactDetail" : {
      "name" : "National Steering Committee",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/national-steering-committee"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-endorser",
    "valueContactDetail" : {
      "name" : "Interoperability Working Group",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/interoperability-working-group"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-endorser",
    "valueContactDetail" : {
      "name" : "National Steering Committee",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/national-steering-committee"
      }]
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-icf-assessment",
  "version" : "2027.0.0-ballot",
  "name" : "MII_PR_Seltene_ICFAssessment",
  "title" : "MII PR SE ICF Assessment",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-14T22:11:28+00:00",
  "publisher" : "Medizininformatik Initiative",
  "_publisher" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "de"
      },
      {
        "url" : "content",
        "valueString" : "Medizininformatik Initiative"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Observation profile grading a single ICF category for a patient, as required by the JARDIN MDS draft and the ERDRI-CDS. Observation.code carries the ICF category; the WHO qualifiers are carried as components, because body structures take three of them and activities/participation take two (capacity and performance).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "SE-LogicalModel",
    "uri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/LogicalModel/Seltene",
    "name" : "Mapping FHIR zu Seltene Erkrankungen Logical Model"
  },
  {
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation",
      "constraint" : [{
        "key" : "mii-icf-1",
        "severity" : "error",
        "human" : "Body functions (chapter b) take only the extent-of-impairment qualifier.",
        "expression" : "code.coding.where(system='http://hl7.org/fhir/sid/icf').code.first().startsWith('b') implies component.where(code.coding.code != 'extent-of-impairment').empty()",
        "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-icf-assessment"
      },
      {
        "key" : "mii-icf-2",
        "severity" : "error",
        "human" : "Body structures (chapter s) take only extent, nature of change and anatomical location.",
        "expression" : "code.coding.where(system='http://hl7.org/fhir/sid/icf').code.first().startsWith('s') implies component.where(code.coding.code != 'extent-of-impairment-structure' and code.coding.code != 'nature-of-change' and code.coding.code != 'anatomical-location').empty()",
        "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-icf-assessment"
      },
      {
        "key" : "mii-icf-3",
        "severity" : "error",
        "human" : "Activities and participation (chapter d) take only capacity and performance.",
        "expression" : "code.coding.where(system='http://hl7.org/fhir/sid/icf').code.first().startsWith('d') implies component.where(code.coding.code != 'capacity' and code.coding.code != 'performance').empty()",
        "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-icf-assessment"
      },
      {
        "key" : "mii-icf-4",
        "severity" : "error",
        "human" : "Environmental factors (chapter e) take only the barrier or facilitator qualifier.",
        "expression" : "code.coding.where(system='http://hl7.org/fhir/sid/icf').code.first().startsWith('e') implies component.where(code.coding.code != 'barrier' and code.coding.code != 'facilitator').empty()",
        "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-icf-assessment"
      },
      {
        "key" : "mii-icf-5",
        "severity" : "error",
        "human" : "An environmental factor is graded as a barrier or as a facilitator, not as both at once.",
        "expression" : "component.where(code.coding.code = 'barrier').empty() or component.where(code.coding.code = 'facilitator').empty()",
        "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-icf-assessment"
      }]
    },
    {
      "id" : "Observation.id",
      "path" : "Observation.id",
      "mustSupport" : true
    },
    {
      "id" : "Observation.meta",
      "path" : "Observation.meta",
      "mustSupport" : true
    },
    {
      "id" : "Observation.meta.profile",
      "path" : "Observation.meta.profile",
      "mustSupport" : true
    },
    {
      "id" : "Observation.status",
      "path" : "Observation.status",
      "mustSupport" : true
    },
    {
      "id" : "Observation.category",
      "path" : "Observation.category",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "$this"
        }],
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.category:survey",
      "path" : "Observation.category",
      "sliceName" : "survey",
      "short" : "Category: survey/assessment",
      "min" : 1,
      "max" : "1",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "survey"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "short" : "ICF category being graded",
      "definition" : "A single ICF category, e.g. b280 |Sensation of pain| or d450 |Walking|. The chapters are b (body functions), s (body structures), d (activities and participation) and e (environmental factors). German display text is available through the BfArM language supplement without changing the code system.",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "funktionsfaehigkeit.icfCode",
        "comment" : "ICF-Code"
      }]
    },
    {
      "id" : "Observation.code.coding",
      "path" : "Observation.code.coding",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-icf"
      }
    },
    {
      "id" : "Observation.code.coding.system",
      "path" : "Observation.code.coding.system",
      "patternUri" : "http://hl7.org/fhir/sid/icf"
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
      "short" : "When the assessment was made — ICF gradings are point-in-time and change over the course of a disease",
      "min" : 1,
      "type" : [{
        "code" : "dateTime"
      },
      {
        "code" : "Period"
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "funktionsfaehigkeit.erhebungsdatum",
        "comment" : "Erhebungsdatum"
      }]
    },
    {
      "id" : "Observation.performer",
      "path" : "Observation.performer",
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "max" : "0"
    },
    {
      "id" : "Observation.note",
      "path" : "Observation.note",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "code"
        }],
        "description" : "One slice per ICF qualifier. Which ones apply depends on the chapter of the category in Observation.code.",
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.component.value[x]",
      "path" : "Observation.component.value[x]",
      "mapping" : [{
        "identity" : "SE-LogicalModel",
        "map" : "funktionsfaehigkeit.beurteilungsmerkmal",
        "comment" : "WHO-Qualifier zum ICF-Kode"
      }]
    },
    {
      "id" : "Observation.component:extentOfImpairment",
      "path" : "Observation.component",
      "sliceName" : "extentOfImpairment",
      "short" : "Body functions (b): extent of impairment",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:extentOfImpairment.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-icf-beurteilungsmerkmal",
          "code" : "extent-of-impairment"
        }]
      }
    },
    {
      "id" : "Observation.component:extentOfImpairment.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://terminologien.bfarm.de/fhir/ValueSet/icf-q-ausmass-der-schaedigung"
      }
    },
    {
      "id" : "Observation.component:extentOfImpairmentBodyStructure",
      "path" : "Observation.component",
      "sliceName" : "extentOfImpairmentBodyStructure",
      "short" : "Body structures (s), first qualifier: extent of impairment",
      "comment" : "BfArM publishes a separate code system for body structures even though the scale reads the same as for body functions. The two are kept apart here rather than merged, so that an instance stays valid against the source terminology.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:extentOfImpairmentBodyStructure.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-icf-beurteilungsmerkmal",
          "code" : "extent-of-impairment-structure"
        }]
      }
    },
    {
      "id" : "Observation.component:extentOfImpairmentBodyStructure.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://terminologien.bfarm.de/fhir/ValueSet/icf-q-ausmass-der-schaedigung-s"
      }
    },
    {
      "id" : "Observation.component:natureOfChange",
      "path" : "Observation.component",
      "sliceName" : "natureOfChange",
      "short" : "Body structures (s), second qualifier: nature of the change",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:natureOfChange.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-icf-beurteilungsmerkmal",
          "code" : "nature-of-change"
        }]
      }
    },
    {
      "id" : "Observation.component:natureOfChange.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://terminologien.bfarm.de/fhir/ValueSet/icf-q-art-oder-veraenderung-in-der-entsprechenden-koerperstruktur"
      }
    },
    {
      "id" : "Observation.component:anatomicalLocation",
      "path" : "Observation.component",
      "sliceName" : "anatomicalLocation",
      "short" : "Body structures (s), third qualifier: anatomical location",
      "comment" : "The ICF marks this third qualifier as still under development ('in Entwicklung').",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:anatomicalLocation.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-icf-beurteilungsmerkmal",
          "code" : "anatomical-location"
        }]
      }
    },
    {
      "id" : "Observation.component:anatomicalLocation.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://terminologien.bfarm.de/fhir/ValueSet/icf-q-anatomische-lokalisation"
      }
    },
    {
      "id" : "Observation.component:capacity",
      "path" : "Observation.component",
      "sliceName" : "capacity",
      "short" : "Activities and participation (d): CAPACITY — what the person can do in a standardised environment",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:capacity.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-icf-beurteilungsmerkmal",
          "code" : "capacity"
        }]
      }
    },
    {
      "id" : "Observation.component:capacity.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://terminologien.bfarm.de/fhir/ValueSet/icf-q-leistungsfaehigkeit-und-leistung"
      }
    },
    {
      "id" : "Observation.component:performance",
      "path" : "Observation.component",
      "sliceName" : "performance",
      "short" : "Activities and participation (d): PERFORMANCE — what the person actually does in their current environment",
      "comment" : "Capacity and performance draw on the same BfArM code system and are distinguished only by this component code. The gap between them is what quantifies the effect of assistive devices and personal assistance.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:performance.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-icf-beurteilungsmerkmal",
          "code" : "performance"
        }]
      }
    },
    {
      "id" : "Observation.component:performance.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://terminologien.bfarm.de/fhir/ValueSet/icf-q-leistungsfaehigkeit-und-leistung"
      }
    },
    {
      "id" : "Observation.component:barrier",
      "path" : "Observation.component",
      "sliceName" : "barrier",
      "short" : "Environmental factors (e): extent to which the factor acts as a barrier",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:barrier.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-icf-beurteilungsmerkmal",
          "code" : "barrier"
        }]
      }
    },
    {
      "id" : "Observation.component:barrier.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://terminologien.bfarm.de/fhir/ValueSet/icf-q-barrieren"
      }
    },
    {
      "id" : "Observation.component:facilitator",
      "path" : "Observation.component",
      "sliceName" : "facilitator",
      "short" : "Environmental factors (e): extent to which the factor acts as a facilitator",
      "comment" : "Facilitator codes carry a leading '+' ('+0'..'+4'), barriers a leading '.'. The sign is part of the code, so barrier and facilitator never collide.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:facilitator.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-icf-beurteilungsmerkmal",
          "code" : "facilitator"
        }]
      }
    },
    {
      "id" : "Observation.component:facilitator.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://terminologien.bfarm.de/fhir/ValueSet/icf-q-foerderfaktoren"
      }
    }]
  }
}

```
