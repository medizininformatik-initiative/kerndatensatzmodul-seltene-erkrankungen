// GENERIERT aus der LOINC-SNOMED-Ontologie (Snowstorm-Branch MAIN/SNOMEDCT-LOINC)
// und anschliessend Code für Code gegen tx.fhir.org verifiziert.
// Die Auswahl ist NICHT handverlesen, sondern das Ergebnis dieser ECL-Abfrage:
//
//   <363787002 |Observable entity| : 704327008 |Direct site| = 440500007 |Dried blood spot specimen|, 246093002 |Component| = << 38082009 |Hemoglobin|
//
// NICHT VOLLSTÄNDIG GEGENÜBER LOINC — das ist der Preis der Gliederung. Die
// LOINC-SNOMED-Edition bildet nur den nach SNOMED gemappten Teil von LOINC ab:
// gemessen am 2026-08-28 sind das 335 Konzepte gegenüber 608 LOINC-Codes mit
// SYSTEM = Trockenblut. Bei den Acylcarnitinen fehlen dadurch etwa 45 % der
// LOINC-Codes, bei den Hämoglobin-Fraktionen rund zwei Drittel, darunter echte
// Analyte wie 50086-8 (C5-OH) und 53166-5 (C4). Wer Vollständigkeit braucht statt
// klinischer Gliederung, nimmt mii-vs-seltene-nbs-dbs-all: dort ist die Menge
// intensional über die LOINC-Eigenschaft SYSTEM definiert und deshalb lückenlos.
//
// Aus jedem Treffer wurde der LOINC-Code über den alternateIdentifier des Konzepts
// (identifierScheme 30051010000102 "LOINC code identifier") gelesen; alle 9
// Codes wurden per CodeSystem/$lookup auf tx.fhir.org bestätigt.
//
// Warum LOINC-Codes und nicht die SNOMED-Observables: tx.fhir.org — der Server, gegen
// den dieser IG baut und validiert — kennt die LOINC-SNOMED-Edition nicht
// (http://snomed.info/sct/11010000107 ist dort keine gültige Version). Ein intensionales
// ECL-ValueSet wäre damit nicht expandierbar. Die Ontologie liefert hier die Auswahl,
// LOINC die Codes.
//
// NICHT VON HAND BEARBEITEN — regenerieren mit scripts/generate-nbs-valuesets.py.
ValueSet: MII_VS_Seltene_NBS_Hemoglobin_DBS
Id: mii-vs-seltene-nbs-hemoglobin-dbs
Title: "MII VS Seltene Erkrankungen NBS Hämoglobin-Fraktionen (Trockenblut)"
Description: "Hämoglobin-Fraktionen in Trockenblut, bezogen auf das Gesamthämoglobin — die Messgrößen des Screenings auf Sichelzellkrankheit und weitere Hämoglobinopathien. Abgeleitet aus der LOINC-SNOMED-Ontologie und deshalb deutlich unvollständig gegenüber LOINC (rund ein Drittel der DBS-Hämoglobin-Codes); für die lückenlose Menge siehe mii-vs-seltene-nbs-dbs-all."
* insert Publisher
* insert PR_CS_VS_Version
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-nbs-hemoglobin-dbs"
* ^status = #active
* ^experimental = false

* $loinc#54069-0 "Hemoglobin Barts/Hemoglobin.total in DBS"
* $loinc#96595-4 "Hemoglobin A1c/Hemoglobin.total in DBS"
* $loinc#54072-4 "Hemoglobin A/Hemoglobin.total in DBS"
* $loinc#54073-2 "Hemoglobin C/Hemoglobin.total in DBS"
* $loinc#54070-8 "Hemoglobin D/Hemoglobin.total in DBS"
* $loinc#54071-6 "Hemoglobin E/Hemoglobin.total in DBS"
* $loinc#54074-0 "Hemoglobin F/Hemoglobin.total in DBS"
* $loinc#54068-2 "Hemoglobin O - Arab/Hemoglobin.total in DBS"
* $loinc#56476-5 "Hemoglobin S/Hemoglobin.total in DBS"
