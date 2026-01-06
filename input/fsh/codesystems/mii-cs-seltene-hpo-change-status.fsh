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

* #newly-added "Neu hinzugefügt"
  * ^definition = "Phänotyp wurde neu beobachtet/diagnostiziert"

* #improved "Verbessert"
  * ^definition = "Phänotyp hat sich verbessert"

* #degraded "Verschlechtert"
  * ^definition = "Phänotyp hat sich verschlechtert"

* #no-longer-observed "Nicht mehr beobachtet"
  * ^definition = "Phänotyp wird nicht mehr beobachtet/ist verschwunden"

* #unchanged "Unverändert"
  * ^definition = "Phänotyp ist unverändert geblieben"