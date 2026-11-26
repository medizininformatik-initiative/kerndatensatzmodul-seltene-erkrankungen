<!-- German mirror: input/translations/de/pagecontent/mapping-mvgenomseq.md — both files must say the same thing.
     The tables between the GENERATED markers are written by scripts/generate-mvgenomseq-mapping.py from
     the logical model mii-lm-seltene-mvgenomseq and the ConceptMap mii-cm-seltene-to-mvgenomseq.
     Do not edit them by hand; where they disagree, the resources are right. -->

In the **genome sequencing model project** under § 64e SGB V (Modellvorhaben Genomsequenzierung),
participating providers submit a **clinical data set (KDK, Klinischer Datenkranz)** for each case to
BfArM. For rare diseases this is the *RareDiseases* submission. In a data integration centre, much of
it already exists in the profiles of this module. This page shows where.

### Basis and direction

* **Target:** BfArM schema [MVGenomseq_KDK v2.3](https://github.com/BfArM-MVH/MVGenomseq_KDK/tree/v2.3/KDK),
  parts `RareDiseasesCase`, `RareDiseasesPlan` and `RareDiseasesFollowUp`. Its structure is the logical
  model [mii-lm-seltene-mvgenomseq](StructureDefinition-mii-lm-seltene-mvgenomseq.html), with field names
  unchanged from the JSON schema.
* **Direction:** from a profile of this module to a KDK field, i.e. the ETL path of a data integration
  centre that builds a submission from its FHIR data. Machine-readable in the ConceptMap
  [mii-cm-seltene-to-mvgenomseq](ConceptMap-mii-cm-seltene-to-mvgenomseq.html).
* **Codes:** the therapy recommendations carry the MVGenomSeq categories as slices of their own, but
  with this module's codes (`gene-therapy`, `early-detection`). The translation into the KDK values
  (`genetic`, `earlyDetection`) is
  [mii-cm-seltene-therapieempfehlung-to-mvgenomseq](ConceptMap-mii-cm-seltene-therapieempfehlung-to-mvgenomseq.html).
* **Reverse direction:** importing a KDK submission into a data integration centre (KDK → MII) is
  maintained as an executable StructureMap by the community project
  [MVGenomSeq-on-FHIR](https://github.com/BIH-CEI/MVGenomSeq-on-FHIR). It is still a draft there.

### Scope

As in the Oncology module, the mapping covers only what this module carries:

* `metaData` (submission, declaration of participation, insurance, birth date, residence) belongs to
  the **Person** and **Consent** modules.
* `molecular` (variants) belongs to the **Molecular Genetics Report** module; its gaps are in HDB-976.

### Mapping

The *Relationship* column gives the ConceptMap equivalence. *Derived* means the KDK value is computed
from the source element by the rule in the note, not copied. Notes are in German, as in the
ConceptMap; the KDK is a German national data set.

<!-- BEGIN GENERATED: mvgs-mapping (scripts/generate-mvgenomseq-mapping.py) -->
**Coverage:** 33 of 50 KDK fields have a source in this module, including 14 of the 18 required ones (required once the section is submitted). The rest: 11 in other modules, 6 gaps in the MII core data set, 0 open.

| KDK field | Required | Source in this module | Relationship | Note (German) |
|---|---|---|---|---|
| `case.diagnosisRd.phenotypes.system` |  | [hpo-assessment](StructureDefinition-mii-pr-seltene-hpo-assessment.html) · `Observation.code.coding.system` | equivalent |  |
| `case.diagnosisRd.phenotypes.version` | yes | [hpo-assessment](StructureDefinition-mii-pr-seltene-hpo-assessment.html) · `Observation.code.coding.version` | equivalent | Im KDK Pflicht. Ohne Version im Quelldatum muss das DIZ die verwendete HPO-Version ergänzen. |
| `case.diagnosisRd.phenotypes.code` | yes | [hpo-assessment](StructureDefinition-mii-pr-seltene-hpo-assessment.html) · `Observation.code.coding.code` | equivalent | Nur beobachtete Merkmale melden; als ausgeschlossen dokumentierte [component:status = Absent] gehören nicht in den KDK. |
|  |  | [symptom-condition](StructureDefinition-mii-pr-seltene-symptom-condition.html) · `Condition.code.coding:hpoCoding.code` | equivalent | Symptome mit HPO-Kodierung zählen als Phänotypen. |
| `case.diagnosisRd.phenotypes.display` |  | [hpo-assessment](StructureDefinition-mii-pr-seltene-hpo-assessment.html) · `Observation.code.coding.display` | equivalent |  |
| `case.diagnosisRd.phenotypes.text` |  | [hpo-assessment](StructureDefinition-mii-pr-seltene-hpo-assessment.html) · `Observation.note.text` | approximate | Freitext; nur übernehmen, wenn die Anmerkung den Phänotyp beschreibt. |
| `case.diagnosisRd.symptomOnsetDate` | yes | [symptom-condition](StructureDefinition-mii-pr-seltene-symptom-condition.html) · `Condition.onset[x]:onsetDateTime` | KDK coarser | Frühester Beginn über alle Symptome des Falls, auf JJJJ-MM gekürzt. |
|  |  | [symptom-condition](StructureDefinition-mii-pr-seltene-symptom-condition.html) · `Condition.onset[x]:onsetPeriod.start` | KDK coarser | Wie onsetDateTime; bei Zeitraum dessen Beginn. |
| `case.diagnosisRd.diagnosticAssessment` | yes | [genetic-diagnosis](StructureDefinition-mii-pr-seltene-genetic-diagnosis.html) · `Condition.verificationStatus` | derived | confirmed = confirmedGeneticDiagnosis, provisional oder differential = suspectedGeneticDiagnosis. partialGeneticDiagnosis und furtherGeneticDiagnosticRecommended sind aus dem Status nicht ableitbar. |
| `case.diagnosisRd.diagnoses` | yes | [clinical-diagnosis](StructureDefinition-mii-pr-seltene-clinical-diagnosis.html) · `Condition.code.coding:icd10-gm` | equivalent | Im KDK Pflicht mit code, system, version. |
|  |  | [clinical-diagnosis](StructureDefinition-mii-pr-seltene-clinical-diagnosis.html) · `Condition.code.coding:orphanet` | equivalent | Im KDK Pflicht. |
|  |  | [clinical-diagnosis](StructureDefinition-mii-pr-seltene-clinical-diagnosis.html) · `Condition.code.coding:alpha-id` | equivalent | Im KDK Pflicht. Slice aus dem Basisprofil Diagnose. |
|  |  | [genetic-diagnosis](StructureDefinition-mii-pr-seltene-genetic-diagnosis.html) · `Condition.code.coding:icd10-gm` | equivalent | Im KDK Pflicht mit code, system, version. |
|  |  | [genetic-diagnosis](StructureDefinition-mii-pr-seltene-genetic-diagnosis.html) · `Condition.code.coding:orphanet` | equivalent | Im KDK Pflicht. |
|  |  | [genetic-diagnosis](StructureDefinition-mii-pr-seltene-genetic-diagnosis.html) · `Condition.code.coding:alpha-id` | equivalent | Im KDK Pflicht. Slice aus dem Basisprofil Diagnose. |
| `case.diagnosisRd.noMatchingCodeExists` |  | [clinical-diagnosis](StructureDefinition-mii-pr-seltene-clinical-diagnosis.html) · `Condition.code.coding:orphanet` | derived | true, wenn für die Erkrankung kein spezifischer ORPHAcode existiert und ein unspezifischer gesetzt wurde. |
|  |  | [genetic-diagnosis](StructureDefinition-mii-pr-seltene-genetic-diagnosis.html) · `Condition.code.coding:orphanet` | derived | true, wenn für die Erkrankung kein spezifischer ORPHAcode existiert und ein unspezifischer gesetzt wurde. |
| `plan.carePlanRd.molecularBoardDecisionDate` | yes | [therapieplan](StructureDefinition-mii-pr-seltene-therapieplan.html) · `CarePlan.created` | derived | Das Modul führt das Datum des Beschlusses als Erstellungsdatum des Plans. |
| `plan.carePlanRd.studyRecommended` | yes | [therapieplan](StructureDefinition-mii-pr-seltene-therapieplan.html) · `CarePlan.activity:Studieneinschlussempfehlung` | derived | true, sobald der Plan eine Studieneinschlussempfehlung enthält. |
| `plan.carePlanRd.counsellingRecommended` | yes | [therapieplan](StructureDefinition-mii-pr-seltene-therapieplan.html) · `CarePlan.activity:NichtMedikamentoesTherapie` | derived | true, wenn eine referenzierte Empfehlung code = SNOMED 79841006 Genetic counseling oder ein Unterkonzept trägt. |
| `plan.carePlanRd.reEvaluationRecommended` | yes | [therapieplan](StructureDefinition-mii-pr-seltene-therapieplan.html) · `CarePlan.activity:NichtMedikamentoesTherapie` | derived | true, wenn eine referenzierte Empfehlung eine Reevaluation empfiehlt. SNOMED hat dafür kein spezifisches Konzept; Vorschlag SNOMED 386053000 Evaluation procedure mit code.text. |
| `plan.carePlanRd.therapyRecommended` | yes | [therapieplan](StructureDefinition-mii-pr-seltene-therapieplan.html) · `CarePlan.activity:MedikamentoesTherapie` | derived | true, sobald der Plan mindestens eine Therapieempfehlung mit MVGenomSeq-Therapiestrategie enthält. Empfehlungen zu Beratung, Reevaluation oder Versorgung tragen keine Strategie und zählen nicht. |
|  |  | [therapieplan](StructureDefinition-mii-pr-seltene-therapieplan.html) · `CarePlan.activity:NichtMedikamentoesTherapie` | derived | Nur Empfehlungen mit category:MVGenomSeqTherapieStrategie; siehe MedikamentoesTherapie. |
| `plan.carePlanRd.clinicalManagementRecommended` | yes | [therapieplan](StructureDefinition-mii-pr-seltene-therapieplan.html) · `CarePlan.activity:NichtMedikamentoesTherapie` | derived | true, wenn eine referenzierte Empfehlung eine Überweisung oder Anbindung empfiehlt, code = SNOMED 3457005 Patient referral oder ein Unterkonzept. |
| `plan.recommendedStudies.identifier` |  | [studieneinschluss-anfrage](StructureDefinition-mii-pr-seltene-studieneinschluss-anfrage.html) · `ServiceRequest.id` | derived |  |
| `plan.recommendedStudies.register` |  | [studieneinschluss-anfrage](StructureDefinition-mii-pr-seltene-studieneinschluss-anfrage.html) · `ServiceRequest.supportingInfo:Studie` | derived | Aus dem identifier.system der Studie ableiten [NCT, DRKS, EU CT]; unbekannte Studie = yesButStudyIsUnknown. |
| `plan.recommendedStudies.name` |  | [studieneinschluss-anfrage](StructureDefinition-mii-pr-seltene-studieneinschluss-anfrage.html) · `ServiceRequest.supportingInfo:Studie` | derived | ResearchStudy.title der referenzierten Studie. |
| `plan.recommendedStudies.id` |  | [studieneinschluss-anfrage](StructureDefinition-mii-pr-seltene-studieneinschluss-anfrage.html) · `ServiceRequest.supportingInfo:Studie` | derived | ResearchStudy.identifier der referenzierten Studie. |
| `plan.recommendedTherapies.identifier` |  | [therapieempfehlung](StructureDefinition-mii-pr-seltene-therapieempfehlung.html) · `MedicationRequest.id` | derived | Beliebige stabile Kennung; die Ressourcen-Id genügt. |
|  |  | [therapieempfehlung-nicht-medikamentoes](StructureDefinition-mii-pr-seltene-therapieempfehlung-nicht-medikamentoes.html) · `ServiceRequest.id` | derived | Nur Empfehlungen mit category:MVGenomSeqTherapieStrategie werden zu recommendedTherapies; Beratung, Reevaluation und Versorgung gehen in carePlanRd. |
|  |  | [therapieempfehlung-kombination](StructureDefinition-mii-pr-seltene-therapieempfehlung-kombination.html) · `RequestGroup.id` | derived | Die Kombination ist eine Empfehlung mit strategy = combination. |
| `plan.recommendedTherapies.type` |  | [therapieempfehlung](StructureDefinition-mii-pr-seltene-therapieempfehlung.html) · `MedicationRequest.category:MVGenomSeqTherapieTyp` | equivalent | Codes über mii-cm-seltene-therapieempfehlung-to-mvgenomseq übersetzen. |
|  |  | [therapieempfehlung-nicht-medikamentoes](StructureDefinition-mii-pr-seltene-therapieempfehlung-nicht-medikamentoes.html) · `ServiceRequest.category:MVGenomSeqTherapieTyp` | equivalent | Codes über mii-cm-seltene-therapieempfehlung-to-mvgenomseq übersetzen. |
| `plan.recommendedTherapies.strategy` |  | [therapieempfehlung](StructureDefinition-mii-pr-seltene-therapieempfehlung.html) · `MedicationRequest.category:MVGenomSeqTherapieStrategie` | equivalent | Codes über mii-cm-seltene-therapieempfehlung-to-mvgenomseq übersetzen [gene-therapy = genetic]. |
|  |  | [therapieempfehlung-nicht-medikamentoes](StructureDefinition-mii-pr-seltene-therapieempfehlung-nicht-medikamentoes.html) · `ServiceRequest.category:MVGenomSeqTherapieStrategie` | equivalent | Codes über mii-cm-seltene-therapieempfehlung-to-mvgenomseq übersetzen [early-detection = earlyDetection]. |
| `plan.recommendedTherapies.strategyOther` |  | [therapieempfehlung-nicht-medikamentoes](StructureDefinition-mii-pr-seltene-therapieempfehlung-nicht-medikamentoes.html) · `ServiceRequest.code.text` | approximate | Nur bei strategy = other. |
| `plan.recommendedTherapies.strategyCombination` |  | [therapieempfehlung-kombination](StructureDefinition-mii-pr-seltene-therapieempfehlung-kombination.html) · `RequestGroup.action.resource` | approximate | Freitext aus den referenzierten Einzelempfehlungen zusammensetzen. |
| `followUp.followUpRds.followUpDate` | yes | [hpo-assessment](StructureDefinition-mii-pr-seltene-hpo-assessment.html) · `Observation.effective[x]` | derived | Datum der Verlaufserhebung; bei mehreren Beobachtungen eines Termins deren gemeinsames Datum. |
| `followUp.followUpRds.phenotypes.system` |  | [hpo-assessment](StructureDefinition-mii-pr-seltene-hpo-assessment.html) · `Observation.code.coding.system` | equivalent |  |
| `followUp.followUpRds.phenotypes.version` |  | [hpo-assessment](StructureDefinition-mii-pr-seltene-hpo-assessment.html) · `Observation.code.coding.version` | equivalent |  |
| `followUp.followUpRds.phenotypes.code` |  | [hpo-assessment](StructureDefinition-mii-pr-seltene-hpo-assessment.html) · `Observation.code.coding.code` | equivalent | Verlaufsmeldung: Phänotypen zum Zeitpunkt followUpDate. |
| `followUp.followUpRds.phenotypes.display` |  | [hpo-assessment](StructureDefinition-mii-pr-seltene-hpo-assessment.html) · `Observation.code.coding.display` | equivalent |  |
| `followUp.followUpRds.phenotypes.text` |  | [hpo-assessment](StructureDefinition-mii-pr-seltene-hpo-assessment.html) · `Observation.note.text` | approximate | Freitext; nur übernehmen, wenn die Anmerkung den Phänotyp beschreibt. |
| `followUp.followUpRds.phenotypes.change` | yes | [hpo-assessment](StructureDefinition-mii-pr-seltene-hpo-assessment.html) · `Observation.component:status.value[x]` | derived | Abgeleitet aus dem Vergleich zweier Erhebungen: neu beobachtet = newlyAdded, Present zu Absent = noLongerObserved, unverändert = unchanged. improved/degraded nur über component:severity ableitbar. |
| `followUp.followUpRds.diagnosisEstablished` | yes | [clinical-diagnosis](StructureDefinition-mii-pr-seltene-clinical-diagnosis.html) · `Condition.verificationStatus` | derived | confirmed = true, sonst false. |
|  |  | [genetic-diagnosis](StructureDefinition-mii-pr-seltene-genetic-diagnosis.html) · `Condition.verificationStatus` | derived | confirmed = true, sonst false. |
| `followUp.followUpRds.diseaseProgression` |  | [clinical-impression](StructureDefinition-mii-pr-seltene-clinical-impression.html) · `ClinicalImpression.summary` | approximate | Freitext der Verlaufsbeurteilung. |
<!-- END GENERATED: mvgs-mapping -->

### KDK fields without a source in this module

A ConceptMap in this direction cannot express fields without a source, so they are listed here.
*Gap* means the MII core data set does not carry the item today. *To be decided* means the mapping is
open and needs a decision by the module team.

<!-- BEGIN GENERATED: mvgs-gaps (scripts/generate-mvgenomseq-mapping.py) -->
| KDK field | Required | Category | Reason |
|---|---|---|---|
| `case.diagnosisRd.molecularBoardDecisionDate` | yes | other module | Molecular Genetics module: the diagnostic case conference results in the genetic test request (mii-pr-molgen-anforderung-genetischer-test). Out of scope for this module; the care plan carries only the therapy conference. |
| `case.diagnosisRd.diagnosticExtent` | yes | other module | Molecular Genetics module: requested extent in mii-pr-molgen-anforderung-genetischer-test. |
| `case.diagnosisRd.libraryType` | yes | other module | Molecular Genetics module: sequencing type in mii-pr-molgen-anforderung-genetischer-test or mii-pr-molgen-genomic-study-analysis. |
| `case.diagnosisRd.diagnosisGmfcs` |  | gap | No profile. GMFCS is not an ICF category; an Observation profile is proposed in HDB-975. |
| `case.priorRds.genomicTestType` |  | other module | Molecular Genetics module: type of test in mii-pr-molgen-genomic-study (Procedure.code) or method in mii-pr-molgen-genomic-study-analysis. No value set for the KDK list there. |
| `case.priorRds.genomicStudyType` |  | other module | Molecular Genetics module: single/duo/trio follows from the persons tested in mii-pr-molgen-genomic-study. |
| `case.priorRds.diagnosticDate` |  | other module | Molecular Genetics module: mii-pr-molgen-genomic-study, Procedure.performed[x]. |
| `case.priorRds.diagnosticResult` |  | other module | Molecular Genetics module: result in mii-pr-molgen-molekulargenetischer-befundbericht; no value set for the KDK result categories there. |
| `case.priorRds.hospitalizationPeriods` |  | gap | Banded count over five years, not derivable from encounters (HDB-975). |
| `case.priorRds.hospitalizationDuration` |  | gap | Banded duration, not derivable from encounters (HDB-975). |
| `case.priorRds.zseContactDate` |  | gap | First contact with a centre for rare diseases. Derivable from encounters (Base module) only if the centre is identifiable. |
| `plan.carePlanRd.clinicalManagementDescriptions` |  | gap | The care setting (specialised outpatient clinic, university clinic, local or other rare disease centre, GP, specialist) has neither a SNOMED counterpart nor a value set. Proposal: a module code system bound to ServiceRequest.performerType of the non-medication recommendation. |
| `plan.recommendedStudies.variants` |  | other module | Reference to variants: Molecular Genetics module. |
| `plan.recommendedTherapies.variants` |  | other module | Reference to variants: Molecular Genetics module. |
| `followUp.followUpRds.gmfcs` |  | gap | As diagnosisGmfcs (HDB-975). |
| `followUp.followUpRds.vitalStatus` | yes | other module | Person module: Patient.deceased[x]. |
| `followUp.followUpRds.deathDate` |  | other module | Person module: Patient.deceasedDateTime, truncated to YYYY-MM. |
<!-- END GENERATED: mvgs-gaps -->

### Maintenance

When BfArM changes the schema, three steps are needed: update the logical model, review the
ConceptMap and run `scripts/generate-mvgenomseq-mapping.py`. A new KDK field without a source then
shows up as *not yet assessed* until it is categorised in the script's gap list.
