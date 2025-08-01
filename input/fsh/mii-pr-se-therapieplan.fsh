Profile: MII_PR_SE_Therapieplan
Parent: CarePlan
Id: mii-pr-se-therapieplan
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

* activity contains MII_PR_SE_Therapieempfehlung 0..* MS
* activity[MII_PR_SE_Therapieempfehlung] ^short = "Therapieempfehlung Systemische Therapie"
* activity[MII_PR_SE_Therapieempfehlung] ^definition = "Therapieempfehlung für eine medikamentöse Systemische Therapie"
* activity[MII_PR_SE_Therapieempfehlung] ^comment = "Kann keine Therapieempfehlung für eine Systemische Therapie gegeben werden, muss dies als Begründung unter `detail.statusReason` angegeben werden"
* activity[MII_PR_SE_Therapieempfehlung].reference 0..1 MS
* activity[MII_PR_SE_Therapieempfehlung].reference only Reference(
    MII_PR_SE_Therapieempfehlung or
    MII_PR_SE_Therapieempfehlung_Kombination or
    MedicationRequest or
    RequestGroup
)

* activity[MII_PR_SE_Therapieempfehlung].detail MS // NOTE: Kartinalität min = 1 aus Elterprofil geerbet
* activity[MII_PR_SE_Therapieempfehlung].detail.statusReason from MII_VS_SE_Empfehlung_StatusBegruendung (required)

* activity contains HumangenetischeBeratung 0..1 MS
* activity[HumangenetischeBeratung] ^short = "Empfehlung Human-genetische Beratung"
* activity[HumangenetischeBeratung] ^definition = "Auftrag zur (erneuten) Human-genetischen Beratung"
* activity[HumangenetischeBeratung].reference 1..1 MS
//* activity[HumangenetischeBeratung].reference only Reference(MII_PR_MTB_Humangenetische_Beratung_Auftrag)

* activity contains HistologieEvaluation 0..1 MS
* activity[HistologieEvaluation] ^short = "Empfehlung Histologie-Evaluation"
* activity[HistologieEvaluation] ^definition = "Auftrag zur (erneuten) Histologie-Evaluation"
* activity[HistologieEvaluation].reference 1..1 MS
//* activity[HistologieEvaluation].reference only Reference(MII_PR_MTB_Histologie_Evaluation_Auftrag)

* activity contains Biopsie 0..* MS
* activity[Biopsie] ^short = "Empfehlung Biopsie"
* activity[Biopsie] ^definition = "Auftrag zur (erneuten) Biopsie"
* activity[Biopsie].reference 1..1 MS
//* activity[Biopsie].reference only Reference(MII_PR_MTB_Biopsie_Auftrag)

* activity contains Studieneinschlussempfehlung 0..* MS
* activity[Studieneinschlussempfehlung] ^short = "Studieneinschlussempfehlung"
* activity[Studieneinschlussempfehlung] ^definition = "Anfrage zum Studieneinschluss"
* activity[Studieneinschlussempfehlung].reference 1..1 MS
//* activity[Studieneinschlussempfehlung].reference only Reference(MII_PR_MTB_Studieneinschluss_Anfrage)

// Siehe Konversion R5 nach R4: https://build.fhir.org/ig/HL7/fhir-cross-version/StructureMap-CarePlan5to4.html


// TODO: Allgemeine Ressourcen vs. konkrete Profile besprechen
// NOTE: Umgesetzte "Therapieempfehlung" -> Procedure, MedicationStatement
// NOTE: Umgesetzte "HumangenetischeBeratung" -> DiagnosticReport, Observation
// NOTE: Umgesetzte "HistologieEvaluation" -> DiagnosticReport, Observation
// NOTE: Umgesetzte "Biopsie" -> DiagnosticReport, Observation
// NOTE: Umgesetzte "Studieneinschlussempfehlung" -> MedicationStatement, Consent
// NOTE: Umgesetzte begleitende Maßnahmen, z.B. Monitoring -> Procedure


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