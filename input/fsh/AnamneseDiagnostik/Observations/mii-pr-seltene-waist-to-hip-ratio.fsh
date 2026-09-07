/*Profile:     MII_PR_Seltene_Waist_To_Hip_Ratio
Id:          mii-pr-seltene-waist-to-hip-ratio
Parent:      Observation
Title:       "Waist-to-Hip Ratio of the patient"
Description: "Describes the Waist-to-Hip Ratio of the patient."

// KORRIGIERT (Nutzerhinweis 2026-09-02): hier stand LOINC 8280-0, beschriftet als
// "Waist-hip ratio". 8280-0 ist aber der TAILLENUMFANG ("Waist Circumference at
// umbilicus by Tape measure") und wurde zugleich vom Taillenumfang-Profil
// verwendet — zwei Profile teilten sich einen Code, und eines behauptete ein
// Verhaeltnis zu sein, waehrend es einen Umfang kodierte. Wer auf 8280-0 suchte,
// bekam Umfaenge und Quotienten vermischt zurueck.
// LOINC kennt kein Taille-Huefte-Verhaeltnis (geprueft ueber $expand: nur
// Umfaenge, Protokolle und 97058-2 "Waist circumference score for risk
// calculation"). SNOMED kennt es: 248367009 "Waist/hip ratio" — der Term traegt
// einen Schraegstrich, weshalb Suchen nach "waist to hip" oder "hip ratio" ihn
// nicht finden.
* code = $SCT#248367009 "Waist/hip ratio"
* subject MS
* status MS
* status = #draft
* encounter MS
* value[x] 1..1 MS
* value[x] only Quantity
* valueQuantity.system = $UCUM 
* valueQuantity.code = #1


Instance: mii-exa-seltene-waist-to-hip-ratio
InstanceOf: MII_PR_Seltene_Waist_To_Hip_Ratio
Usage: #example
Title: "Waist-to-Hip Ratio Example"
Description: "Example of a Waist-to-Hip Ratio observation for a patient."
* valueQuantity.value = 0.85
* status = #draft
*/