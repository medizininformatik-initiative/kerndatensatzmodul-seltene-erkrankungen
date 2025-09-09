Profile: MII_PR_Seltene_Therapieempfehlung
Parent: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest
Id: mii-pr-seltene-therapieempfehlung
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
* intent 1..1 MS
* intent ^short = "proposal | option"
* intent ^definition = "Da nur Empfehlungen abgegeben werden, wird hier typischerweise 'proposal' stehen. Es sei denn,
        diese Therapieempfehlung ist Teil einer RequestGroup (z.B. Kombinationstherapie). In dem Fall muss hier 'option' stehen."

* medication[x] 1..1 MS
* medicationReference only Reference(MII_PR_Medikation_Medication) // + Medication (restricted by parent profile to profile only)

// Category slice for therapy strategy type (specific for Modellvorhaben GenomSeq)
* category MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category ^slicing.description = "Slice für Therapiestrategie-Kategorisierung aus Modellvorhaben GenomSeq"
* category contains MVGenomSeqTherapieStrategie 0..1 MS
* category[MVGenomSeqTherapieStrategie] from MII_VS_Seltene_TherapieempfehlungStrategieMedikamentoes (required)
* category[MVGenomSeqTherapieStrategie] ^short = "Modellvorhaben GenomSeq Therapiestrategie-Typ (Medikamentös)"
* category[MVGenomSeqTherapieStrategie] ^definition = "Kategorisierung der medikamentösen Therapieempfehlung nach Modellvorhaben GenomSeq Strategietyp"
* category[MVGenomSeqTherapieStrategie] ^comment = "Dieses Feld ist spezifisch für die Integration mit Modellvorhaben GenomSeq. Es ermöglicht die Kategorisierung gemäß RareDiseasesPlan.recommendedTherapies.strategy. Nur für medikamentöse Strategien: systemic-medication, targeted-medication, prevention-medication, gene-therapy, combination."
* category[MVGenomSeqTherapieStrategie].coding 1..1
* category[MVGenomSeqTherapieStrategie].coding.system 1..
* category[MVGenomSeqTherapieStrategie].coding.code 1..

* reasonReference 0..* MS
* reasonReference ^slicing.discriminator.type = #profile
* reasonReference ^slicing.discriminator.path = "$this.resolve()"
* reasonReference ^slicing.rules = #open
* reasonReference ^slicing.description = "Slice für stützende Angaben zur Systemischen Therapie auf Basis des referenzierten Ressourcentyps"
* reasonReference ^slicing.ordered = false

* extension contains
    MII_EX_Seltene_Empfehlung_Prioritaet named Prioritaet 0..1 MS and
    MII_EX_Seltene_Empfehlung_Evidenzgraduierung named Evidenzgraduierung 0..1 MS and
    MII_EX_Seltene_Empfehlung_Publikation named Publikation 0..* MS

