Profile: MII_PR_SE_Therapieempfehlung_Kombination
Parent: RequestGroup
Id: mii-pr-se-therapieempfehlung-kombination
Title: "MII PR SE Therapieempfehlung Kombinationstherapie"
Description: "Therapieempfehlung für eine medikamentöse Kombinationstherapie"

* identifier MS

* status ^short = "draft | active | on-hold | revoked | completed | entered-in-error | unknown"
* status ^definition = "Status der Umsetzung der Therapieempfehlung"
* status ^comment = "
    draft: Nicht umgesetzt, 
    active: In Umsetzung, 
    completed: Abgeschlossen oder abgebrochen (Patient verstorben)"

// TODO Strictly Constrain intent to proposal and option? (Option is needed for RequestGroup)
* intent ^short = "proposal | option"
* intent ^definition = "Da nur Empfehlungen abgegeben werden, wird hier typischerweise 'proposal' stehen. Es sei denn,
diese Therapieempfehlung ist selbst nochmal Teil einer RequestGroup. In dem Fall muss hier 'option' stehen."

* intent MS
//* intent = #proposal // wenn intent = option sein soll, kann das hier nicht gesetzt werden
// priority left unconstrained. It has a different meaning than our priority extension and could make sense to keep here.

* subject MS
* subject only Reference(Patient)

// Excluded Device as author, given a MTB is not automated and will not be in the forseeable future. Is this too strict?
* author only Reference(Practitioner or PractitionerRole)
// * reasonReference MS

* action 1..* MS
  * resource 1..1 MS
  * resource only Reference(MII_PR_SE_Therapieempfehlung or MedicationRequest)
  * action 0..0 // When we enforce a resource, sub-actions are disallowed by the constraint rqg-1 anyway.

* extension contains
    MII_EX_SE_Empfehlung_Prioritaet named Prioritaet 0..1 MS and
    MII_EX_SE_Empfehlung_Evidenzgraduierung named Evidenzgraduierung 0..1 MS and
    MII_EX_SE_Empfehlung_Publikation named Publikation 0..* MS