Profile: MII_PR_Seltene_Therapieplan
Parent: CarePlan
Id: mii-pr-seltene-therapieplan
Title: "MII PR SE Therapieplan"
Description: "Therapieplan"

* status ^short = "draft | active | on-hold | revoked | completed | entered-in-error | unknown"
* status ^definition = "Status der Umsetzung des beschlossenen Therapieplans"
* status ^comment = "
    active: Empfehlung bzw. Therapieoption in Umsetzung (Regelfall), 
    revoked: Fall ist abgeschlossen, 
    completed: Alle Empfehlungen bzw. Therapieoptionen ausgeschöpft oder Patient verstorben"

* created 1..1 MS 
* created ^short = "Erstellungsdatum"
* created ^definition = "Erstellungsdatum des Therapieplans"

* description 0..1 MS
* description ^short = "Protokollauszug"
* description ^definition = "Protokollauszug aus dem Beschluss"

* activity 0..* MS
* activity ^slicing.discriminator.type = #profile
* activity ^slicing.discriminator.path = "reference.resolve()"
* activity ^slicing.rules = #open
* activity ^slicing.description = "Slice für Empfehlung zum weiteren Vorgehen auf Basis des referenzierten Ressourcentyps"
* activity ^slicing.ordered = false

// Medication-based therapy recommendations
* activity contains MedikamentoesTherapie 0..* MS
* activity[MedikamentoesTherapie] ^short = "Medikamentöse Therapieempfehlung"
* activity[MedikamentoesTherapie] ^definition = "Therapieempfehlung für eine medikamentöse Therapie (Systemtherapie, gezielte Therapie, Präventivmedikation, Gentherapie, Kombinationstherapie)"
* activity[MedikamentoesTherapie] ^comment = "Referenziert MedicationRequest-basierte Profile für alle medikamentösen Therapien"
* activity[MedikamentoesTherapie].reference 0..1 MS
* activity[MedikamentoesTherapie].reference only Reference(
    MII_PR_Seltene_Therapieempfehlung or
    MII_PR_Seltene_Therapieempfehlung_Kombination or
    MedicationRequest or
    RequestGroup
)
* activity[MedikamentoesTherapie].detail MS // NOTE: Kardinalität min = 1 aus Elternprofil geerbt
* activity[MedikamentoesTherapie].detail.statusReason from MII_VS_Seltene_Empfehlung_StatusBegruendung (required)

// Non-medication therapy recommendations
* activity contains NichtMedikamentoesTherapie 0..* MS
* activity[NichtMedikamentoesTherapie] ^short = "Nicht-medikamentöse Therapieempfehlung"
* activity[NichtMedikamentoesTherapie] ^definition = "Therapieempfehlung für nicht-medikamentöse Interventionen (Ernährungstherapie, Prophylaxe, Früherkennung, humangenetische Beratung, andere)"
* activity[NichtMedikamentoesTherapie] ^comment = "Referenziert ServiceRequest-basierte Profile für alle nicht-medikamentösen Therapien einschließlich humangenetischer Beratung"
* activity[NichtMedikamentoesTherapie].reference 0..1 MS
* activity[NichtMedikamentoesTherapie].reference only Reference(
    MII_PR_Seltene_TherapieempfehlungNichtMedikamentoes or
    ServiceRequest
)
* activity[NichtMedikamentoesTherapie].detail MS // NOTE: Kardinalität min = 1 aus Elternprofil geerbt
* activity[NichtMedikamentoesTherapie].detail.statusReason from MII_VS_Seltene_Empfehlung_StatusBegruendung (required)

// Study inclusion recommendations
* activity contains Studieneinschlussempfehlung 0..* MS
* activity[Studieneinschlussempfehlung] ^short = "Studieneinschlussempfehlung"
* activity[Studieneinschlussempfehlung] ^definition = "Anfrage zum Studieneinschluss"
* activity[Studieneinschlussempfehlung].reference 1..1 MS
* activity[Studieneinschlussempfehlung].reference only Reference(MII_PR_Seltene_Studieneinschluss_Anfrage)

// Siehe Konversion R5 nach R4: https://build.fhir.org/ig/HL7/fhir-cross-version/StructureMap-CarePlan5to4.html

// Implementation Notes:
// - Medication therapy: MedicationRequest-based profiles for systemic, targeted, preventive, gene therapy
// - Non-medication therapy: ServiceRequest-based profiles for nutrition, prophylaxis, early detection, genetic counseling
// - Study inclusion: ServiceRequest-based profile for clinical trial referrals
// 
// When implemented:
// - Medication therapy -> MedicationStatement/MedicationAdministration
// - Non-medication therapy -> Procedure/Observation/DiagnosticReport/ClinicalImpression
// - Study inclusion -> Consent/ResearchSubject

* supportingInfo 0..* MS
* supportingInfo ^slicing.discriminator.type = #type
* supportingInfo ^slicing.discriminator.path = "$this"
* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.description = "Slice für weitere Informationen"
* supportingInfo ^slicing.ordered = false

/*
* supportingInfo contains Behandlungsepisode 0..1 MS
* supportingInfo[Behandlungsepisode] ^short = "Behandlungsepisode"
* supportingInfo[Behandlungsepisode] ^definition = "Aktueller Krankheitszustand und bisherige Behandlungsmaßnahmen"
* supportingInfo[Behandlungsepisode] only Reference(MII_PR_MTB_Behandlungsepisode or ClinicalImpression)
*/

Instance: mii-exa-seltene-therapieplan
InstanceOf: MII_PR_Seltene_Therapieplan
Usage: #example
Title: "Therapieplan Example"
Description: "Example of a Therapieplan for a patient."
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieplan)
* status = #draft
* created = 2023-03-28
* description = "Therapieplan für den Patienten"
* subject = Reference(Patient/example-patient)
* intent = #proposal
* activity[MedikamentoesTherapie].reference = Reference(MedicationRequest/example-therapieempfehlung)
* activity[NichtMedikamentoesTherapie].reference = Reference(ServiceRequest/example-nichtmed-therapie)
* activity[Studieneinschlussempfehlung].reference = Reference(ServiceRequest/example-studieneinschluss)