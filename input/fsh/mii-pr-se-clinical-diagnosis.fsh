// Clinical Diagnosis Profile for Rare Diseases with HPO phenotype codes
Profile: MII_PR_SE_ClinicalDiagnosis
Parent: MII_PR_Diagnose_Condition
Id: mii-pr-se-clinical-diagnosis
Title: "MII PR SE Clinical Diagnosis"
Description: "Profile for clinical diagnosis of rare diseases with HPO phenotype codes. This profile is used for clinically diagnosed rare diseases based on phenotypic presentation."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-se-clinical-diagnosis"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft

// Inherit all constraints from parent Diagnose profile
* clinicalStatus MS
* verificationStatus MS
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
* code.coding[hpo] from mii-vs-se-hpo-phenotypic-observation-codes (required)
* code.coding[hpo] ^patternCoding.system = "http://hpo.jax.org/app/"
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
* evidence.code.coding from mii-vs-se-hpo-phenotypic-observation-codes (extensible)
* evidence.detail MS
* evidence.detail ^short = "Reference to Observation resources containing HPO-coded symptoms"
* evidence.detail only Reference(Observation)

// Stage assessment can reference HPO severity assessments
* stage.assessment MS
* stage.assessment ^short = "Reference to HPO-based severity assessment"
* stage.type MS
* stage.type ^short = "Stage type (e.g., severity, progression)"

// Extensions for rare disease specific information would be defined here if needed
// Currently using standard MII Diagnose extension set