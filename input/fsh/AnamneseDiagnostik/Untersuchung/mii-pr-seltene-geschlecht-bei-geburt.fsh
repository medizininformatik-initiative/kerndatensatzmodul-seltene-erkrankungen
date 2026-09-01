// -----------------------------------------------------------------------------
// Biologisches Geschlecht bei Geburt (Sex assigned at birth)
//
// Herkunft: JARDIN-MDS-Entwurf und ERDRI-CDS sehen beide die Erfassung des
// BIOLOGISCHEN Geschlechts bei Geburt vor. Das ist nicht dasselbe wie das
// administrative Patient.gender aus dem MII KDS Modul Person: administratives
// Geschlecht folgt dem Melderecht (in Deutschland zusaetzlich "divers" und
// "unbestimmt" nach PStG), das Geschlecht bei Geburt ist ein klinischer Befund.
// Beide koennen legitim voneinander abweichen; deshalb eine eigene Observation
// und keine Einschraenkung von Patient.gender.
// Tracking: GitHub Issue #34, Ballot-Ticket HDB-782.
//
// TERMINOLOGIE-ENTSCHEIDUNG (bewusst gegen die naheliegende Wahl):
// LOINC 76689-9 traegt die eigene Antwortliste LL3324-2, die aber nur
// Male / Female / UNKNOWN kennt (geprueft ueber tx.fhir.org). JARDIN und ERDRI
// verlangen Male / Female / UNDETERMINED — und das ist etwas anderes:
// "unknown" heisst nicht erhoben, "undetermined" heisst bei der Geburt nicht
// bestimmbar. Fuer ein Modul zu seltenen Erkrankungen ist die Unterscheidung
// keine Spitzfindigkeit, denn Stoerungen der Geschlechtsentwicklung (DSD) sind
// selbst seltene Erkrankungen und genau der Fall, in dem "undetermined" zutrifft.
// Deshalb wird der LOINC-Code als Frage verwendet, die Antwort aber aus SNOMED CT
// gebunden, wo 37791004 |Indeterminate sex| existiert. Alle Codes am 2026-09-01
// per CodeSystem/$lookup auf tx.fhir.org bestaetigt.
// -----------------------------------------------------------------------------

Profile:     MII_PR_Seltene_GeschlechtBeiGeburt
Id:          mii-pr-seltene-geschlecht-bei-geburt
Parent:      Observation
Title:       "MII PR SE Geschlecht bei Geburt"
Description: "Observation-Profil zur Erfassung des biologischen Geschlechts bei Geburt (sex assigned at birth) gemaess JARDIN-MDS-Entwurf und ERDRI-CDS. Bewusst getrennt vom administrativen Patient.gender des MII KDS Moduls Person, von dem es abweichen kann."
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
* category[socialHistory] ^short = "Kategorie: Sozialanamnese"

* code MS
* code = $LNC#76689-9 "Sex assigned at birth"
* code ^short = "Biologisches Geschlecht bei Geburt"
* code ^definition = "Das bei der Geburt festgestellte biologische Geschlecht. Abzugrenzen vom administrativen Geschlecht (Patient.gender) und von der Geschlechtsidentitaet (LOINC 76691-5)."

* subject 1..1 MS
* subject only Reference(Patient)

* effective[x] MS
* effective[x] only dateTime
* effectiveDateTime ^short = "Zeitpunkt der Feststellung (in der Regel das Geburtsdatum)"

* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept MS
* valueCodeableConcept.coding MS
* valueCodeableConcept.coding from MII_VS_Seltene_GeschlechtBeiGeburt (required)
* valueCodeableConcept.coding.system = $SCT
* valueCodeableConcept.text MS
* valueCodeableConcept ^short = "Male | Female | Indeterminate sex | Unknown"


ValueSet:    MII_VS_Seltene_GeschlechtBeiGeburt
Id:          mii-vs-seltene-geschlecht-bei-geburt
Title:       "MII VS Seltene Erkrankungen Geschlecht bei Geburt"
Description: "Biologisches Geschlecht bei Geburt nach JARDIN-MDS/ERDRI-CDS: Male, Female, Indeterminate sex. Ergaenzt um Unknown fuer den Fall, dass die Angabe nicht erhoben wurde — dieser Fall ist ausdruecklich NICHT mit Indeterminate sex zu verwechseln, das eine klinische Feststellung ist."
* insert Publisher
* insert PR_CS_VS_Version
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-geschlecht-bei-geburt"
* ^status = #active
* ^experimental = false
* $SCT#248153007 "Male"
* $SCT#248152002 "Female"
* $SCT#37791004 "Indeterminate sex"
* $SCT#261665006 "Unknown"
