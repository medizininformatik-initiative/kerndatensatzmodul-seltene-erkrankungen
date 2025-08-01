Profile: Therapieempfehlung
Parent: Medikation_MedicationRequest
Id: mii-pr-se-therapieempfehlung
Title: "MII PR SE Therapieempfehlung Systemische Therapie"
Description: "Therapieempfehlung für eine medikamentöse Systemische Therapie"

// TODO Constrain status to draft?
* status ^short = "active | on-hold | cancelled | completed | entered-in-error | stopped | draft | unknown"
* status ^definition = "Status der Umsetzung der Therapieempfehlung"
* status ^comment = "
    draft: Nicht umgesetzt, 
    active: In Umsetzung, 
    completed: Abgeschlossen oder abgebrochen (Patient verstorben)"

// TODO Constrain intent to proposal and option? (Option is needed for RequestGroup)
* intent ^short = "proposal | option"
* intent ^definition = "Da nur Empfehlungen abgegeben werden, wird hier typischerweise 'proposal' stehen. Es sei denn,
        diese Therapieempfehlung ist Teil einer RequestGroup (z.B. Kombinationstherapie). In dem Fall muss hier 'option' stehen."

* medication[x] 1..1 MS
* medicationReference only Reference(MII_PR_Medikation_Medication) // + Medication (restricted by parent profile to profile only)

* reasonReference 0..* MS
* reasonReference ^slicing.discriminator.type = #profile
* reasonReference ^slicing.discriminator.path = "$this.resolve()"
* reasonReference ^slicing.rules = #open
* reasonReference ^slicing.description = "Slice für stützende Angaben zur Systemischen Therapie auf Basis des referenzierten Ressourcentyps"
* reasonReference ^slicing.ordered = false

* extension contains
    Empfehlung_Prioritaet named Prioritaet 0..1 MS and
    Empfehlung_Evidenzgraduierung named Evidenzgraduierung 0..1 MS and
    Empfehlung_Publikation named Publikation 0..* MS

