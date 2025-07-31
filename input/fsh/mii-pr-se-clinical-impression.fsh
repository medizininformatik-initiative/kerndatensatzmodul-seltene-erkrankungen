Profile:     MIIProfileSEClinicalImpression
Id:          mii-pr-se-clinical-impression
Parent:      ClinicalImpression
Title:       "MII Profile SE Clinical Impression"
Description: "Profile for clinical impressions in the context of rare diseases. This profile captures clinical assessments and suspected diagnoses based on phenotypic findings and symptoms."

* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft

// Core elements
* id MS
* meta MS
* identifier MS
* status MS
* code MS
* description MS
* subject MS
* encounter MS
* effective[x] MS
* date MS
* assessor MS
* problem MS
* investigation MS
* protocol MS
* summary MS
* finding MS
* prognosisCodeableConcept MS
* prognosisReference MS
* supportingInfo MS
* note MS

// Subject constraints
* subject 1..1
* subject only Reference(Patient)
* subject ^short = "Patient, der beurteilt wird"
* subject ^definition = "Referenz auf den Patienten, für den diese klinische Beurteilung erstellt wird"

// Status constraints
* status from http://hl7.org/fhir/ValueSet/clinicalimpression-status (required)
* status ^short = "Status der klinischen Beurteilung"

// Code constraints - clinical impression type
* code ^short = "Art der klinischen Beurteilung"
* code ^definition = "Kategorisiert die Art der klinischen Beurteilung, die erstellt wird"

// Description constraints
* description ^short = "Zusammenfassung der klinischen Beurteilung"
* description ^definition = "Eine Zusammenfassung der Beurteilung mit relevanter klinischer Begründung"

// Effective time constraints
* effective[x] only dateTime or Period
* effective[x] ^short = "Zeitpunkt der Beurteilung"
* effective[x] ^definition = "Der Zeitpunkt oder Zeitraum, über den die klinische Beurteilung gebildet wurde"

// Date constraints
* date ^short = "Wann die Beurteilung dokumentiert wurde"
* date ^definition = "Gibt an, wann die klinische Beurteilung dokumentiert wurde"



// Problem constraints - link to conditions/symptoms
* problem only Reference(Condition or AllergyIntolerance)
* problem ^short = "Relevante Probleme/Erkrankungen"
* problem ^definition = "Eine Liste der relevanten Probleme/Erkrankungen für diesen Patienten, die die klinische Beurteilung beeinflussen können"

// Investigation constraints
* investigation ^short = "Eine oder mehrere Untersuchungsserien"
* investigation.code ^short = "Art der Untersuchung"
* investigation.item only Reference(Observation or QuestionnaireResponse or FamilyMemberHistory or DiagnosticReport or RiskAssessment)
* investigation.item ^short = "Unterstützende Evidenz"

// Finding constraints - HPO-based findings
* finding ^short = "Klinische Befunde, die die Beurteilung stützen"
* finding.itemCodeableConcept from mii-vs-se-hpo-phenotypic-observation-codes (extensible)
* finding.itemCodeableConcept ^short = "HPO-basierter klinischer Befund"
* finding.itemReference only Reference(Condition or Observation)
* finding.itemReference ^short = "Referenz auf klinischen Befund"
* finding.basis ^short = "Grundlage für den Befund"

// Prognosis constraints
* prognosisCodeableConcept ^short = "Kodierte Prognose"
* prognosisCodeableConcept ^definition = "Kodierte Beurteilung der Prognose"
* prognosisReference only Reference(RiskAssessment)
* prognosisReference ^short = "Referenz auf detaillierte Prognose"

// Supporting info constraints
* supportingInfo only Reference(Observation or Condition or DiagnosticReport or DocumentReference)
* supportingInfo ^short = "Unterstützende Informationen"
* supportingInfo ^definition = "Informationen, die die klinische Beurteilung unterstützen"

// Summary constraints
* summary ^short = "Zusammenfassung der klinischen Beurteilung"
* summary ^definition = "Eine Textzusammenfassung der Beurteilung mit hervorgehobenen wichtigsten Aspekten"

// Note constraints
* note ^short = "Zusätzliche Anmerkungen"
* note ^definition = "Kommentare zur Beurteilung, die anderswo nicht erfasst sind"