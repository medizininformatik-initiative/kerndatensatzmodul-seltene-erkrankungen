Extension: MII_EX_Seltene_TodDurchSelteneErkrankung
Id: mii-ex-seltene-tod-durch-seltene-erkrankung
Title: "MII EX Seltene Erkrankungen Tod durch Seltene Erkrankung"
Description: "Extension zur Dokumentation, ob der Tod des Patienten durch eine seltene Erkrankung verursacht wurde"
Context: Patient.deceased[x]
* insert Publisher
* insert PR_CS_VS_Version
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-tod-durch-seltene-erkrankung"
* ^status = #active
* ^experimental = false

* . ^short = "Tod durch seltene Erkrankung"
* . ^definition = "Gibt an, ob der Patient an einer seltenen Erkrankung verstorben ist"

* extension contains
    causedByRareDisease 1..1 MS and
    condition 0..* MS

* extension[causedByRareDisease] ^short = "Tod durch seltene Erkrankung"
* extension[causedByRareDisease] ^definition = "Boolescher Wert, der angibt, ob der Tod durch eine seltene Erkrankung verursacht wurde"
* extension[causedByRareDisease].url 1..1
* extension[causedByRareDisease].url = "causedByRareDisease" (exactly)
* extension[causedByRareDisease].value[x] only boolean
* extension[causedByRareDisease].valueBoolean 1..1 MS

* extension[condition] ^short = "Verursachende seltene Erkrankung"
* extension[condition] ^definition = "Referenz auf die seltene Erkrankung, die zum Tod geführt hat"
* extension[condition].url 1..1
* extension[condition].url = "condition" (exactly)
* extension[condition].value[x] only Reference(MII_PR_Seltene_ClinicalDiagnosis or MII_PR_Seltene_GeneticDiagnosis or Condition)
* extension[condition].valueReference 1..1 MS