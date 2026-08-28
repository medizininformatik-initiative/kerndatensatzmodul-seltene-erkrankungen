// GENERIERT aus der LOINC-SNOMED-Ontologie (Snowstorm-Branch MAIN/SNOMEDCT-LOINC)
// und anschliessend Code für Code gegen tx.fhir.org verifiziert.
// Die Auswahl ist NICHT handverlesen, sondern das Ergebnis dieser ECL-Abfrage:
//
//   <363787002 |Observable entity| : 704327008 |Direct site| = 440500007 |Dried blood spot specimen|, 370130000 |Property| = 118524006 |Catalytic concentration|
//
// Aus jedem Treffer wurde der LOINC-Code über den alternateIdentifier des Konzepts
// (identifierScheme 30051010000102 "LOINC code identifier") gelesen; alle 34
// Codes wurden per CodeSystem/$lookup auf tx.fhir.org bestätigt.
//
// Warum LOINC-Codes und nicht die SNOMED-Observables: tx.fhir.org — der Server, gegen
// den dieser IG baut und validiert — kennt die LOINC-SNOMED-Edition nicht
// (http://snomed.info/sct/11010000107 ist dort keine gültige Version). Ein intensionales
// ECL-ValueSet wäre damit nicht expandierbar. Die Ontologie liefert hier die Auswahl,
// LOINC die Codes.
//
// NICHT VON HAND BEARBEITEN — regenerieren mit scripts/generate-nbs-valuesets.py.
ValueSet: MII_VS_Seltene_NBS_EnzymeActivity_DBS
Id: mii-vs-seltene-nbs-enzyme-activity-dbs
Title: "MII VS Seltene Erkrankungen NBS Enzymaktivitäten (Trockenblut)"
Description: "Enzymaktivitäten (katalytische Konzentration), die in Trockenblut bestimmt werden — u. a. Biotinidase und Galaktose-Enzyme des deutschen Neugeborenenscreenings sowie die Enzyme lysosomaler Speicherkrankheiten, die international gescreent werden."
* insert Publisher
* insert PR_CS_VS_Version
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-nbs-enzyme-activity-dbs"
* ^status = #active
* ^experimental = false

* $loinc#55909-6 "Alpha-L-iduronidase [Enzymatic activity/volume] in DBS"
* $loinc#79455-2 "Alpha-N-acetylgalactosaminidase [Enzymatic activity/volume] in DBS"
* $loinc#88019-5 "N-Acetylgalactosamine-6-Sulfatase [Enzymatic activity/volume] in DBS"
* $loinc#79463-6 "N-Acetylgalactosamine-4-Sulfatase [Enzymatic activity/volume] in DBS"
* $loinc#75094-3 "Galactose 1 phosphate uridyl transferase [Enzymatic activity/volume] in DBS --post therapeutic diet"
* $loinc#42906-8 "Galactose 1 phosphate uridyl transferase [Enzymatic activity/volume] in DBS"
* $loinc#55827-0 "Acid alpha glucosidase [Enzymatic activity/volume] in DBS"
* $loinc#62316-5 "Acid sphingomyelinase [Enzymatic activity/volume] in DBS"
* $loinc#75052-1 "Adenosine deaminase [Enzymatic activity/volume] in DBS"
* $loinc#96586-3 "Alanine aminotransferase [Enzymatic activity/volume] in DBS"
* $loinc#79454-5 "Alpha fucosidase [Enzymatic activity/volume] in DBS"
* $loinc#104114-4 "Alpha-N-acetylglucosaminidase [Enzymatic activity/volume] in DBS"
* $loinc#55908-8 "Alpha galactosidase A [Enzymatic activity/volume] in DBS"
* $loinc#55910-4 "Alpha mannosidase [Enzymatic activity/volume] in DBS"
* $loinc#55912-0 "Arylsulfatase [Enzymatic activity/volume] in DBS"
* $loinc#96587-1 "Aspartate aminotransferase [Enzymatic activity/volume] in DBS"
* $loinc#79458-6 "Beta-N-acetylhexosaminidase [Enzymatic activity/volume] in DBS"
* $loinc#55916-1 "Beta galactosidase [Enzymatic activity/volume] in DBS"
* $loinc#79457-8 "Beta glucuronidase [Enzymatic activity/volume] in DBS"
* $loinc#80425-2 "Beta-N-acetylhexosaminidase.A [Enzymatic activity/volume] in DBS"
* $loinc#75217-0 "Biotinidase [Enzymatic activity/volume] in DBS"
* $loinc#111824-9 "Cerebroside sulfatase [Enzymatic activity/volume] in DBS"
* $loinc#55836-1 "Chitotriosidase [Enzymatic activity/volume] in DBS"
* $loinc#73958-1 "Cholesterol esterase [Enzymatic activity/volume] in DBS"
* $loinc#107446-7 "Creatine kinase.MM [Enzymatic activity/volume] in DBS"
* $loinc#62310-8 "Galactosylceramidase [Enzymatic activity/volume] in DBS"
* $loinc#96593-9 "Gamma glutamyl transferase [Enzymatic activity/volume] in DBS"
* $loinc#55917-9 "Glucosylceramidase [Enzymatic activity/volume] in DBS"
* $loinc#104113-6 "Heparan-N-sulfatase [Enzymatic activity/volume] in DBS"
* $loinc#79462-8 "Iduronate-2-Sulfatase [Enzymatic activity/volume] in DBS"
* $loinc#59246-9 "Palmitoyl protein thioesterase [Enzymatic activity/volume] in DBS"
* $loinc#79467-7 "Purine nucleoside phosphorylase [Enzymatic activity/volume] in DBS"
* $loinc#75058-8 "Thymidine phosphorylase [Enzymatic activity/volume] in DBS"
* $loinc#72498-9 "Tripeptidyl peptidase I [Enzymatic activity/volume] in DBS"
