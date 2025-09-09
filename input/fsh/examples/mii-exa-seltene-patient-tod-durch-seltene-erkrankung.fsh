Instance: mii-exa-seltene-patient-tod-durch-seltene-erkrankung
InstanceOf: Patient
Usage: #example
Title: "Beispiel Patient verstorben an seltener Erkrankung"
Description: "Beispiel eines Patienten, der an einer seltenen Erkrankung verstorben ist"
* identifier.system = "http://example.org/patient-id"
* identifier.value = "12345"
* name.family = "Mustermann"
* name.given = "Max"
* gender = #male
* birthDate = "1990-01-01"
* deceasedDateTime = "2024-06-15"
* deceasedDateTime.extension[+].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-tod-durch-seltene-erkrankung"
* deceasedDateTime.extension[=].extension[0].url = "causedByRareDisease"
* deceasedDateTime.extension[=].extension[=].valueBoolean = true
* deceasedDateTime.extension[=].extension[1].url = "condition"
* deceasedDateTime.extension[=].extension[=].valueReference = Reference(condition-marfan-clinical)
* deceasedDateTime.extension[=].extension[=].valueReference.display = "Marfan-Syndrom mit Aortendissektion"