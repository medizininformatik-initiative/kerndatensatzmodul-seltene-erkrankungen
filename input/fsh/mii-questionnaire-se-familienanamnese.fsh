/*Instance: FamilienAnamnese
InstanceOf: Questionnaire
Description: "Patient Familienanamnese Fragebogen"
Usage: #example

* status = #draft
* code = $SCT#124319418
* item[+].linkId = "grouper1"
* item[=].text = "Verwandschaftsverhältnis"
* item[=].type = #group"
* item[=].item[+].text = "Verwandtschaftsverhältnis"
* item[=].item[=].linkId = "verwandtschaftsverhaeltnis"
* item[=].item[=].type = #code
* item[=].item[=].answerValueSet = Canonical("https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/ValueSet/mii-vs-molgen-family-member-snomed")
* item[=].item[+].text = "Von gleicher Seltener Erkrankung betroffen"
* item[=].item[=].linkId = "gleicheSE"
* item[=].item[=].answerValueSet = VonSEBetroffenVS
* item[=].item[=].type = #code


* item[+].linkId = "relevanteErkrankungen"
* item[=]
*/