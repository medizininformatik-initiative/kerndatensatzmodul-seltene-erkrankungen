// Extensions for Rare Disease Diagnosis Profiles

// Age of Onset Extension
// Entfernt 2026-09-02 (Nutzerentscheid): AgeOfOnset, GeneticBasis und
// InheritancePattern. Sie waren seit ihrer Anlage am 2025-08-07 an KEIN Profil
// angeschlossen — die gesamte Git-Historie kennt keinen Commit, der sie per
// "named" in ein Profil aufgenommen haette. Publiziert in 2026.0.1, aber nie
// benutzt. AgeOfOnset war zudem ein Duplikat des eine Woche zuvor angelegten
// mii-ext-seltene-onset-age. Ihre ValueSets bleiben bestehen, sie sind auch
// eigenstaendig brauchbar.

Extension: MII_EX_Seltene_Penetrance
Id: mii-ex-seltene-penetrance
Title: "MII EX SE Penetrance"
Description: "Extension to capture the penetrance of genetic variants associated with a rare disease"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-penetrance"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* ^context[+].type = #element
* ^context[=].expression = "Condition"
* ^context[+].type = #element
* ^context[=].expression = "FamilyMemberHistory.condition"
* value[x] only CodeableConcept or Quantity
* valueCodeableConcept from MII_VS_Seltene_Penetrance (extensible)
* valueCodeableConcept ^short = "Qualitative penetrance description"
* valueQuantity ^short = "Quantitative penetrance percentage"
* valueQuantity.unit = "%"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #%