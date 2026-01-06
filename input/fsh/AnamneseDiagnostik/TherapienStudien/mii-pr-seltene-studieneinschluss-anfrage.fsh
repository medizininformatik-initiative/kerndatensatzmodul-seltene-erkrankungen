Profile: MII_PR_Seltene_Studieneinschluss_Anfrage
Parent: ServiceRequest
Id: mii-pr-seltene-studieneinschluss-anfrage
Title: "MII PR SE Studieneinschluss Anfrage"
Description: "Anfrage zum Studieneinschluss"

* status MS
* status ^short = "draft | active | on-hold | revoked | completed | entered-in-error | unknown"
* status ^definition = "Status des Studieneinschlusses"
* status ^comment = "
    draft: Nicht umgesetzt, 
    active: In Umsetzung, 
    completed: Abgeschlossen oder abgebrochen (Patient verstorben)"

* extension contains http://hl7.org/fhir/StructureDefinition/request-statusReason named statusReason 0..1 MS
* extension[statusReason].value[x] only CodeableConcept
* extension[statusReason].valueCodeableConcept.coding 1..1 MS
* extension[statusReason].valueCodeableConcept.coding ^short = "Grund für Ablehnung"
* extension[statusReason].valueCodeableConcept.coding ^definition = "Grund für Ablehnung des Studieneinschlusses (Tod, Studie geschlossen etc)"

* intent = #proposal (exactly)

* category 1..1 MS
* category = $SCT#110465008 "Clinical trial (procedure)" (exactly)


* code 1..1 MS
* code ^short = "Studieneinschlussempfehlung"
* code ^definition = "Empfehlung zum Einschluss in eine Studie"
* code = $SCT#702475000 "Referral to clinical trial (procedure)" (exactly)

* reasonReference 0..* MS
//* reasonReference only Reference(MII_PR_MTB_Diagnose_Primaertumor or Condition)

* supportingInfo 0..* MS
* supportingInfo ^slicing.discriminator.type = #type
* supportingInfo ^slicing.discriminator.path = "$this"
* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.description = "Slice für Referenz auf eine Studie"
* supportingInfo ^slicing.ordered = false

* supportingInfo contains Studie 0..* MS
* supportingInfo[Studie] only Reference(
    MII_PR_Seltene_Studie or
    MII_PR_Studie_Studie or
    ResearchStudy
)

* extension contains
    MII_EX_Seltene_Empfehlung_Prioritaet named Prioritaet 0..1 MS and
    MII_EX_Seltene_Empfehlung_Publikation named Publikation 0..* MS