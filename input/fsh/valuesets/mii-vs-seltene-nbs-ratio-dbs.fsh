// GENERIERT aus der LOINC-SNOMED-Ontologie (Snowstorm-Branch MAIN/SNOMEDCT-LOINC)
// und anschliessend Code für Code gegen tx.fhir.org verifiziert.
// Die Auswahl ist NICHT handverlesen, sondern das Ergebnis dieser ECL-Abfrage:
//
//   <363787002 |Observable entity| : 704327008 |Direct site| = 440500007 |Dried blood spot specimen|, 370130000 |Property| = 118563004 |Substance ratio|
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
// (identifierScheme 30051010000102 "LOINC code identifier") gelesen; alle 47
// Codes wurden per CodeSystem/$lookup auf tx.fhir.org bestätigt.
//
// Warum LOINC-Codes und nicht die SNOMED-Observables: tx.fhir.org — der Server, gegen
// den dieser IG baut und validiert — kennt die LOINC-SNOMED-Edition nicht
// (http://snomed.info/sct/11010000107 ist dort keine gültige Version). Ein intensionales
// ECL-ValueSet wäre damit nicht expandierbar. Die Ontologie liefert hier die Auswahl,
// LOINC die Codes.
//
// NICHT VON HAND BEARBEITEN — regenerieren mit scripts/generate-nbs-valuesets.py.
ValueSet: MII_VS_Seltene_NBS_Ratio_DBS
Id: mii-vs-seltene-nbs-ratio-dbs
Title: "MII VS Seltene Erkrankungen NBS Quotienten (Trockenblut)"
Description: "Diagnostische Quotienten aus Trockenblut-Analyten. Im Neugeborenenscreening tragen die Verhältnisse (z. B. C3/C2, Phe/Tyr) einen großen Teil der diagnostischen Trennschärfe, weil sie von der Probenqualität weniger abhängen als Einzelwerte."
* insert Publisher
* insert PR_CS_VS_Version
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-nbs-ratio-dbs"
* ^status = #active
* ^experimental = false

* $loinc#53171-5 "3-Hydroxyisovalerylcarnitine (C5-OH)/Carnitine.free (C0) [Molar ratio] in DBS"
* $loinc#53172-3 "3-Hydroxyisovalerylcarnitine (C5-OH)/Octanoylcarnitine (C8) [Molar ratio] in DBS"
* $loinc#53201-0 "3-Hydroxypalmitoylcarnitine (C16-OH)/Palmitoylcarnitine (C16) [Molar ratio] in DBS"
* $loinc#75214-7 "Arginine/Ornithine [Molar ratio] in DBS"
* $loinc#53398-4 "Arginine/Phenylalanine [Molar ratio] in DBS"
* $loinc#53200-2 "Argininosuccinate/Arginine [Molar ratio] in DBS"
* $loinc#45192-2 "Carnitine esters/Carnitine.free (C0) [Molar ratio] in DBS"
* $loinc#54092-2 "Citrulline/Arginine [Molar ratio] in DBS"
* $loinc#53157-4 "Citrulline/Phenylalanine [Molar ratio] in DBS"
* $loinc#53399-2 "Citrulline/Tyrosine [Molar ratio] in DBS"
* $loinc#104196-1 "Creatine/Creatinine [Molar ratio] in DBS"
* $loinc#53233-3 "Carnitine free (C0)/Palmitoylcarnitine (C16) [Molar ratio] in DBS"
* $loinc#53234-1 "Carnitine free (C0)/Stearoylcarnitine (C18) [Molar ratio] in DBS"
* $loinc#88016-1 "Glutarylcarnitine (C5-DC)/Acetylcarnitine (C2) [Molar ratio] in DBS"
* $loinc#75225-3 "Glutarylcarnitine (C5-DC)/Carnitine (C0) [Molar ratio] in DBS"
* $loinc#75216-2 "Glutarylcarnitine (C5-DC)/Malonylcarnitine (C3-DC) [Molar ratio] in DBS"
* $loinc#75267-5 "Glutarylcarnitine (C5-DC)/Palmitoylcarnitine (C16) [Molar ratio] in DBS"
* $loinc#88017-9 "Glutarylcarnitine (C5-DC)/Propionylcarnitine (C3) [Molar ratio] in DBS"
* $loinc#107506-8 "Guanidinoacetate/Creatine [Molar ratio] in DBS"
* $loinc#104195-3 "Guanidinoacetate/Creatinine [Molar ratio] in DBS"
* $loinc#75268-3 "Leucine/Phenylalanine [Molar ratio] in DBS"
* $loinc#75212-1 "Malonylcarnitine (C3-DC)/Decanoylcarnitine (C10) [Molar ratio] in DBS"
* $loinc#53181-4 "Methylmalonylcarnitine (C4-DC)/3-Hydroxyisovalerylcarnitine (C5-OH) [Molar ratio] in DBS"
* $loinc#80154-8 "Monolysocardiolipin/Cardiolipin [Molar ratio] in DBS"
* $loinc#53176-4 "Octanoylcarnitine (C8)/Acetylcarnitine (C2) [Molar ratio] in DBS"
* $loinc#53177-2 "Octanoylcarnitine (C8)/Decanoylcarnitine (C10) [Molar ratio] in DBS"
* $loinc#88014-6 "Octanoylcarnitine (C8)/Carnitine.free (C0) [Molar ratio] in DBS"
* $loinc#75215-4 "Ornithine/Citrulline [Molar ratio] in DBS"
* $loinc#88015-3 "Palmitoylcarnitine (C16)/Acetylcarnitine (C2) [Molar ratio] in DBS"
* $loinc#88024-5 "Palmitoylcarnitine (C16)/Carnitine.free (C0) [Molar ratio] in DBS"
* $loinc#74300-5 "Phenylalanine/Tyrosine [Molar ratio] in DBS --post therapeutic diet"
* $loinc#35572-7 "Phenylalanine/Tyrosine [Molar ratio] in DBS"
* $loinc#53392-7 "Proline/Phenylalanine [Molar ratio] in DBS"
* $loinc#53163-2 "Propionylcarnitine (C3)/Acetylcarnitine (C2) [Molar ratio] in DBS"
* $loinc#53162-4 "Propionylcarnitine (C3)/Carnitine.free (C0) [Molar ratio] in DBS"
* $loinc#53164-0 "Propionylcarnitine (C3)/Palmitoylcarnitine (C16) [Molar ratio] in DBS"
* $loinc#53161-6 "Propionylcarnitine (C3)/Methionine [Molar ratio] in DBS"
* $loinc#53156-6 "Methionine/Phenylalanine [Molar ratio] in DBS"
* $loinc#53400-8 "Stearoylcarnitine (C18)/Propionylcarnitine (C3) [Molar ratio] in DBS"
* $loinc#53193-9 "Tetradecenoylcarnitine (C14:1)/Acetylcarnitine (C2) [Molar ratio] in DBS"
* $loinc#53194-7 "Tetradecenoylcarnitine (C14:1)/Dodecenoylcarnitine (C12:1) [Molar ratio] in DBS"
* $loinc#88025-2 "Tetradecenoylcarnitine (C14:1)/Carnitine.free (C0) [Molar ratio] in DBS"
* $loinc#53195-4 "Tetradecenoylcarnitine (C14:1)/Palmitoylcarnitine (C16) [Molar ratio] in DBS"
* $loinc#70159-9 "Tetradecenoylcarnitine (C14:1)/Tetradecanoylcarnitine (C14) [Molar ratio] in DBS"
* $loinc#74481-3 "Tyrosine/Phenylalanine [Molar ratio] in DBS"
* $loinc#74299-9 "Tyrosine/Phenylalanine [Molar ratio] in DBS --post therapeutic diet"
* $loinc#53151-7 "Valine/Phenylalanine [Molar ratio] in DBS"
