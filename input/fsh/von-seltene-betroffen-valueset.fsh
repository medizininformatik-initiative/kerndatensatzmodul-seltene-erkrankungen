ValueSet: VonSEBetroffenVS
Id: von-seltene-betroffen-vs
Title: "Von SE betroffen Value Set"
Description: "ValueSet zur Angabe ob ein Familienmitglied an der gleichen SE erkrankt ist. Verwendet SNOMED CT codes für internationale Interoperabilität."
* insert Publisher
* insert PR_CS_VS_Version
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/von-seltene-betroffen-vs"
* ^status = #active
* ^experimental = false

// SNOMED CT qualifier values for Yes/No/Unknown
* $SCT#373066001 "Yes"  // Ja
* $SCT#373067005 "No"   // Nein
* $SCT#261665006 "Unknown"  // Unbekannt

// Keep HL7 v2 codes for backwards compatibility if needed
* $ExpandedYesNoIndicator#Y "Yes"
* $ExpandedYesNoIndicator#N "No"
* $ExpandedYesNoIndicator#ASKU "asked but unknown"