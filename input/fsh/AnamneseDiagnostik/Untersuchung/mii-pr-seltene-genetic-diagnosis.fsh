// Genetic Diagnosis Profile for Rare Diseases with OMIM codes and MolGen evidence
Profile: MII_PR_Seltene_GeneticDiagnosis
Parent: MII_PR_Diagnose_Condition
Id: mii-pr-seltene-genetic-diagnosis
Title: "MII PR SE Genetic Diagnosis"
Description: "Profile for genetically confirmed diagnosis of rare diseases with OMIM codes and links to MolGen variant/diagnostic implication resources. This profile is used when a rare disease diagnosis has been confirmed through genetic testing."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-genetic-diagnosis"
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

// Add specific category for genetic diseases
// Since the parent profile doesn't slice category, we just add as a required value
* category 1..* MS
* category = $SCT#782964007 "Genetic disease"
* category ^short = "Kategorisierung als genetische Erkrankung"
* category ^definition = "Pflicht-Kategorie zur Kennzeichnung als genetisch bestätigte Erkrankung"

// Add OMIM slice to the existing code slices
* code.coding ^slicing.discriminator[+].type = #pattern
* code.coding ^slicing.discriminator[=].path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    omim 0..* MS
* code.coding[omim] ^patternCoding.system = "http://omim.org"
* code.coding[omim] ^short = "OMIM disease code"
* code.coding[omim] ^definition = "Online Mendelian Inheritance in Man (OMIM) code for the genetic disease"
* code.coding[omim].system 1.. MS
* code.coding[omim].code 1.. MS
* code.coding[omim].display MS

// Verification status should typically be confirmed for genetic diagnoses
* verificationStatus ^comment = "For genetically confirmed diagnoses, verificationStatus should typically be 'confirmed'"

// Evidence must link to genetic findings
* evidence 1..* MS
* evidence ^short = "Genetic evidence supporting the diagnosis"
* evidence.code MS
* evidence.code ^short = "Type of genetic evidence"
* evidence.code.coding ^slicing.discriminator.type = #pattern
* evidence.code.coding ^slicing.discriminator.path = "$this"
* evidence.code.coding ^slicing.rules = #open
* evidence.code.coding contains
    geneticEvidence 0..1 MS
* evidence.code.coding[geneticEvidence] = $SCT#106221001 "Genetic finding"
* evidence.code.coding[geneticEvidence] ^short = "Indicates genetic evidence"

// Evidence details must reference MolGen resources
* evidence.detail 1..* MS
* evidence.detail ^short = "Reference to MolGen Variant or Diagnostic Implication"
* evidence.detail ^definition = "Must reference either MII PR MolGen Variante or MII PR MolGen DiagnostischeImplikation resources that contain the genetic findings supporting this diagnosis"
* evidence.detail only Reference(Observation or DiagnosticReport)
* evidence.detail ^comment = "Should reference: 1) MII PR MolGen Variante (Observation) for specific variant findings, or 2) MII PR MolGen DiagnostischeImplikation (DiagnosticReport) for comprehensive genetic diagnostic reports"

// Extensions for genetic-specific information
* extension contains 
    mii-ex-seltene-penetrance named penetrance 0..1 MS
* extension[penetrance] ^short = "Penetranz der genetischen Variante"
* extension[penetrance] ^definition = "Angabe zur Penetranz der genetischen Variante bei dieser Erkrankung"

// Apply invariant to ensure genetic evidence
* obeys se-genetic-evidence

Invariant: se-genetic-evidence
Description: "Genetic diagnosis must have at least one evidence.detail referencing a MolGen resource"
Expression: "evidence.exists() and evidence.detail.exists()"
Severity: #error

// Mapping to Logical Model
Mapping: FHIR-SE-GeneticDiagnosis
Id: SE-LogicalModel
Title: "Mapping FHIR zu Seltene Erkrankungen Logical Model"
Source: MII_PR_Seltene_GeneticDiagnosis
Target: "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/LogicalModel/Seltene"
* -> "AnamneseUndDiagnostik.GenetischeDiagnose" "Genetische Diagnose"
* code.coding[icd10-gm] -> "AnamneseUndDiagnostik.GenetischeDiagnose" "ICD-10-GM Diagnose"
* code.coding[orphanet] -> "AnamneseUndDiagnostik.GenetischeDiagnose" "Orpha-Code Diagnose"
* code.coding[omim] -> "AnamneseUndDiagnostik.GenetischeDiagnose" "OMIM-Code Diagnose"
* extension[assertedDate].valueDateTime -> "AnamneseUndDiagnostik.GenetischeDiagnose.FeststellungsdatumGenDia" "Feststellungsdatum genetische SE-Diagnose"
* onset[x] -> "AnamneseUndDiagnostik.GenetischeDiagnose.AlterGenDia" "Alter/Zeitpunkt bei genetischer SE-Diagnose"
* onsetDateTime -> "AnamneseUndDiagnostik.GenetischeDiagnose.FeststellungsdatumGenDia" "Feststellungsdatum genetische SE-Diagnose"
* evidence.code -> "AnamneseUndDiagnostik.MethodeDiagnosestellung" "Methode der Diagnosestellung"
* evidence.detail -> "Verweis auf MolGen Variante/DiagnostischeImplikation" "Genetische Befunde"
* subject -> "Patient" "Patient/Indexpatient"
* encounter -> "AnamneseUndDiagnostik.Untersuchungsdatum" "Untersuchungsdatum"
* extension[penetrance] -> "AnamneseUndDiagnostik.GenDiaFehlendePenetranz" "Genetische Diagnose mit fehlender Penetranz"