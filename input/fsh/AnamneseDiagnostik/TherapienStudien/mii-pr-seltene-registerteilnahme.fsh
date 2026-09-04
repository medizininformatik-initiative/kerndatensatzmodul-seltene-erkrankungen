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
//
// WARUM DIESES PROFIL TROTZDEM NICHT VON mii-pr-studie-proband ABLEITET:
// Das Probanden-Profil fordert consent mit 1..1. Das passt zum PRIMAERFALL, in
// dem der Standort die Studie selbst durchfuehrt und die Einwilligung vorhaelt.
// Hier geht es aber um SEKUNDAERINFORMATION im Versorgungskontext: dokumentiert
// wird, DASS eine Person an einem Register teilnimmt. Die Einwilligung liegt in
// aller Regel beim Registerbetreiber (dem ERN), nicht im FHIR-Repository des
// dokumentierenden Standorts — sie waere dort schlicht nicht referenzierbar.
// Eine Ableitung kann Kardinalitaeten nur verschaerfen, niemals lockern; consent
// bliebe also Pflicht und wuerde Standorte zwingen, auf eine Ressource zu
// verweisen, die sie nicht haben. Deshalb leitet dieses Profil direkt von
// ResearchSubject ab, wo consent 0..1 ist, und bleibt in allem uebrigen nah am
// Probanden-Profil. Auch das gehoert als Rueckmeldung an das Modul Studie:
// die Teilnahme-Dokumentation aus zweiter Hand ist dort bisher nicht vorgesehen.
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
//
// ZUSTAENDIGKEIT — bewusst hier, aber nicht selbstverstaendlich:
// Dieser Datenpunkt ist NICHT auf seltene Erkrankungen beschraenkt. Die Teilnahme an einem Register ist ein allgemeiner Sachverhalt; Register
// gibt es fuer Krebs, Implantate und vieles andere.
// Modelliert wird er hier, weil der Bedarf hier konkret entstanden ist: der
// JARDIN-MDS-Entwurf ist der Datenbedarf eines europaeischen Referenznetzwerks
// mit Termin, kein Wunschzettel, und kein angebundenes MII-Modul deckt ihn ab
// (geprueft 2026-09-01: kein Modul Neonatologie, ICU fuehrt nur
// Koerpergewicht/-groesse/-laenge).
//
// Die Zustaendigkeitsfrage bleibt damit offen, nicht beantwortet. Beim
// Geburtsgeschlecht (Issue #34, HDB-782) ist dieselbe Abwaegung anders
// ausgegangen: dort gab es mit der Gender-Harmony-Extension bereits einen
// Standard und mit MII_PR_Person_Patient bereits einen Ort, also wurde der
// Punkt an das Base-Modul verwiesen statt hier modelliert. Fuer diesen
// Datenpunkt gab es beides nicht. Sollte ein allgemeineres Modul ihn
// aufnehmen, gehoert er dorthin.
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
Parent:      ResearchSubject
Title:       "MII PR SE Registerteilnahme"
Description: "Teilnahme einer Person an einem Register für seltene Erkrankungen, insbesondere an einem Register eines European Reference Network (ERN). Gedacht für die Dokumentation aus zweiter Hand im Versorgungskontext: festgehalten wird, dass die Person teilnimmt. Nah am Probanden-Profil des MII KDS Moduls Studie, aber bewusst nicht davon abgeleitet, weil dessen Pflichtangabe consent den Sekundärfall ausschließt."
* insert PR_CS_VS_Version
* insert Publisher

* extension contains MII_EX_Seltene_Register named register 0..1 MS
* extension[register] ^short = "Katalogeintrag des Registers als Library (optional)"
* extension[register] ^comment = "Optionaler Verweis auf den Library-Katalogeintrag nach mii-pr-studie-register. Der verbindliche Registerbezug laeuft ueber study, weil R4 das so erzwingt."

* identifier 0..1 MS
* identifier ^short = "Pseudonym der Person im Register"
* identifier ^comment = "Das registereigene Pseudonym, nicht die Patienten-ID des Standorts. Bewusst optional: beim Dokumentieren aus zweiter Hand ist oft bekannt, DASS jemand teilnimmt, ohne dass das Pseudonym des Registers am Standort vorliegt. Wenn es vorliegt, ist es die wertvollste Angabe dieses Profils, weil erst sie die Verknuepfung erlaubt."

* status MS
* status ^short = "Status der Teilnahme"

* period 0..1 MS
* period.start MS
* period ^short = "Zeitraum der Registerteilnahme"
* period ^comment = "Optional, aus demselben Grund wie identifier: das Einschlussdatum ist am dokumentierenden Standort nicht immer bekannt."

* individual 1..1 MS
* individual only Reference(Patient)

* consent 0..1 MS
* consent ^short = "Nur zu setzen, wenn die Einwilligung am dokumentierenden Standort tatsaechlich als Ressource vorliegt"
* consent ^comment = "Eine Registeraufnahme beruht selbstverstaendlich auf einer Einwilligung — aber die liegt beim Registerbetreiber. Ein Standort, der die Teilnahme nur nachhaelt, kann sie nicht referenzieren. Die Angabe leer zu lassen bedeutet daher NICHT, dass keine Einwilligung existiert, sondern nur, dass sie hier nicht als FHIR-Ressource greifbar ist. Genau deshalb leitet dieses Profil nicht vom Probanden-Profil des Moduls Studie ab, das consent mit 1..1 fordert."

* study 1..1 MS
* study only Reference(ResearchStudy)
* study ^short = "Das Register, als ResearchStudy gefuehrt"
* study ^comment = "In R4 ist study 1..1 Pflicht und auf ResearchStudy festgelegt. Ein Register muss daher als ResearchStudy vorliegen; der Library-Katalogeintrag des Moduls Studie kann hier nicht stehen. Siehe Kopfkommentar."


// Ergaenzt 2026-09-04: Mapping auf das Logical Model. Das Profil bestand seit
// 2026-09-02 ohne Gegenstueck im Datenmodell — die Elemente sind mit diesem
// Commit dort nachgetragen worden.
Mapping:     SE-LogicalModel-Registerteilnahme
Id:          SE-LogicalModel
Title:       "Mapping FHIR zu Seltene Erkrankungen Logical Model"
Source:      MII_PR_Seltene_Registerteilnahme
Target:      "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/LogicalModel/mii-lm-seltene"
* study -> "registerteilnahme.registerName" "Register"
* status -> "registerteilnahme.teilnahmestatus" "Teilnahmestatus"
* period -> "registerteilnahme.teilnahmezeitraum" "Teilnahmezeitraum"
