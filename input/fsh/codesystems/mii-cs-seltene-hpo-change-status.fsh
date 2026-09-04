CodeSystem: MII_CS_Seltene_HPO_ChangeStatus
Id: mii-cs-seltene-hpo-change-status
Title: "MII CS Seltene Erkrankungen HPO Change Status"
Description: "CodeSystem zur Dokumentation von Änderungen bei HPO-Phänotypen über Zeit. Eigene Codes des Moduls: HPO führt für diesen Zweck nichts. Sein Zweig Clinical course (HP:0031797) beschreibt den Verlauf der Krankheit — Onset, Pace of progression, Temporal pattern, Disease remission —, nicht die Veränderung eines einzelnen Phänotyps zwischen zwei Erhebungen. Vier der fünf Konzepte haben SNOMED-CT-Entsprechungen, die je Code unten angegeben sind; für newly-added führt SNOMED kein generisches Konzept."
* insert Publisher
* insert PR_CS_VS_Version
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-hpo-change-status"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete

* #newly-added "Neu hinzugefügt"
  * ^definition = "Phänotyp wurde neu beobachtet/diagnostiziert"
  // SNOMED CT fuehrt kein generisches Konzept fuer "neu aufgetreten";
  // 129721008 ist auf die Mammographie eingeschraenkt.

* #improved "Verbessert"
  * ^definition = "Phänotyp hat sich verbessert"
  // Entsprechung in SNOMED CT: 385633008 |Improving| (geprueft 2026-09-04)

* #degraded "Verschlechtert"
  * ^definition = "Phänotyp hat sich verschlechtert"
  // Entsprechung in SNOMED CT: 230993007 |Worsening| (geprueft 2026-09-04)

* #no-longer-observed "Nicht mehr beobachtet"
  * ^definition = "Phänotyp wird nicht mehr beobachtet/ist verschwunden"
  // Entsprechung in SNOMED CT: 723506003 |Resolved| (geprueft 2026-09-04)

* #unchanged "Unverändert"
  * ^definition = "Phänotyp ist unverändert geblieben"
  // Entsprechung in SNOMED CT: 260388006 |No status change| (geprueft 2026-09-04)