// -----------------------------------------------------------------------------
// Consanguinity (Blutsverwandtschaft der Eltern)
//
// Herkunft: europäischer Minimaldatensatz für Seltene Erkrankungen
// (JARDIN-MDS-Entwurf, in Validierung) bzw. RD-CDM v2.0.0, Element 6.4.4
// "Consanguinity" (Family History), dort auf GA4GH Phenopackets
// Family.consanguinous_parents gemappt. FHIR stellt weder ein dediziertes
// Consanguinity-Element noch eine standardisierte Extension bereit
// (RD-CDM FHIR-Mapping = n/a), daher wird die Angabe als eigenständige
// Observation modelliert (SNOMED CT 842009). Tracking: GitHub Issue #37, HDB-785.
// -----------------------------------------------------------------------------

Profile:     MII_PR_Seltene_Consanguinity
Id:          mii-pr-seltene-consanguinity
Parent:      Observation
Title:       "MII PR SE Consanguinity"
Description: "Observation-Profil zur Erfassung der Blutsverwandtschaft der Eltern (Consanguinity) im Kontext seltener Erkrankungen. Insbesondere für autosomal-rezessive genetisch bedingte Erkrankungen ist die Angabe, ob die Eltern blutsverwandt sind, ein relevanter Aspekt der Familienanamnese. Abgeleitet aus RD-CDM v2.0.0 (Element 6.4.4) bzw. dem JARDIN-MDS-Entwurf."
* insert PR_CS_VS_Version
* insert Publisher

* id MS
* meta MS
* meta.profile MS

* status MS

* category MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains socialHistory 1..1 MS
* category[socialHistory] = $observation-category#social-history
* category[socialHistory] ^short = "Kategorie: Sozial-/Familienanamnese"

* code MS
* code = $SCT#842009 "Consanguinity"
* code ^short = "Blutsverwandtschaft der Eltern (Consanguinity)"
* code ^definition = "Vorliegen einer biologischen Verwandtschaft der Eltern durch gemeinsame Abstammung (typischerweise Cousins 1. oder 2. Grades). Klinisch üblich: Verwandtschaft im Grad von Cousins 2. Grades oder näher."

* subject 1..1 MS
* subject only Reference(Patient)
* subject ^short = "Indexpatient"

* effective[x] MS
* effective[x] only dateTime or Period

* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept MS
* valueCodeableConcept.coding MS
* valueCodeableConcept.coding from MII_VS_Seltene_Consanguinity (required)
* valueCodeableConcept.coding.system = $SCT
* valueCodeableConcept.text MS
* valueCodeableConcept ^short = "Angabe der Blutsverwandtschaft: Ja / Nein / Unbekannt / Nicht erfasst"

* focus MS
* focus only Reference(MII_PR_Seltene_Familienanamnese)
* focus ^short = "Verweis auf die Familienanamnese-Ressource(n) der Eltern"
* focus ^definition = "Consanguinity ist eine Beziehung zwischen den beiden Eltern (nicht dem Indexpatienten selbst). Über focus können die zugehörigen Familienanamnese-Ressourcen der Eltern referenziert werden."


ValueSet:    MII_VS_Seltene_Consanguinity
Id:          mii-vs-seltene-consanguinity
Title:       "MII VS Seltene Erkrankungen Consanguinity"
Description: "ValueSet zur Angabe der Blutsverwandtschaft der Eltern (Consanguinity): Ja / Nein / Unbekannt / Nicht erfasst (SNOMED CT), entsprechend dem Consanguinity Value Set aus RD-CDM v2.0.0."
* insert Publisher
* insert PR_CS_VS_Version
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-consanguinity"
* ^status = #active
* ^experimental = false
* $SCT#373066001 "Yes"
* $SCT#373067005 "No"
* $SCT#261665006 "Unknown"
* $SCT#1220561009 "Not recorded"
