Profile:     MII_PR_Seltene_Symptom_Condition
Id:          mii-pr-seltene-symptom-condition
Parent:      Condition
Title:       "MII Profile SE Symptom Condition"
Description: "Profile for symptom-based conditions in the context of rare diseases. This profile captures symptomatic conditions with temporal characteristics, complementing the HPO Assessment Observation profile."

* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft

// Core elements
* id MS
* meta MS
* identifier MS
* clinicalStatus MS
* verificationStatus MS
* category MS
* severity MS
* code MS
* bodySite MS
* subject MS
* encounter MS
* onset[x] MS
* abatement[x] MS
* recordedDate MS

* stage MS
* evidence MS
* note MS

// Subject constraints
* subject 1..1
* subject only Reference(Patient)
* subject ^short = "Patient mit der Symptom-Erkrankung"
* subject ^definition = "Referenz auf den Patienten, der diese Symptom-Erkrankung hat"

// Clinical status constraints
* clinicalStatus from http://hl7.org/fhir/ValueSet/condition-clinical (required)
* clinicalStatus ^short = "Klinischer Status der Symptom-Erkrankung"

// Verification status constraints  
* verificationStatus from http://hl7.org/fhir/ValueSet/condition-ver-status (required)
* verificationStatus ^short = "Verifikationsstatus der Symptom-Erkrankung"

// Category constraints - symptom-focused
* category 1..*
* category ^short = "Kategorie der Erkrankung - muss Symptom-Kategorie enthalten"
* category ^definition = "Kategoriecodes, die die Erkrankung klassifizieren, mit besonderem Fokus auf symptombezogene Kategorien"

// Code constraints - using HPO for symptom coding
* code 1..1 
* code from mii-vs-seltene-hpo-phenotypic-observation-codes (extensible)
* code ^short = "HPO-basierter Symptom-Erkrankungs-Code"
* code ^definition = "Code zur Identifikation der Symptom-Erkrankung, vorzugsweise unter Verwendung von Human Phenotype Ontology (HPO) Codes"
* code.coding MS 
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding ^slicing.description = "Slicing für verschiedene Codesysteme zur Symptom-Codierung"
* code.coding ^slicing.ordered = false
* code.coding contains 
    hpoCoding 0..1 MS and 
    snomedCoding 0..1 MS and 
    icd10GMCoding 0..1 MS

// HPO Coding slice with pattern
* code.coding[hpoCoding] ^short = "HPO Code für das Symptom"
* code.coding[hpoCoding] ^definition = "Human Phenotype Ontology Code zur Beschreibung des phänotypischen Symptoms"
* code.coding[hpoCoding] ^patternCoding.system = "http://purl.obolibrary.org/obo/hp.owl"
* code.coding[hpoCoding].system 1..1
* code.coding[hpoCoding].code 1..1
* code.coding[hpoCoding].display MS

// SNOMED CT Coding slice with pattern
* code.coding[snomedCoding] ^short = "SNOMED CT Code für das Symptom"
* code.coding[snomedCoding] ^definition = "SNOMED CT Code zur klinischen Beschreibung des Symptoms"
* code.coding[snomedCoding] ^patternCoding.system = "http://snomed.info/sct"
* code.coding[snomedCoding].system 1..1
* code.coding[snomedCoding].code 1..1
* code.coding[snomedCoding].display MS

// ICD-10-GM Coding slice with pattern
* code.coding[icd10GMCoding] ^short = "ICD-10-GM Code für das Symptom"
* code.coding[icd10GMCoding] ^definition = "ICD-10 German Modification Code für die Symptom-Klassifikation"
* code.coding[icd10GMCoding] ^patternCoding.system = "http://fhir.de/CodeSystem/bfarm/icd-10-gm"
* code.coding[icd10GMCoding].system 1..1
* code.coding[icd10GMCoding].code 1..1
* code.coding[icd10GMCoding].display MS


// Severity constraints
* severity from mii-vs-seltene-hpo-severity-values (extensible)
* severity ^short = "Schweregrad der Symptom-Erkrankung"
* severity ^definition = "Schweregradbewertung der Symptom-Erkrankung unter Verwendung von HPO-Schweregrad-Werten"

// Temporal constraints - key feature for symptom conditions
* onset[x] only dateTime or Age or Period or Range or string
* onset[x] ^short = "Beginn der Symptom-Erkrankung"
* onset[x] ^definition = "Geschätztes oder tatsächliches Datum, Alter, Zeitraum oder zeitliche Beschreibung, wann die Symptom-Erkrankung begann"

* abatement[x] only dateTime or Age or Period or Range or string 
* abatement[x] ^short = "Auflösung der Symptom-Erkrankung"
* abatement[x] ^definition = "Datum, Alter, Zeitraum oder zeitliche Beschreibung, wann die Symptom-Erkrankung abgeklungen ist oder in Remission ging"

// Evidence constraints
* evidence ^short = "Unterstützende Evidenz für die Symptom-Erkrankung"
* evidence.code from mii-vs-seltene-hpo-phenotypic-observation-codes (extensible)
* evidence.detail only Reference(Observation or DocumentReference or DiagnosticReport)
* evidence.detail ^short = "Unterstützende Beobachtungen oder Dokumente"

// Stage constraints for syndrome progression
* stage ^short = "Stadium oder Progression der Symptom-Erkrankung"
* stage.summary from mii-vs-seltene-hpo-severity-values (extensible)
* stage.assessment only Reference(Observation or DiagnosticReport)

// Body site constraints
* bodySite ^short = "Anatomische Lokalisation des Symptoms"
* bodySite ^definition = "Die anatomische Lokalisation, wo sich das Symptom manifestiert"

// Note constraints
* note ^short = "Zusätzliche Anmerkungen zur Symptom-Erkrankung"
* note ^definition = "Zusätzliche Beschreibung der Symptom-Erkrankung, die in anderen Feldern nicht erfasst ist"

// Mapping to Logical Model
Mapping: FHIR-SE-SymptomCondition
Id: SE-LogicalModel
Title: "Mapping FHIR zu Seltene Erkrankungen Logical Model"
Source: MII_PR_Seltene_Symptom_Condition
Target: "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/LogicalModel/Seltene"
* -> "AnamneseUndDiagnostik.Phaenotypisierung" "Phänotypisierung als Condition"
* code.coding[hpoCoding] -> "AnamneseUndDiagnostik.Phaenotypisierung.HPOTerm" "HPO-Term des Symptoms"
* code.coding[snomedCoding] -> "AnamneseUndDiagnostik.Phaenotypisierung" "SNOMED CT Symptom"
* code.coding[icd10GMCoding] -> "AnamneseUndDiagnostik.Phaenotypisierung" "ICD-10-GM Symptom"
* severity -> "AnamneseUndDiagnostik.Phaenotypisierung.VerlaufSymptom" "Schweregrad/Verlauf"
* onsetDateTime -> "AnamneseUndDiagnostik.Phaenotypisierung.ZeitraumSymptom.ZeitraumSymptom" "Startdatum des Symptoms"
* onsetPeriod.start -> "AnamneseUndDiagnostik.Phaenotypisierung.ZeitraumSymptom.ZeitraumSymptom" "Beginn Symptomzeitraum"
* onsetPeriod.end -> "AnamneseUndDiagnostik.Phaenotypisierung.ZeitraumSymptom.ZeitraumSymptom" "Ende Symptomzeitraum"
* onsetAge -> "AnamneseUndDiagnostik.Phaenotypisierung.ZeitraumSymptom.AlterSymptom" "Alter bei Symptombeginn"
* onsetString -> "AnamneseUndDiagnostik.Phaenotypisierung.ZeitraumSymptom.Lebensphase" "Lebensphase Symptom"
* abatementDateTime -> "Ende des Symptoms" "Enddatum des Symptoms"
* evidence.code -> "AnamneseUndDiagnostik.Phaenotypisierung.HPOTerm" "Unterstützende HPO-Symptome"
* evidence.detail -> "AnamneseUndDiagnostik.Phaenotypisierung" "Verweis auf Beobachtungen"
* subject -> "Patient" "Patient/Indexpatient"
* encounter -> "AnamneseUndDiagnostik.Untersuchungsdatum" "Untersuchungskontakt"
* recordedDate -> "AnamneseUndDiagnostik.Untersuchungsdatum" "Dokumentationsdatum"
