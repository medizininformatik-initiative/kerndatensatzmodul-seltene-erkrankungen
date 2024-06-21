Profile:     FastingStatus
Id:          fastingstatus-profile
Parent:      Observation
Title:       "Fasting status of the patient"
Description: "Describes whether the patient is currently in fasted state."

* code MS
* subject MS
* encounter MS
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] MS
* value[x] from http://terminology.hl7.org/ValueSet/v2-0916 (required)

