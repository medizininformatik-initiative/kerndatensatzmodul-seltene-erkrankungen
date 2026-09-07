Profile: MII_PR_Seltene_Therapieempfehlung_Kombination
Parent: RequestGroup
Id: mii-pr-seltene-therapieempfehlung-kombination
Title: "MII PR SE Therapieempfehlung Kombinationstherapie"
Description: "Therapieempfehlung für eine medikamentöse Kombinationstherapie"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active

* identifier MS

* status ^short = "draft | active | on-hold | revoked | completed | entered-in-error | unknown"
* status ^definition = "Status der Umsetzung der Therapieempfehlung"
* status ^comment = "
    draft: Nicht umgesetzt, 
    active: In Umsetzung, 
    completed: Abgeschlossen oder abgebrochen (Patient verstorben)"

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
  * resource only Reference(MII_PR_Seltene_Therapieempfehlung or MedicationRequest)
  * action 0..0 // When we enforce a resource, sub-actions are disallowed by the constraint rqg-1 anyway.

// Die Extension MII_EX_Seltene_Empfehlung_Evidenzgraduierung wurde hier entfernt
// (Modulverantwortlicher, 2026-08-31; GitHub-Issues #25/#27, Ballot-Ticket HDB-543).
// Sie war eine Kopie der MTB-Fassung und seit ihrer ersten Fassung unfertig: der
// system-Discriminator hatte nie einen Wert, wodurch der Pflicht-Slice Evidenzgrad 1..1
// von keiner Instanz erfuellbar war — die Extension war publiziert, aber unbenutzbar.
// Die offene Frage, welche Skala hier gilt, gehoert zu HDB-543 und ist onkologisch
// gepraegt (NCT m1A-m4, ESMO, ASCO); fuer dieses Modul war sie nie beantwortet.
// Statt eine Tumorskala zu importieren, faellt der Punkt hier weg und bleibt bei MTB.
* extension contains
    MII_EX_Seltene_Empfehlung_Prioritaet named Prioritaet 0..1 MS and
    MII_EX_Seltene_Empfehlung_Publikation named Publikation 0..* MS