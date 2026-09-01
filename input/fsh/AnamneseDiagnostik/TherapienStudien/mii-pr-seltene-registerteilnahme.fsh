// -----------------------------------------------------------------------------
// Teilnahme an einem (ERN-)Register
//
// Herkunft: der JARDIN-MDS-Entwurf sieht vor, dass die Teilnahme an
// ERN-Registern (European Reference Networks) dokumentiert wird. Das Ticket
// fragt ausdrücklich, ob das "analog zu Studien generell" abzubilden wäre.
// Tracking: GitHub Issue #38, Ballot-Ticket HDB-786.
//
// ANTWORT AUF DIE TICKET-FRAGE: ja, und das Modul Studie bringt beide Bausteine
// bereits mit (geprüft an de.medizininformatikinitiative.kerndatensatz.studie
// 2026.0.2, ohnehin Dependency dieses Moduls):
//   * mii-pr-studie-register  — ein Register, profiliert auf Library
//                               (Library.type = asset-collection)
//   * mii-pr-studie-proband   — die Teilnahme einer Person, profiliert auf
//                               ResearchSubject
// Dieses Modul erfindet daher nichts Neues, sondern schränkt den Probanden auf
// den Registerfall ein.
//
// MODELLIERUNGSSPANNUNG, die dabei sichtbar wird und NICHT hier zu lösen ist:
// ResearchSubject.study ist in FHIR R4 auf Reference(ResearchStudy) festgelegt,
// das Modul Studie modelliert ein Register aber als Library. Ein Proband kann
// also formal nicht auf ein Register im Sinne von mii-pr-studie-register
// zeigen — die beiden Bausteine passen an genau dieser Stelle nicht zusammen.
// Bis das im Modul Studie geklärt ist, wird der Registerbezug hier über eine
// eigene Extension hergestellt, die direkt auf die Library zeigt; study bleibt
// für den Fall erhalten, dass das Register zusätzlich als ResearchStudy geführt
// wird. Das ist bewusst redundant und als Übergang gedacht, nicht als Zielbild.
// Diese Beobachtung gehört als Rückmeldung an das Modul Studie.
// -----------------------------------------------------------------------------

Extension:   MII_EX_Seltene_Register
Id:          mii-ex-seltene-register
Title:       "MII EX SE Register"
Description: "Verweis auf das Register, an dem die Person teilnimmt, als Library nach dem Profil mii-pr-studie-register des MII KDS Moduls Studie. Notwendig, weil ResearchSubject.study nur auf ResearchStudy zeigen kann, das Modul Studie ein Register aber als Library modelliert."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-register"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* ^context[+].type = #element
* ^context[=].expression = "ResearchSubject"
* value[x] only Reference
* valueReference 1..1
* valueReference only Reference(Library)
* valueReference ^short = "Register (Library nach mii-pr-studie-register)"


Profile:     MII_PR_Seltene_Registerteilnahme
Id:          mii-pr-seltene-registerteilnahme
Parent:      $mii-pr-studie-proband
Title:       "MII PR SE Registerteilnahme"
Description: "Teilnahme einer Person an einem Register für seltene Erkrankungen, insbesondere an einem Register eines European Reference Network (ERN). Leitet vom Probanden-Profil des MII KDS Moduls Studie ab und ergänzt den Verweis auf das Register."
* insert PR_CS_VS_Version
* insert Publisher

* extension contains MII_EX_Seltene_Register named register 1..1 MS
* extension[register] ^short = "Register, an dem teilgenommen wird"

* identifier MS
* identifier ^short = "Pseudonym der Person im Register"
* identifier ^comment = "Vom Modul Studie geerbt: der subjectIdentificationCode ist dort verpflichtend. In Registern ist das üblicherweise das registereigene Pseudonym, nicht die Patienten-ID des Standorts."

* status MS
* status ^short = "Status der Teilnahme"

* period 1..1 MS
* period.start 1..1 MS
* period ^short = "Zeitraum der Registerteilnahme"

* individual 1..1 MS
* individual only Reference(Patient)

* consent MS
* consent ^comment = "Vom Probanden-Profil des Moduls Studie mit 1..1 geerbt. Für die Aufnahme in ein ERN-Register ist eine Einwilligung ohnehin die Regel; die Pflichtangabe ist hier also keine zusätzliche Hürde, sondern deckt sich mit der Praxis."

* study MS
* study ^short = "Nur zu setzen, wenn das Register zusätzlich als ResearchStudy geführt wird"
* study ^comment = "Siehe Kopfkommentar: der eigentliche Registerbezug läuft über die Extension 'register', weil ResearchSubject.study nicht auf eine Library zeigen kann."
