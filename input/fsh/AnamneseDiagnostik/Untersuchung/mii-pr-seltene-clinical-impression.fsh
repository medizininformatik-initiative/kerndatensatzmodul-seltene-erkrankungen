Profile:     MII_PR_Seltene_ClinicalImpression
Id:          mii-pr-seltene-clinical-impression
Parent:      ClinicalImpression
Title:       "MII Profile SE Clinical Impression"
Description: "Profile for clinical impressions in the context of rare diseases. This profile captures clinical assessments and suspected diagnoses based on phenotypic findings and symptoms."

* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active

// Core elements
* id MS
* meta MS
* identifier MS
* status MS 
// Status wird vsl immer nachdokumentiert als completed

* code MS
// need code for rare disease exam?
* description MS
* subject MS
* subject 1..1
* subject only Reference(Patient)
* encounter 0..1 MS

* effective[x] MS
* date MS
* problem MS

* investigation MS
* investigation.code MS
// Slicing for Labor / MolGen / Körperliche Untesuchung / Phänotypisierung etc. 
* summary MS // string of the results
* finding MS
// finding for clinical diagnosis

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
* investigation.code ^short = "Art der Untersuchung, die im Rahmen der Beurteilung durchgeführt wurde"
* investigation.item only Reference(Observation or QuestionnaireResponse or FamilyMemberHistory or DiagnosticReport or RiskAssessment)
* investigation.item ^short = "Unters"

// Finding constraints - 
* finding ^short = "Klinische Befunde der Untersuchung"
* finding ^definition = "Klinische Befunde, die auf Basis der Untersuchungen festgestellt wurden"
* finding.itemCodeableConcept from mii-vs-seltene-hpo-phenotypic-observation-codes (extensible)
* finding.itemCodeableConcept ^short = "Klinischer Befund"
* finding.itemReference only Reference(Condition or Observation)
* finding.itemReference ^short = "Referenz auf klinischen Befund"
* finding.basis ^short = "Grundlage für den Befund"


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

// Mapping to Logical Model
Mapping: FHIR-SE-ClinicalImpression
Id: SE-LogicalModel
Title: "Mapping FHIR zu Seltene Erkrankungen Logical Model"
Source: MII_PR_Seltene_ClinicalImpression
Target: "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/LogicalModel/Seltene"
* -> "AnamneseUndDiagnostik" "Anamnese und Diagnostik"
* effectiveDateTime -> "AnamneseUndDiagnostik.Untersuchungsdatum" "Untersuchungsdatum"
* effectivePeriod.start -> "AnamneseUndDiagnostik.Untersuchungsdatum" "Beginn der Untersuchung"
* effectivePeriod.end -> "AnamneseUndDiagnostik.Untersuchungsdatum" "Ende der Untersuchung"
* code -> "AnamneseUndDiagnostik.Untersuchungsanlass" "Untersuchungsanlass"
* problem -> "AnamneseUndDiagnostik.KlinischeDiagnose" "Klinische Diagnose/Verdacht"
* investigation.code -> "AnamneseUndDiagnostik.MethodeDiagnosestellung" "Methode der Diagnosestellung"
* investigation.item -> "AnamneseUndDiagnostik.Phaenotypisierung" "Durchgeführte Untersuchungen"
* finding.itemCodeableConcept -> "AnamneseUndDiagnostik.Phaenotypisierung.HPOTerm" "HPO-Term des Symptoms"
* finding.itemReference -> "AnamneseUndDiagnostik.Phaenotypisierung" "Verweis auf Phänotypisierung"
* subject -> "Patient" "Patient/Indexpatient"
* encounter -> "AnamneseUndDiagnostik.Untersuchungsdatum" "Untersuchungskontakt"