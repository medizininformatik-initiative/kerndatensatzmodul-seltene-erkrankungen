// @Name: Profile
// @Description: Example of a profile of the Patient resource. This example includes a few of the most commonly used constraints and documentation features of FHIR profiles.

Profile:     MIIProfileSEBehaarung
Id:          hairiness-profile
Parent:      Observation
Title:       "Example Patient Profile"
Description: "Example of a profile of Patient"

* code = http://snomed.info/sct#247543003 "Hair characteristics (observable entity)"
* code MS
* subject MS
* encounter MS
* value[x] only string
* value[x] 1..1
* value[x] MS
