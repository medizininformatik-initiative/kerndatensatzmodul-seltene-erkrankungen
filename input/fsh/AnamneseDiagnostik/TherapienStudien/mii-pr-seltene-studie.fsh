Profile: MII_PR_Seltene_Studie
Parent: ResearchStudy
Id: mii-pr-seltene-studie
Title: "MII PR SE Studie"
Description: "SE Studie"
// Note: Changed parent from MII_PR_Studie_Studie to ResearchStudy due to missing snapshot in dependency package

* identifier 0..* MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice für Identifikator eines Studienregisters bzw. studiendurchführenden Organisation anhand von `system`"
* identifier ^slicing.ordered = false

/*
* identifier contains NCT 0..1
* identifier[NCT].system = $mii-ns-seltene-nct
* identifier[NCT].value 1..1 MS
*/

/*
* identifier contains DRKS 0..1
* identifier[DRKS].system = $mii-ns-studie-drks
* identifier[DRKS].value 1..1 MS
*/

/*
* identifier contains EudraCT 0..1
* identifier[EudraCT].system = $mii-ns-studie-eudract
* identifier[EudraCT].value 1..1 MS
*/
