// Aus der am 2026-09-02 entfernten Extension-Datei ext-syndrome-category.fsh
// herausgeloest. Die Extension mii-ext-seltene-syndrome-category wurde entfernt,
// weil sie nie an ein Profil angeschlossen war; dieses ValueSet lag mit in
// derselben Datei und waere sonst kommentarlos mitverschwunden, obwohl es in
// 2026.0.1 publiziert ist und eigenstaendig brauchbar bleibt.
ValueSet: MII_VS_Seltene_SyndromeCategory
Id: mii-vs-seltene-syndrome-category
Title: "Syndrome Category Value Set"
Description: "Categories for classifying syndrome types in rare diseases"
* insert PR_CS_VS_Version
* ^status = #active
// KORRIGIERT 2026-09-02 nach systematischer Pruefung gegen tx.fhir.org:
//   32895009  hiess "Genetic disorder" und heisst tatsaechlich "Hereditary
//             disease" — Code richtig, Display veraltet. Genau das hatte auch
//             der IG-Publisher gemeldet ("Wrong Display Name").
//   371097004 "Developmental disorder" existiert nicht; der Begriff ist 5294002.
//   254829008 "Degenerative disorder" existiert nicht; der Begriff ist 362975008.
// Die uebrigen drei Codes wurden bestaetigt.
* $SCT#32895009 "Hereditary disease"
* $SCT#75934005 "Metabolic disease"
* $SCT#128139000 "Inflammatory disorder"
* $SCT#276654001 "Congenital malformation"
* $SCT#5294002 "Developmental disorder"
* $SCT#362975008 "Degenerative disorder"
