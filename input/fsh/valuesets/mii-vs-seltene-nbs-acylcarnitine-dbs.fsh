// GENERIERT aus der LOINC-SNOMED-Ontologie (Snowstorm-Branch MAIN/SNOMEDCT-LOINC)
// und anschliessend Code für Code gegen tx.fhir.org verifiziert.
// Die Auswahl ist NICHT handverlesen, sondern das Ergebnis dieser ECL-Abfrage:
//
//   <363787002 |Observable entity| : 704327008 |Direct site| = 440500007 |Dried blood spot specimen|, 246093002 |Component| = << 102651000 |Acylcarnitine|
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
// (identifierScheme 30051010000102 "LOINC code identifier") gelesen; alle 78
// Codes wurden per CodeSystem/$lookup auf tx.fhir.org bestätigt.
//
// Warum LOINC-Codes und nicht die SNOMED-Observables: tx.fhir.org — der Server, gegen
// den dieser IG baut und validiert — kennt die LOINC-SNOMED-Edition nicht
// (http://snomed.info/sct/11010000107 ist dort keine gültige Version). Ein intensionales
// ECL-ValueSet wäre damit nicht expandierbar. Die Ontologie liefert hier die Auswahl,
// LOINC die Codes.
//
// NICHT VON HAND BEARBEITEN — regenerieren mit scripts/generate-nbs-valuesets.py.
ValueSet: MII_VS_Seltene_NBS_Acylcarnitine_DBS
Id: mii-vs-seltene-nbs-acylcarnitine-dbs
Title: "MII VS Seltene Erkrankungen NBS Acylcarnitine (Trockenblut)"
Description: "Acylcarnitin- und Carnitin-Analyte in Trockenblut (dried blood spot) — die Messgrößen des MS/MS-Acylcarnitinprofils im Neugeborenenscreening (Fettsäureoxidationsstörungen, Organoazidopathien, Carnitinzyklusdefekte). Abgeleitet aus der LOINC-SNOMED-Ontologie und deshalb NICHT vollständig gegenüber LOINC: enthalten ist der nach SNOMED gemappte Teil. Für die lückenlose Menge siehe mii-vs-seltene-nbs-dbs-all."
* insert Publisher
* insert PR_CS_VS_Version
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-nbs-acylcarnitine-dbs"
* ^status = #active
* ^experimental = false

* $loinc#50102-3 "3-Hydroxybutyrylcarnitine (C4-OH) [Moles/volume] in DBS"
* $loinc#53189-7 "3-Hydroxydodecanoylcarnitine (C12-OH) [Moles/volume] in DBS"
* $loinc#53173-1 "3-Hydroxyhexanoylcarnitine (C6-OH) [Moles/volume] in DBS"
* $loinc#50106-4 "3-Hydroxyisovalerylcarnitine (C5-OH) [Moles/volume] in DBS"
* $loinc#53171-5 "3-Hydroxyisovalerylcarnitine (C5-OH)/Carnitine.free (C0) [Molar ratio] in DBS"
* $loinc#53172-3 "3-Hydroxyisovalerylcarnitine (C5-OH)/Octanoylcarnitine (C8) [Molar ratio] in DBS"
* $loinc#50109-8 "3-Hydroxylinoleoylcarnitine (C18:2-OH) [Moles/volume] in DBS"
* $loinc#50113-0 "3-Hydroxyoleoylcarnitine (C18:1-OH) [Moles/volume] in DBS"
* $loinc#50121-3 "3-Hydroxypalmitoleylcarnitine (C16:1-OH) [Moles/volume] in DBS"
* $loinc#50125-4 "3-Hydroxypalmitoylcarnitine (C16-OH) [Moles/volume] in DBS"
* $loinc#53201-0 "3-Hydroxypalmitoylcarnitine (C16-OH)/Palmitoylcarnitine (C16) [Molar ratio] in DBS"
* $loinc#50132-0 "3-Hydroxystearoylcarnitine (C18-OH) [Moles/volume] in DBS"
* $loinc#53196-2 "3-Hydroxytetradecadienoylcarnitine (C14:2-OH) [Moles/volume] in DBS"
* $loinc#50281-5 "3-Hydroxytetradecanoylcarnitine (C14-OH) [Moles/volume] in DBS"
* $loinc#53197-0 "3-Hydroxytetradecenoylcarnitine (C14:1-OH) [Moles/volume] in DBS"
* $loinc#50157-7 "Acetylcarnitine (C2) [Moles/volume] in DBS"
* $loinc#53237-4 "Acrylylcarnitine (C3:1) [Moles/volume] in DBS"
* $loinc#38474-3 "Acylcarnitine [Moles/volume] in DBS"
* $loinc#43717-8 "Acylcarnitine [Presence] in DBS"
* $loinc#74628-9 "Adipoylcarnitine (C6-DC) [Moles/volume] in DBS"
* $loinc#53613-6 "Benzoylcarnitine (BzCn) [Moles/volume] in DBS"
* $loinc#53065-9 "Butyrylcarnitine (C4) [Moles/volume] in DBS"
* $loinc#53180-6 "Decadienoylcarnitine (C10:2) [Moles/volume] in DBS"
* $loinc#45197-1 "Decanoylcarnitine (C10) [Moles/volume] in DBS"
* $loinc#45198-9 "Decenoylcarnitine (C10:1) [Moles/volume] in DBS"
* $loinc#53214-3 "Dicarboxydodecanoylcarnitine (C12-DC) [Moles/volume] in DBS"
* $loinc#53213-5 "Dicarboxydodecenoylcarnitine (C12:1-DC) [Moles/volume] in DBS"
* $loinc#53218-4 "Dicarboxypalmitoylcarnitine (C16-DC) [Moles/volume] in DBS"
* $loinc#53220-0 "Dicarboxystearoylcarnitine (C18-DC) [Moles/volume] in DBS"
* $loinc#53219-2 "Dicarboxyoleylcarnitine (C18:1-DC) [Moles/volume] in DBS"
* $loinc#53216-8 "Dicarboxytetradecanoylcarnitine (C14-DC) [Moles/volume] in DBS"
* $loinc#53215-0 "Dicarboxytetradecenoylcarnitine (C14:1-DC) [Moles/volume] in DBS"
* $loinc#45199-7 "Dodecanoylcarnitine (C12) [Moles/volume] in DBS"
* $loinc#45200-3 "Dodecenoylcarnitine (C12:1) [Moles/volume] in DBS"
* $loinc#53462-8 "Eicosanoylcarnitine (C20) [Moles/volume] in DBS"
* $loinc#45207-8 "Glutarylcarnitine (C5-DC) [Moles/volume] in DBS"
* $loinc#88016-1 "Glutarylcarnitine (C5-DC)/Acetylcarnitine (C2) [Molar ratio] in DBS"
* $loinc#75225-3 "Glutarylcarnitine (C5-DC)/Carnitine (C0) [Molar ratio] in DBS"
* $loinc#75216-2 "Glutarylcarnitine (C5-DC)/Malonylcarnitine (C3-DC) [Molar ratio] in DBS"
* $loinc#75267-5 "Glutarylcarnitine (C5-DC)/Palmitoylcarnitine (C16) [Molar ratio] in DBS"
* $loinc#88017-9 "Glutarylcarnitine (C5-DC)/Propionylcarnitine (C3) [Molar ratio] in DBS"
* $loinc#53204-4 "Heptanoylcarnitine (C7) [Moles/volume] in DBS"
* $loinc#45211-0 "Hexanoylcarnitine (C6) [Moles/volume] in DBS"
* $loinc#45213-6 "Isobutyrylcarnitine (C4) [Moles/volume] in DBS"
* $loinc#42920-9 "Isovalerylcarnitine (C5) [Moles/volume] in DBS"
* $loinc#45217-7 "Linoleoylcarnitine (C18:2) [Moles/volume] in DBS"
* $loinc#54462-7 "Malonylcarnitine (C3-DC) [Moles/volume] in DBS"
* $loinc#75212-1 "Malonylcarnitine (C3-DC)/Decanoylcarnitine (C10) [Molar ratio] in DBS"
* $loinc#45222-7 "Methylmalonylcarnitine (C4-DC) [Moles/volume] in DBS"
* $loinc#53181-4 "Methylmalonylcarnitine (C4-DC)/3-Hydroxyisovalerylcarnitine (C5-OH) [Molar ratio] in DBS"
* $loinc#53207-7 "Nonanoylcarnitine (C9) [Moles/volume] in DBS"
* $loinc#53175-6 "Octanoylcarnitine (C8) [Moles/volume] in DBS"
* $loinc#53176-4 "Octanoylcarnitine (C8)/Acetylcarnitine (C2) [Molar ratio] in DBS"
* $loinc#53177-2 "Octanoylcarnitine (C8)/Decanoylcarnitine (C10) [Molar ratio] in DBS"
* $loinc#88014-6 "Octanoylcarnitine (C8)/Carnitine.free (C0) [Molar ratio] in DBS"
* $loinc#53174-9 "Octenoylcarnitine (C8:1) [Moles/volume] in DBS"
* $loinc#53202-8 "Oleoylcarnitine (C18:1) [Moles/volume] in DBS"
* $loinc#53199-6 "Palmitoylcarnitine (C16) [Moles/volume] in DBS"
* $loinc#88015-3 "Palmitoylcarnitine (C16)/Acetylcarnitine (C2) [Molar ratio] in DBS"
* $loinc#88024-5 "Palmitoylcarnitine (C16)/Carnitine.free (C0) [Molar ratio] in DBS"
* $loinc#54475-9 "Pimeloylcarnitine (C7-DC) [Moles/volume] in DBS"
* $loinc#53160-8 "Propionylcarnitine (C3) [Moles/volume] in DBS"
* $loinc#53163-2 "Propionylcarnitine (C3)/Acetylcarnitine (C2) [Molar ratio] in DBS"
* $loinc#53162-4 "Propionylcarnitine (C3)/Carnitine.free (C0) [Molar ratio] in DBS"
* $loinc#53164-0 "Propionylcarnitine (C3)/Palmitoylcarnitine (C16) [Molar ratio] in DBS"
* $loinc#53161-6 "Propionylcarnitine (C3)/Methionine [Molar ratio] in DBS"
* $loinc#53241-6 "Stearoylcarnitine (C18) [Moles/volume] in DBS"
* $loinc#53400-8 "Stearoylcarnitine (C18)/Propionylcarnitine (C3) [Molar ratio] in DBS"
* $loinc#53210-1 "Suberylcarnitine (C8-DC) [Moles/volume] in DBS"
* $loinc#53190-5 "Tetradecadienoylcarnitine (C14:2) [Moles/volume] in DBS"
* $loinc#53192-1 "Tetradecanoylcarnitine (C14) [Moles/volume] in DBS"
* $loinc#53191-3 "Tetradecenoylcarnitine (C14:1) [Moles/volume] in DBS"
* $loinc#53193-9 "Tetradecenoylcarnitine (C14:1)/Acetylcarnitine (C2) [Molar ratio] in DBS"
* $loinc#53194-7 "Tetradecenoylcarnitine (C14:1)/Dodecenoylcarnitine (C12:1) [Molar ratio] in DBS"
* $loinc#88025-2 "Tetradecenoylcarnitine (C14:1)/Carnitine.free (C0) [Molar ratio] in DBS"
* $loinc#53195-4 "Tetradecenoylcarnitine (C14:1)/Palmitoylcarnitine (C16) [Molar ratio] in DBS"
* $loinc#70159-9 "Tetradecenoylcarnitine (C14:1)/Tetradecanoylcarnitine (C14) [Molar ratio] in DBS"
* $loinc#53170-7 "Tiglylcarnitine (C5:1) [Moles/volume] in DBS"
