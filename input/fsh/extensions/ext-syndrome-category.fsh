Extension: SyndromeCategory
Id: mii-ext-seltene-syndrome-category
Title: "Syndrome Category Extension"
Description: "Extension to categorize syndrome types for rare diseases (genetic, metabolic, developmental, etc.)"
Context: Condition

* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active

* value[x] only CodeableConcept
* value[x] MS
* value[x] ^short = "Syndromkategorie"
* value[x] ^definition = "Kategorie zur Klassifizierung des Syndromtyps"
* value[x] from SyndromeCategoryVS (extensible)

ValueSet: SyndromeCategoryVS
Id: mii-vs-seltene-syndrome-category
Title: "Syndrome Category Value Set"
Description: "Categories for classifying syndrome types in rare diseases"
* ^status = #active
* $SCT#32895009 "Genetic disorder"
* $SCT#75934005 "Metabolic disease"
* $SCT#128139000 "Inflammatory disorder"
* $SCT#276654001 "Congenital malformation"
* $SCT#371097004 "Developmental disorder"
* $SCT#254829008 "Degenerative disorder"