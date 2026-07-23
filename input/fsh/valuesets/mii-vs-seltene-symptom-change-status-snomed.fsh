ValueSet: MII_VS_Seltene_Symptom_ChangeStatus_Combined
Id: mii-vs-seltene-symptom-change-status-combined
Title: "MII VS Seltene Erkrankungen Symptom Change Status (Combined)"
Description: "ValueSet zur Dokumentation von Änderungen bei Symptomen/Phänotypen über Zeit. Kombiniert MVGenomSeq-spezifische Codes mit SNOMED CT-Codes für internationale Interoperabilität."
* insert Publisher
* insert PR_CS_VS_Version
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-symptom-change-status-combined"
* ^status = #active
* ^experimental = false

// MVGenomSeq official codes (Modellvorhaben Genomsequenzierung)
* MII_CS_Seltene_HPO_ChangeStatus#newly-added "Neu hinzugefügt"
* MII_CS_Seltene_HPO_ChangeStatus#improved "Verbessert"
* MII_CS_Seltene_HPO_ChangeStatus#degraded "Verschlechtert"
* MII_CS_Seltene_HPO_ChangeStatus#no-longer-observed "Nicht mehr beobachtet"
* MII_CS_Seltene_HPO_ChangeStatus#unchanged "Unverändert"

// SNOMED CT codes - Children of 263703002 | Changed status (qualifier value) | and related
* $SCT#385425000 "Improved"  // Maps to: MII improved
* $SCT#231877006 "Worse"  // Maps to: MII degraded
* $SCT#385630006 "Maintained"  // Maps to: MII unchanged
* $SCT#2667000 "Absent"  // Maps to: MII no-longer-observed
* $SCT#35105006 "Increased"  // Additional granularity
* $SCT#1250004 "Decreased"  // Additional granularity
