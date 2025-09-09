CodeSystem: MII_CS_Seltene_HPO_ChangeStatus
Id: mii-cs-seltene-hpo-change-status
Title: "MII CS Seltene Erkrankungen HPO Change Status"
Description: "CodeSystem zur Dokumentation von Änderungen bei HPO-Phänotypen über Zeit"
* insert Publisher
* insert PR_CS_VS_Version
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-hpo-change-status"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete

* #newly-added "Newly Added"
  * ^designation[0].language = #de-DE
  * ^designation[=].value = "Neu hinzugefügt"
  * ^definition = "Phänotyp wurde neu beobachtet/diagnostiziert"

* #improved "Improved" 
  * ^designation[0].language = #de-DE
  * ^designation[=].value = "Verbessert"
  * ^definition = "Phänotyp hat sich verbessert"

* #degraded "Degraded"
  * ^designation[0].language = #de-DE
  * ^designation[=].value = "Verschlechtert"
  * ^definition = "Phänotyp hat sich verschlechtert"

* #no-longer-observed "No Longer Observed"
  * ^designation[0].language = #de-DE
  * ^designation[=].value = "Nicht mehr beobachtet"
  * ^definition = "Phänotyp wird nicht mehr beobachtet/ist verschwunden"

* #unchanged "Unchanged"
  * ^designation[0].language = #de-DE
  * ^designation[=].value = "Unverändert"
  * ^definition = "Phänotyp ist unverändert geblieben"