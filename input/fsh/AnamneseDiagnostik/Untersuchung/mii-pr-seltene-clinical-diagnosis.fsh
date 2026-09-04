// Clinical Diagnosis Profile for Rare Diseases with HPO phenotype codes
Profile: MII_PR_Seltene_ClinicalDiagnosis
Parent: MII_PR_Diagnose_Condition
Id: mii-pr-seltene-clinical-diagnosis
Title: "MII PR SE Clinical Diagnosis"
Description: "Profile for clinical diagnosis of rare diseases with HPO phenotype codes. This profile is used for clinically diagnosed rare diseases based on phenotypic presentation."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active

// Inherit all constraints from parent Diagnose profile
* clinicalStatus MS
* verificationStatus MS
// category BEWUSST OHNE modulweite Bindung. Am 2026-09-02 war hier kurzzeitig
// MII_VS_Seltene_ClinicalDiagnosisCategory extensible gebunden; die Bindung wurde noch am
// selben Tag zurueckgenommen, weil sie einen Denkfehler zementiert haette:
// Condition.category beantwortet in FHIR die Frage nach der ROLLE der Condition
// im Datensatz — der Kurztext lautet woertlich "problem-list-item |
// encounter-diagnosis" — und nicht die Frage, was fuer eine Krankheit vorliegt.
// Die Krankheitsart steht in Condition.code, wo sie ueber ICD-10-GM, Orpha und
// OMIM ohnehin kodiert ist. Es bleibt bei der extensible-Bindung des
// FHIR-Standards an condition-category.
* category 1..* MS
* severity MS
* code MS
* bodySite MS
* subject MS
* encounter MS
* onset[x] MS
* abatement[x] MS
* recordedDate MS
* recorder MS
* asserter MS
* stage MS
* evidence MS
* note MS

// No additional category slicing needed for clinical diagnosis
// The parent profile already provides category

// Add HPO slice to the existing code slices
* code.coding ^slicing.discriminator[+].type = #pattern
* code.coding ^slicing.discriminator[=].path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    hpo 0..* MS
* code.coding[hpo] from mii-vs-seltene-hpo-phenotypic-observation-codes (required)
* code.coding[hpo] ^patternCoding.system = "http://human-phenotype-ontology.org"
* code.coding[hpo] ^short = "HPO Phenotype code"
* code.coding[hpo] ^definition = "Human Phenotype Ontology code describing the phenotypic manifestation of the rare disease"
* code.coding[hpo].system 1.. MS
* code.coding[hpo].code 1.. MS
* code.coding[hpo].display MS

// Constraint: Clinical diagnosis should have at least one HPO code when dealing with rare diseases
* code.coding[hpo] ^comment = "For rare diseases, HPO codes should be provided to describe the phenotypic presentation"

// Evidence should reference Observations with HPO-coded symptoms
* evidence.code MS
* evidence.code ^short = "Manifestation/symptom supporting the diagnosis"
* evidence.code.coding from mii-vs-seltene-hpo-phenotypic-observation-codes (extensible)
* evidence.detail MS
* evidence.detail ^short = "Reference to the findings supporting or refuting the diagnosis"
// Erweitert 2026-09-04 um DiagnosticReport. Der IG Publisher meldete
// "Invalid Resource target type. Found DiagnosticReport, but expected one of
// ([Observation])" fuer das Ausschlussbeispiel Metabolische Myopathie, das
// eine unauffaellige Muskelbiopsie als Beleg fuehrt — ein Befundbericht ist
// legitime klinische Evidenz. Das Schwesterprofil GeneticDiagnosis erlaubt
// beide Typen seit jeher. Eine Lockerung: bisher gueltige Instanzen bleiben es.
* evidence.detail only Reference(Observation or DiagnosticReport)
* evidence.detail ^comment = "Typischerweise HPO-kodierte Symptom-Observations; ein DiagnosticReport ist zulaessig, wenn der Beleg ein Befundbericht ist (etwa eine Biopsie)."

// Stage assessment can reference HPO severity assessments
* stage.assessment MS
* stage.assessment ^short = "Reference to HPO-based severity assessment"
* stage.type MS
* stage.type ^short = "Stage type (e.g., severity, progression)"

// Extensions for rare disease specific information would be defined here if needed
// Currently using standard MII Diagnose extension set

// Mapping to Logical Model
Mapping: FHIR-SE-ClinicalDiagnosis
Id: SE-LogicalModel
Title: "Mapping FHIR zu Seltene Erkrankungen Logical Model"
Source: MII_PR_Seltene_ClinicalDiagnosis
Target: "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-lm-seltene"
* -> "anamneseUndDiagnostik.klinischeDiagnose" "Klinische Diagnose"
* code.coding[icd10-gm] -> "anamneseUndDiagnostik.klinischeDiagnose" "ICD-10-GM Diagnose"
* code.coding[orphanet] -> "anamneseUndDiagnostik.klinischeDiagnose" "Orpha-Code Diagnose"
* code.coding[hpo] -> "anamneseUndDiagnostik.phaenotypisierung.hpoTerm" "HPO-Term des Symptoms"
* extension[assertedDate].valueDateTime -> "anamneseUndDiagnostik.klinischeDiagnose.feststellungsdatumKlinischeDia" "Feststellungsdatum klinische SE-Diagnose"
* onset[x] -> "anamneseUndDiagnostik.klinischeDiagnose.alterKlinischeDia" "Alter/Zeitpunkt bei klinischer SE-Diagnose"
* onsetDateTime -> "anamneseUndDiagnostik.klinischeDiagnose.feststellungsdatumKlinischeDia" "Feststellungsdatum klinische SE-Diagnose"
* evidence.code -> "anamneseUndDiagnostik.phaenotypisierung.hpoTerm" "Unterstützende HPO-Symptome"
* evidence.detail -> "anamneseUndDiagnostik.phaenotypisierung" "Verweis auf Phänotypisierung"
* subject -> "persoenlicheInfosIndexpatient" "Patient/Indexpatient"
* encounter -> "anamneseUndDiagnostik.untersuchungsdatum" "Untersuchungsdatum"