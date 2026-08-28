// GENERIERT aus der LOINC-SNOMED-Ontologie (Snowstorm-Branch MAIN/SNOMEDCT-LOINC)
// und anschliessend Code für Code gegen tx.fhir.org verifiziert.
// Die Auswahl ist NICHT handverlesen, sondern das Ergebnis dieser ECL-Abfrage:
//
//   <363787002 |Observable entity| : 704327008 |Direct site| = 440500007 |Dried blood spot specimen|, 246093002 |Component| = << 52518006 |Amino acid|
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
// (identifierScheme 30051010000102 "LOINC code identifier") gelesen; alle 96
// Codes wurden per CodeSystem/$lookup auf tx.fhir.org bestätigt.
//
// Warum LOINC-Codes und nicht die SNOMED-Observables: tx.fhir.org — der Server, gegen
// den dieser IG baut und validiert — kennt die LOINC-SNOMED-Edition nicht
// (http://snomed.info/sct/11010000107 ist dort keine gültige Version). Ein intensionales
// ECL-ValueSet wäre damit nicht expandierbar. Die Ontologie liefert hier die Auswahl,
// LOINC die Codes.
//
// NICHT VON HAND BEARBEITEN — regenerieren mit scripts/generate-nbs-valuesets.py.
ValueSet: MII_VS_Seltene_NBS_AminoAcid_DBS
Id: mii-vs-seltene-nbs-aminoacid-dbs
Title: "MII VS Seltene Erkrankungen NBS Aminosäuren (Trockenblut)"
Description: "Aminosäure-Analyte in Trockenblut — die Messgrößen des MS/MS-Aminosäureprofils im Neugeborenenscreening (Phenylketonurie, Ahornsirupkrankheit, Homocystinurie, Tyrosinämie, Harnstoffzyklusdefekte). Abgeleitet aus der LOINC-SNOMED-Ontologie und deshalb NICHT vollständig gegenüber LOINC; für die lückenlose Menge siehe mii-vs-seltene-nbs-dbs-all."
* insert Publisher
* insert PR_CS_VS_Version
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-nbs-aminoacid-dbs"
* ^status = #active
* ^experimental = false

* $loinc#50065-2 "1-Methylhistidine [Moles/volume] in DBS"
* $loinc#47559-0 "Alpha aminobutyrate [Moles/volume] in DBS"
* $loinc#53064-2 "Beta aminoisobutyrate [Moles/volume] in DBS"
* $loinc#47539-2 "3-Methylhistidine [Moles/volume] in DBS"
* $loinc#47551-7 "Alanine [Moles/volume] in DBS"
* $loinc#47556-6 "Alanine/Amino acids.total in DBS"
* $loinc#88018-7 "Alanine/Lysine [Mass Ratio] in DBS"
* $loinc#94572-5 "Alloisoleucine [Moles/volume] in DBS"
* $loinc#74875-6 "Alloisoleucine [Moles/volume] in DBS --post therapeutic diet"
* $loinc#50083-5 "Alpha aminoadipate [Moles/volume] in DBS"
* $loinc#47562-4 "Arginine [Moles/volume] in DBS"
* $loinc#74876-4 "Arginine [Moles/volume] in DBS --post therapeutic diet"
* $loinc#43927-3 "Arginine [Presence] in DBS"
* $loinc#47567-3 "Arginine/Amino acids.total in DBS"
* $loinc#75214-7 "Arginine/Ornithine [Molar ratio] in DBS"
* $loinc#53398-4 "Arginine/Phenylalanine [Molar ratio] in DBS"
* $loinc#74877-2 "Argininosuccinate [Moles/volume] in DBS --post therapeutic diet"
* $loinc#53062-6 "Argininosuccinate [Moles/volume] in DBS"
* $loinc#53200-2 "Argininosuccinate/Arginine [Molar ratio] in DBS"
* $loinc#47572-3 "Asparagine [Moles/volume] in DBS"
* $loinc#53063-4 "Beta alanine [Moles/volume] in DBS"
* $loinc#38480-0 "Carnitine [Moles/volume] in DBS"
* $loinc#42892-0 "Citrulline [Moles/volume] in DBS"
* $loinc#54092-2 "Citrulline/Arginine [Molar ratio] in DBS"
* $loinc#53157-4 "Citrulline/Phenylalanine [Molar ratio] in DBS"
* $loinc#53399-2 "Citrulline/Tyrosine [Molar ratio] in DBS"
* $loinc#53066-7 "Cystathionine [Moles/volume] in DBS"
* $loinc#38481-8 "Carnitine free (C0) [Moles/volume] in DBS"
* $loinc#74878-0 "Carnitine free (C0) [Moles/volume] in DBS --post therapeutic diet"
* $loinc#53095-6 "Carnitine free (C0)/Carnitine.total in DBS"
* $loinc#53233-3 "Carnitine free (C0)/Palmitoylcarnitine (C16) [Molar ratio] in DBS"
* $loinc#53234-1 "Carnitine free (C0)/Stearoylcarnitine (C18) [Molar ratio] in DBS"
* $loinc#47630-9 "Glutamine [Moles/volume] in DBS"
* $loinc#47633-3 "Glycine [Moles/volume] in DBS"
* $loinc#47638-2 "Glycine/Amino acids.total in DBS"
* $loinc#93488-5 "Guanidinoacetate [Moles/volume] in DBS"
* $loinc#107506-8 "Guanidinoacetate/Creatine [Molar ratio] in DBS"
* $loinc#104195-3 "Guanidinoacetate/Creatinine [Molar ratio] in DBS"
* $loinc#47643-2 "Histidine [Moles/volume] in DBS"
* $loinc#47648-1 "Histidine/Amino acids.total in DBS"
* $loinc#53158-2 "Homocitrulline [Moles/volume] in DBS"
* $loinc#44376-2 "Homocysteine [Presence] in DBS"
* $loinc#54301-7 "Homocysteine [Moles/volume] in DBS"
* $loinc#38486-7 "Homocystine [Presence] in DBS"
* $loinc#54302-5 "Homocystine [Moles/volume] in DBS"
* $loinc#54303-3 "Hydroxylysine [Moles/volume] in DBS"
* $loinc#74880-6 "Hydroxyproline [Moles/volume] in DBS --post therapeutic diet"
* $loinc#47651-5 "Hydroxyproline [Moles/volume] in DBS"
* $loinc#74881-4 "Isoleucine [Moles/volume] in DBS --post therapeutic diet"
* $loinc#47671-3 "Isoleucine [Moles/volume] in DBS"
* $loinc#47676-2 "Isoleucine/Amino acids.total in DBS"
* $loinc#47679-6 "Leucine [Moles/volume] in DBS"
* $loinc#74882-2 "Leucine [Moles/volume] in DBS --post therapeutic diet"
* $loinc#57994-6 "Leucine/Alanine [Mass Ratio] in DBS"
* $loinc#47684-6 "Leucine/Amino acids.total in DBS"
* $loinc#75268-3 "Leucine/Phenylalanine [Molar ratio] in DBS"
* $loinc#57995-3 "Leucine/Phenylalanine [Mass Ratio] in DBS"
* $loinc#47689-5 "Lysine [Moles/volume] in DBS"
* $loinc#47694-5 "Lysine/Amino acids.total in DBS"
* $loinc#74883-0 "Ornithine [Moles/volume] in DBS --post therapeutic diet"
* $loinc#47714-1 "Ornithine [Moles/volume] in DBS"
* $loinc#75215-4 "Ornithine/Citrulline [Molar ratio] in DBS"
* $loinc#109502-5 "Phenylalanine [Measurement] in DBS"
* $loinc#29572-5 "Phenylalanine [Mass/volume] in DBS"
* $loinc#74303-9 "Phenylalanine [Moles/volume] in DBS --post therapeutic diet"
* $loinc#29573-3 "Phenylalanine [Moles/volume] in DBS"
* $loinc#29571-7 "Phenylalanine [Presence] in DBS"
* $loinc#55969-0 "Phenylalanine/Amino acids.total in DBS"
* $loinc#74300-5 "Phenylalanine/Tyrosine [Molar ratio] in DBS --post therapeutic diet"
* $loinc#35572-7 "Phenylalanine/Tyrosine [Molar ratio] in DBS"
* $loinc#54489-0 "Phosphoserine [Moles/volume] in DBS"
* $loinc#54328-0 "Pipecolate [Moles/volume] in DBS"
* $loinc#47732-3 "Proline [Moles/volume] in DBS"
* $loinc#47736-4 "Proline/Amino acids.total in DBS"
* $loinc#53392-7 "Proline/Phenylalanine [Molar ratio] in DBS"
* $loinc#47700-0 "Methionine [Moles/volume] in DBS"
* $loinc#63380-0 "Methionine [Presence] in DBS"
* $loinc#47705-9 "Methionine/Amino acids.total in DBS"
* $loinc#53156-6 "Methionine/Phenylalanine [Molar ratio] in DBS"
* $loinc#47742-2 "Serine [Moles/volume] in DBS"
* $loinc#47747-1 "Serine/Amino acids.total in DBS"
* $loinc#47782-8 "Taurine [Moles/volume] in DBS"
* $loinc#47784-4 "Threonine [Moles/volume] in DBS"
* $loinc#47789-3 "Threonine/Amino acids.total in DBS"
* $loinc#79330-7 "Trimethyllysine [Moles/volume] in DBS"
* $loinc#53159-0 "Tryptophan [Moles/volume] in DBS"
* $loinc#35571-9 "Tyrosine [Moles/volume] in DBS"
* $loinc#45032-0 "Tyrosine [Mass/volume] in DBS"
* $loinc#74302-1 "Tyrosine [Moles/volume] in DBS --post therapeutic diet"
* $loinc#47796-8 "Tyrosine/Amino acids.total in DBS"
* $loinc#74481-3 "Tyrosine/Phenylalanine [Molar ratio] in DBS"
* $loinc#74299-9 "Tyrosine/Phenylalanine [Molar ratio] in DBS --post therapeutic diet"
* $loinc#74884-8 "Valine [Moles/volume] in DBS --post therapeutic diet"
* $loinc#47799-2 "Valine [Moles/volume] in DBS"
* $loinc#47804-0 "Valine/Amino acids.total in DBS"
* $loinc#53151-7 "Valine/Phenylalanine [Molar ratio] in DBS"
