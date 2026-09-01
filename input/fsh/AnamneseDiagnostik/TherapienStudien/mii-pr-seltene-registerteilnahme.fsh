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
// MODELLIERUNGSSPANNUNG, beim Schreiben der Beispiele praezisiert:
// ResearchSubject.study ist in FHIR R4 nicht etwa optional, sondern 1..1 PFLICHT
// und auf Reference(ResearchStudy) festgelegt (am R4-Snapshot geprueft). Das
// Modul Studie modelliert ein Register dagegen als Library
// (mii-pr-studie-register, Library.type = asset-collection). Eine Library kann
// damit NIEMALS das Ziel von study sein — nicht ersatzweise und nicht ergaenzend.
//
// Folge fuer dieses Profil: Wer eine Registerteilnahme abbilden will, MUSS das
// Register als ResearchStudy fuehren. Ein Register ist inhaltlich eine
// Beobachtungsstudie, das ist keine Verlegenheitsloesung. Die Library aus dem
// Modul Studie bleibt daneben sinnvoll, aber als KATALOGEINTRAG des Registers,
// nicht als Teilnahmeziel — deshalb ist die Extension unten 0..1 und optional.
// Diese Praezisierung gehoert als Rueckmeldung an das Modul Studie: dort steht
// Register (Library) und Proband (ResearchSubject) unverbunden nebeneinander.
// -----------------------------------------------------------------------------

Extension:   MII_EX_Seltene_Register
Id:          mii-ex-seltene-register
Title:       "MII EX SE Register"
Description: "Optionaler Verweis auf den Library-Katalogeintrag des Registers nach dem Profil mii-pr-studie-register des MII KDS Moduls Studie. Der verbindliche Registerbezug laeuft ueber ResearchSubject.study, das in R4 zwingend auf eine ResearchStudy zeigt."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-register"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* ^context[+].type = #element
* ^context[=].expression = "ResearchSubject"
* value[x] only Reference
* valueReference 1..1
* valueReference only Reference(Library)
* valueReference ^short = "Katalogeintrag des Registers (Library nach mii-pr-studie-register)"


Profile:     MII_PR_Seltene_Registerteilnahme
Id:          mii-pr-seltene-registerteilnahme
Parent:      $mii-pr-studie-proband
Title:       "MII PR SE Registerteilnahme"
Description: "Teilnahme einer Person an einem Register für seltene Erkrankungen, insbesondere an einem Register eines European Reference Network (ERN). Leitet vom Probanden-Profil des MII KDS Moduls Studie ab und ergänzt den Verweis auf das Register."
* insert PR_CS_VS_Version
* insert Publisher

* extension contains MII_EX_Seltene_Register named register 0..1 MS
* extension[register] ^short = "Katalogeintrag des Registers als Library (optional)"
* extension[register] ^comment = "Optionaler Verweis auf den Library-Katalogeintrag nach mii-pr-studie-register. Der verbindliche Registerbezug laeuft ueber study, weil R4 das so erzwingt."

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

* study 1..1 MS
* study only Reference(ResearchStudy)
* study ^short = "Das Register, als ResearchStudy gefuehrt"
* study ^comment = "In R4 ist study 1..1 Pflicht und auf ResearchStudy festgelegt. Ein Register muss daher als ResearchStudy vorliegen; der Library-Katalogeintrag des Moduls Studie kann hier nicht stehen. Siehe Kopfkommentar."
