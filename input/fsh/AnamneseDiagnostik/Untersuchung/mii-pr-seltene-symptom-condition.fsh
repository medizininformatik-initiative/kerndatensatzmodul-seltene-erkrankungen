Profile:     MII_PR_Seltene_Symptom_Condition
Id:          mii-pr-seltene-symptom-condition
Parent:      MII_PR_Symptom_Condition
// Parent seit 2026-11-12 das Condition-Profil des Moduls Symptom / Klinischer
// Phaenotyp (2027.0.0-ballot). Bis dahin bewusst direkt Condition, weil das
// Symptom-Modul nur als Release Candidate vorlag (Issue #32). Von dort kommen jetzt
// der MS-Slice onsetPeriod mit der Lebensphase (http://fhir.de/StructureDefinition/
// lebensphase) auf Period.start und Period.end sowie die assertedDate-Extension.
Title:       "MII Profile SE Symptom Condition"
Description: "Profile for symptom-based conditions in the context of rare diseases. This profile captures symptomatic conditions with temporal characteristics, complementing the HPO Assessment Observation profile."

* insert PR_CS_VS_Version
* insert Publisher
* insert CRMIProfileMetadata
* ^experimental = false
* ^status = #active

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
    icd10GMCoding 0..1 MS and
    mondoCoding 0..1 MS

// HPO Coding slice with pattern
* code.coding[hpoCoding] ^short = "HPO Code für das Symptom"
* code.coding[hpoCoding] ^definition = "Human Phenotype Ontology Code zur Beschreibung des phänotypischen Symptoms"
// Bevorzugte HPO-URI laut HL7-NamingSystem (THO), wie Alias $HPO, alle HPO-ValueSets
// und Beispiele dieses Moduls. Bis 2026-11-12 stand hier die nicht bevorzugte
// OBO-URI http://purl.obolibrary.org/obo/hp.owl, in die kein Coding des Moduls fiel.
* code.coding[hpoCoding] ^patternCoding.system = $HPO
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

// MONDO Coding slice with pattern - for international interoperability
* code.coding[mondoCoding] ^short = "MONDO Code für das Symptom"
* code.coding[mondoCoding] ^definition = "Monarch Disease Ontology (MONDO) Code für internationale Interoperabilität. MONDO harmonisiert SNOMED, ORDO, OMIM und ICD automatisch und ermöglicht die Integration mit internationalen Projekten wie Phenopackets und GA4GH."
* code.coding[mondoCoding] ^patternCoding.system = $MONDO
* code.coding[mondoCoding].system 1..1
* code.coding[mondoCoding].code 1..1
* code.coding[mondoCoding].display MS

// Severity constraints
* severity from mii-vs-seltene-hpo-severity (extensible)
* severity ^short = "Schweregrad der Symptom-Erkrankung"
* severity ^definition = "Schweregradbewertung der Symptom-Erkrankung unter Verwendung von HPO-Schweregrad-Werten"

// Temporal constraints - key feature for symptom conditions
// string entfaellt (2026-11-12): Die Lebensphase war bis dahin auf onsetString
// gemappt, also Freitext ohne Kodierung. Sie liegt jetzt kodiert in der
// fhir.de-Extension auf onsetPeriod.start (lebensphase-von) und .end (lebensphase-bis).
* onset[x] only dateTime or Age or Period or Range
* onset[x] ^short = "Beginn der Symptom-Erkrankung"
* onset[x] ^definition = "Geschätztes oder tatsächliches Datum, Alter oder Zeitraum, wann die Symptom-Erkrankung begann. Die Lebensphase steht kodiert in der Extension lebensphase auf onsetPeriod.start bzw. onsetPeriod.end."
* onsetPeriod.start.extension[lebensphase-von] ^short = "Lebensphase bei Symptombeginn"
* onsetPeriod.end.extension[lebensphase-bis] ^short = "Lebensphase bei Symptomende"

* abatement[x] only dateTime or Age or Period or Range
* abatement[x] ^short = "Auflösung der Symptom-Erkrankung"
* abatement[x] ^definition = "Datum, Alter oder Zeitraum, wann die Symptom-Erkrankung abgeklungen ist oder in Remission ging"

// Evidence constraints
* evidence ^short = "Unterstützende Evidenz für die Symptom-Erkrankung"
* evidence.code from mii-vs-seltene-hpo-phenotypic-observation-codes (extensible)
* evidence.detail only Reference(Observation or DocumentReference or DiagnosticReport)
* evidence.detail ^short = "Unterstützende Beobachtungen oder Dokumente"

// Stage constraints for syndrome progression
* stage ^short = "Stadium oder Progression der Symptom-Erkrankung"
* stage.summary from mii-vs-seltene-hpo-severity (extensible)
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
* -> "anamneseUndDiagnostik.phaenotypisierung" "Phänotypisierung als Condition"
* code.coding[hpoCoding] -> "anamneseUndDiagnostik.phaenotypisierung.hpoTerm" "HPO-Term des Symptoms"
* code.coding[snomedCoding] -> "anamneseUndDiagnostik.phaenotypisierung" "SNOMED CT Symptom"
* code.coding[icd10GMCoding] -> "anamneseUndDiagnostik.phaenotypisierung" "ICD-10-GM Symptom"
* code.coding[mondoCoding] -> "anamneseUndDiagnostik.phaenotypisierung" "MONDO Symptom (internationale Interoperabilität)"
* severity -> "anamneseUndDiagnostik.phaenotypisierung.verlaufSymptom" "Schweregrad/Verlauf"
* onsetDateTime -> "anamneseUndDiagnostik.phaenotypisierung.zeitraumSymptom.zeitraumSymptom" "Startdatum des Symptoms"
* onsetPeriod.start -> "anamneseUndDiagnostik.phaenotypisierung.zeitraumSymptom.zeitraumSymptom" "Beginn Symptomzeitraum"
* onsetPeriod.end -> "anamneseUndDiagnostik.phaenotypisierung.zeitraumSymptom.zeitraumSymptom" "Ende Symptomzeitraum"
* onsetAge -> "anamneseUndDiagnostik.phaenotypisierung.zeitraumSymptom.alterSymptom" "Alter bei Symptombeginn"
* onsetPeriod.start.extension[lebensphase-von].valueCodeableConcept -> "anamneseUndDiagnostik.phaenotypisierung.zeitraumSymptom.lebensphase" "Lebensphase bei Symptombeginn"
* onsetPeriod.end.extension[lebensphase-bis].valueCodeableConcept -> "anamneseUndDiagnostik.phaenotypisierung.zeitraumSymptom.lebensphase" "Lebensphase bei Symptomende"
* abatementDateTime -> "anamneseUndDiagnostik.phaenotypisierung.zeitraumSymptom" "Enddatum des Symptoms"
* evidence.code -> "anamneseUndDiagnostik.phaenotypisierung.hpoTerm" "Unterstützende HPO-Symptome"
* evidence.detail -> "anamneseUndDiagnostik.phaenotypisierung" "Verweis auf Beobachtungen"
* subject -> "persoenlicheInfosIndexpatient" "Patient/Indexpatient"
* encounter -> "anamneseUndDiagnostik.untersuchungsdatum" "Untersuchungskontakt"
* recordedDate -> "anamneseUndDiagnostik.untersuchungsdatum" "Dokumentationsdatum"
