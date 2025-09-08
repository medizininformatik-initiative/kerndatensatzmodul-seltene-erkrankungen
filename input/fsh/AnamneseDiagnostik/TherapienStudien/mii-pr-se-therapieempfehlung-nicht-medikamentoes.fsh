// ServiceRequest Profile for Non-Medication Therapy Recommendations
// Covers: nutrition, gene therapy, prophylactic measures, early detection, etc.

Profile: MII_PR_SE_TherapieempfehlungNichtMedikamentoes
Parent: ServiceRequest
Id: mii-pr-se-therapieempfehlung-nicht-medikamentoes
Title: "MII PR SE Therapieempfehlung Nicht-Medikamentös"
Description: "Therapieempfehlung für nicht-medikamentöse Interventionen bei seltenen Erkrankungen (z.B. Ernährungstherapie, Gentherapie, Prophylaxe, Früherkennung)"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft

// Core elements
* status MS
* status ^short = "draft | active | on-hold | revoked | completed | entered-in-error | unknown"
* status ^definition = "Status der Umsetzung der nicht-medikamentösen Therapieempfehlung"
* status ^comment = "draft: Nicht umgesetzt, active: In Umsetzung, completed: Abgeschlossen"

* intent MS
* intent = #proposal
* intent ^short = "proposal"
* intent ^definition = "Da es sich um Empfehlungen handelt, wird hier 'proposal' verwendet"

* priority MS
* priority ^short = "routine | urgent | asap | stat"
* priority ^definition = "Dringlichkeit der Therapieempfehlung"

// Category slice for therapy strategy type (specific for Modellvorhaben GenomSeq)
* category 1..* MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category ^slicing.description = "Slice für Therapiestrategie-Kategorisierung aus Modellvorhaben GenomSeq"
* category contains MVGenomSeqTherapieStrategie 0..1 MS
* category[MVGenomSeqTherapieStrategie] from MII_VS_SE_TherapieempfehlungStrategieNichtMedikamentoes (required)
* category[MVGenomSeqTherapieStrategie] ^short = "Modellvorhaben GenomSeq Therapiestrategie-Typ (Nicht-Medikamentös)"
* category[MVGenomSeqTherapieStrategie] ^definition = "Kategorisierung der nicht-medikamentösen Therapieempfehlung nach Modellvorhaben GenomSeq"
* category[MVGenomSeqTherapieStrategie] ^comment = "Dieses Feld ist spezifisch für die Integration mit Modellvorhaben GenomSeq. Es ermöglicht die Kategorisierung gemäß RareDiseasesPlan.recommendedTherapies.strategy. Nur für nicht-medikamentöse Strategien: prophylactic, early-detection, nutrition, other."
* category[MVGenomSeqTherapieStrategie].coding 1..1
* category[MVGenomSeqTherapieStrategie].coding.system 1..
* category[MVGenomSeqTherapieStrategie].coding.code 1..

// Code for the specific service being requested
* code 1..1 MS
* code ^short = "Art der nicht-medikamentösen Intervention"
* code ^definition = "Spezifische Codierung der empfohlenen nicht-medikamentösen Therapie"
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    snomed 0..1 MS and
    ops 0..1 MS and
    loinc 0..1 MS
* code.coding[snomed] from http://hl7.org/fhir/ValueSet/procedure-code (extensible)
* code.coding[snomed].system = $SCT
* code.coding[ops] from http://fhir.de/ValueSet/bfarm/ops (extensible)
* code.coding[ops].system = "http://fhir.de/CodeSystem/bfarm/ops"
* code.coding[loinc].system = $LNC
* code.text 1.. MS

// Subject
* subject 1..1 MS
* subject only Reference(Patient)
* subject ^short = "Patient, für den die Therapie empfohlen wird"

// Encounter context
* encounter MS
* encounter ^short = "Behandlungskontext der Empfehlung"

// Occurrence timing
* occurrence[x] MS
* occurrence[x] only dateTime or Period or Timing
* occurrence[x] ^short = "Empfohlener Zeitpunkt oder Zeitraum für die Intervention"

// Requester
* requester MS
* requester ^short = "Empfehlender Arzt/Einrichtung"
* requester only Reference(Practitioner or PractitionerRole or Organization)

// Performer
* performer MS
* performer ^short = "Vorgesehener Durchführender der Intervention"

// Reason for recommendation
* reasonCode MS
* reasonCode ^short = "Grund für die Therapieempfehlung (codiert)"

* reasonReference MS
* reasonReference only Reference(Condition or Observation or DiagnosticReport)
* reasonReference ^short = "Verweis auf zugrundeliegende Diagnose oder Befund"

// Supporting information
* supportingInfo MS
* supportingInfo ^short = "Unterstützende Informationen zur Empfehlung"
* supportingInfo only Reference(DocumentReference or Observation or DiagnosticReport)

// Note for additional details
* note MS
* note ^short = "Zusätzliche Anmerkungen zur Therapieempfehlung"

// Extensions from MV GenomSeq alignment
* extension contains
    MII_EX_SE_Empfehlung_Prioritaet named Prioritaet 0..1 MS and
    MII_EX_SE_Empfehlung_Evidenzgraduierung named Evidenzgraduierung 0..1 MS and
    MII_EX_SE_Empfehlung_Publikation named Publikation 0..* MS

// Example Instance for Early Detection Program
Instance: example-early-detection-recommendation
InstanceOf: MII_PR_SE_TherapieempfehlungNichtMedikamentoes
Usage: #example
Title: "Beispiel Früherkennungsprogramm-Empfehlung"
Description: "Beispiel einer Empfehlung für regelmäßige Früherkennungsuntersuchungen"
* status = #draft
* intent = #proposal
* priority = #routine
* category[MVGenomSeqTherapieStrategie].coding = MII_CS_SE_TherapieempfehlungStrategie#early-detection "Früherkennung"
* code.coding[snomed] = $SCT#410453003 "Screening for disorder"
* code.text = "Jährliche kardiologische Kontrolle bei Marfan-Syndrom"
* subject = Reference(Patient/example)
* requester = Reference(Practitioner/example)
* reasonReference = Reference(Condition/marfan-diagnosis)
* note.text = "Jährliche Echokardiographie zur Früherkennung von Aortenwurzeldilatation empfohlen"

// Example Instance for Nutrition Therapy
Instance: example-nutrition-therapy-recommendation
InstanceOf: MII_PR_SE_TherapieempfehlungNichtMedikamentoes
Usage: #example
Title: "Beispiel Ernährungstherapie-Empfehlung"
Description: "Beispiel einer Ernährungstherapie-Empfehlung bei metabolischer Erkrankung"
* status = #active
* intent = #proposal
* priority = #routine
* category[MVGenomSeqTherapieStrategie].coding = MII_CS_SE_TherapieempfehlungStrategie#nutrition "Ernährungstherapie"
* code.coding[snomed] = $SCT#61310001 "Nutrition therapy"
* code.text = "Phenylalaninreduzierte Diät bei Phenylketonurie"
* subject = Reference(Patient/example)
* occurrencePeriod.start = "2024-01-01"
* requester = Reference(Practitioner/example)
* reasonReference = Reference(Condition/pku-diagnosis)
* note.text = "Lebenslange phenylalaninarme Diät erforderlich, regelmäßige Kontrolle der Phe-Spiegel"