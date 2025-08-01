Profile:     MII_PR_SE_Symptom_Condition
Id:          mii-pr-se-symptom-condition
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
* code from mii-vs-se-hpo-phenotypic-observation-codes (extensible)
* code ^short = "HPO-basierter Symptom-Erkrankungs-Code"
* code ^definition = "Code zur Identifikation der Symptom-Erkrankung, vorzugsweise unter Verwendung von Human Phenotype Ontology (HPO) Codes"

// Severity constraints
* severity from mii-vs-se-hpo-severity-values (extensible)
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
* evidence.code from mii-vs-se-hpo-phenotypic-observation-codes (extensible)
* evidence.detail only Reference(Observation or DocumentReference or DiagnosticReport)
* evidence.detail ^short = "Unterstützende Beobachtungen oder Dokumente"

// Stage constraints for syndrome progression
* stage ^short = "Stadium oder Progression der Symptom-Erkrankung"
* stage.summary from mii-vs-se-hpo-severity-values (extensible)
* stage.assessment only Reference(Observation or DiagnosticReport)

// Body site constraints
* bodySite ^short = "Anatomische Lokalisation des Symptoms"
* bodySite ^definition = "Die anatomische Lokalisation, wo sich das Symptom manifestiert"

// Note constraints
* note ^short = "Zusätzliche Anmerkungen zur Symptom-Erkrankung"
* note ^definition = "Zusätzliche Beschreibung der Symptom-Erkrankung, die in anderen Feldern nicht erfasst ist"

