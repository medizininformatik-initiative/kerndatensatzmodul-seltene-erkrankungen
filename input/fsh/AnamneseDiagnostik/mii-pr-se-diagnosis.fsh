Profile:     MII_PR_SE_Diagnose
Id:          mii-pr-se-diagnosis
Parent:      MII_PR_Diagnose_Condition
Title:       "MII Profile SE Diagnosis"
Description: "Profile for rare disease diagnoses based on the MII diagnosis profile. This profile extends the core MII diagnosis functionality with rare disease-specific constraints and requirements."

* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft

// Core elements from parent profile
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
* recorder MS
* asserter MS
* stage MS
* evidence MS
* note MS

// Subject constraints - must be a patient
* subject 1..1
* subject only Reference(Patient)
* subject ^short = "Patient mit der seltenen Erkrankung"
* subject ^definition = "Referenz auf den Patienten, der die seltene Erkrankung hat"

// Clinical status constraints
* clinicalStatus from http://hl7.org/fhir/ValueSet/condition-clinical (required)
* clinicalStatus ^short = "Klinischer Status der Diagnose"
* clinicalStatus ^definition = "Der klinische Status der Diagnose (aktiv, inaktiv, aufgelöst)"

// Verification status constraints  
* verificationStatus from http://hl7.org/fhir/ValueSet/condition-ver-status (required)
* verificationStatus ^short = "Verifikationsstatus der Diagnose"
* verificationStatus ^definition = "Grad der Sicherheit der Diagnose (bestätigt, vermutet, ausgeschlossen)"

// Category constraints - rare disease and syndrome focus
* category 1..*
* category ^short = "Kategorie der Diagnose/des Syndroms - Fokus auf seltene Erkrankungen"
* category ^definition = "Kategoriecodes, die die Diagnose oder das Syndrom klassifizieren, mit besonderem Fokus auf seltene Erkrankungen und Syndrome"
* category ^comment = "Verwenden Sie spezifische Kategorien für: seltene Erkrankungen, Syndrome, genetische Störungen, angeborene Anomalien"

// Code constraints - using ORPHA, OMIM, and other rare disease codes
* code 1..1
* code ^short = "Diagnose-/Syndromcode - ORPHA, OMIM, SNOMED CT für seltene Erkrankungen"
* code ^definition = "Code zur Identifikation der Diagnose oder des Syndroms, vorzugsweise unter Verwendung von ORPHA (Orphanet), OMIM (Online Mendelian Inheritance in Man) oder SNOMED CT Codes"
* code ^comment = "Für Syndrome: ORPHA-Codes bevorzugt. Für genetische Syndrome: OMIM-Codes. Für allgemeine medizinische Begriffe: SNOMED CT"

// Severity constraints
* severity ^short = "Schweregrad der Erkrankung"
* severity ^definition = "Bewertung des Schweregrads der seltenen Erkrankung"

// Temporal constraints - important for rare disease progression
* onset[x] only dateTime or Period
* onset[x] ^short = "Beginn der Erkrankung"
* onset[x] ^definition = "Geschätztes oder tatsächliches Datum, Zeitraum oder zeitliche Beschreibung des Erkrankungsbeginns"

// Extensions for rare disease and syndrome support
* extension contains 
    SyndromeCategory named syndromeCategory 0..1 MS and
    PhenotypicPattern named phenotypicPattern 0..* MS

* extension[syndromeCategory] ^short = "Syndromkategorie"
* extension[syndromeCategory] ^definition = "Spezifische Kategorisierung für Syndromtypen (genetisch, metabolisch, entwicklungsbedingt, etc.)"

* extension[phenotypicPattern] ^short = "Phänotypisches Muster"
* extension[phenotypicPattern] ^definition = "Verknüpfung zu charakteristischen Symptommustern oder Phänotyp-Clustern des Syndroms"

// TODO: Re-enable onsetAge extension once upstream MII profile constraints are resolved
// Onset with R5 backport extension for onsetAge
// * onset[x] extension contains http://hl7.org/fhir/5.0/StructureDefinition/extension-Condition.onsetAge named onsetAge 0..1 MS
// * onset[x].extension[onsetAge] ^short = "Alter bei Erkrankungsbeginn"
// * onset[x].extension[onsetAge] ^definition = "Das Alter des Patienten zum Zeitpunkt des Erkrankungsbeginns (R5 Backport)"

* abatement[x] only dateTime or Period 
* abatement[x] ^short = "Auflösung der Erkrankung"
* abatement[x] ^definition = "Datum, Zeitraum oder zeitliche Beschreibung, wann die Erkrankung abgeklungen ist oder in Remission ging"

// Evidence constraints - supporting clinical findings
* evidence ^short = "Unterstützende Evidenz für die Diagnose"
* evidence ^definition = "Evidenz, die die Diagnose stützt, einschließlich klinischer Befunde und Laborergebnisse"
* evidence.code ^short = "Art der Evidenz"
* evidence.detail only Reference(Observation or DocumentReference or DiagnosticReport or FamilyMemberHistory or Condition)
* evidence.detail ^short = "Unterstützende Beobachtungen, Dokumente oder Symptome"

// Stage constraints for disease progression
* stage ^short = "Stadium oder Progression der Erkrankung"
* stage ^definition = "Stadium der seltenen Erkrankung und deren Progression"
* stage.summary ^short = "Stadiumzusammenfassung"
* stage.assessment only Reference(Observation or DiagnosticReport)
* stage.assessment ^short = "Bewertung des Stadiums"

// Body site constraints
* bodySite ^short = "Anatomische Lokalisation der Erkrankung"
* bodySite ^definition = "Die anatomische Lokalisation, die von der seltenen Erkrankung betroffen ist"

// Note constraints
* note ^short = "Zusätzliche Anmerkungen zur Diagnose"
* note ^definition = "Zusätzliche Beschreibung der Diagnose, die in anderen Feldern nicht erfasst ist"

// Recorder constraints
* recorder ^short = "Wer die Diagnose dokumentiert hat"
* recorder ^definition = "Medizinische Fachkraft, die die Diagnose dokumentiert hat"

// Asserter constraints
* asserter ^short = "Person, die die Diagnose stellt"
* asserter ^definition = "Medizinische Fachkraft, die die Diagnose gestellt hat"

// Encounter constraints - when diagnosis was made
* encounter ^short = "Kontakt, bei dem die Diagnose gestellt wurde"
* encounter ^definition = "Gesundheitskontakt, bei dem die Diagnose gestellt wurde"

// Recorded date constraints
* recordedDate ^short = "Datum der Dokumentation"
* recordedDate ^definition = "Datum, an dem die Diagnose dokumentiert wurde"