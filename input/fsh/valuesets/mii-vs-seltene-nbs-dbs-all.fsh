// INTENSIONAL definiert, nicht aufgezählt — und das ist hier der Punkt.
//
// Alle anderen NBS-ValueSets dieses Moduls leiten ihre Mitglieder aus der
// LOINC-SNOMED-Ontologie ab. Das gibt ihnen ihre klinische Gliederung (Acylcarnitine,
// Aminosäuren, Enzymaktivitäten …), kostet aber Vollständigkeit: die LOINC-SNOMED-Edition
// bildet nur den nach SNOMED gemappten Teil von LOINC ab. Gemessen am 2026-08-28 sind das
// 335 Konzepte gegenüber 608 LOINC-Codes mit SYSTEM = Trockenblut — rund 45 % der
// LOINC-Menge fehlen in der Ontologie, darunter klinisch relevante Analyte wie
// 50086-8 (C5-OH, Leitmetabolit bei 3-MCC-Mangel) und 53166-5 (C4).
//
// Dieses ValueSet schließt diese Lücke: Es nimmt LOINC selbst als Quelle und bindet an die
// LOINC-Eigenschaft SYSTEM (LP21304-8 "Bld.dot" = dried blood spot). Damit ist es
// per Konstruktion vollständig und altert nicht — ein neuer Trockenblut-Code von LOINC ist
// automatisch enthalten, ohne dass jemand diese Datei anfasst.
//
// Der Preis ist die fehlende Gliederung: die 608 Codes umfassen Analyte, Quotienten,
// Panels, Interpretationscodes und Befundkommentare nebeneinander, und auch Analytik, die
// mit dem Neugeborenenscreening nichts zu tun hat (Medikamentenspiegel, Infektionsserologie,
// PSA). Wer eine klinisch abgegrenzte Menge braucht, nimmt eines der gruppierten ValueSets;
// wer Vollständigkeit braucht, dieses.
//
// tx.fhir.org expandiert diesen Filter (geprüft 2026-08-28: 608 Codes).
ValueSet: MII_VS_Seltene_NBS_DBS_All
Id: mii-vs-seltene-nbs-dbs-all
Title: "MII VS Seltene Erkrankungen NBS alle Trockenblut-Analyte (LOINC)"
Description: "Alle LOINC-Codes, deren Untersuchungsmaterial Trockenblut (dried blood spot) ist — intensional über die LOINC-Eigenschaft SYSTEM definiert und damit vollständig. Enthält Analyte, Quotienten, Panels und Interpretationscodes nebeneinander sowie Analytik ausserhalb des Neugeborenenscreenings; für klinisch abgegrenzte Teilmengen dienen die gruppierten ValueSets mii-vs-seltene-nbs-*-dbs."
* insert Publisher
* insert PR_CS_VS_Version
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-nbs-dbs-all"
* ^status = #active
* ^experimental = false

* include codes from system $loinc where SYSTEM = "LP21304-8"
