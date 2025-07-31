Instance: mii-exa-se-symptom-condition
InstanceOf: MIIProfileSESymptomCondition
Usage: #example
Title: "MII Example SE Symptom Condition"
Description: "Example of a symptom condition in the context of rare diseases using HPO codes"


// Clinical and verification status
* clinicalStatus = $condition-clinical#active "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"

// Category - symptom condition
* category = $condition-category#problem-list-item "Problem-list-item"

// HPO code for a specific symptom (example: Muscle weakness)
* code = $HPO#HP:0001324 "Muscle weakness"
* code.text = "Muscle weakness"

// Severity using HPO severity values
* severity = $HPO#HP:0012825 "Mild"
* severity.text = "Mild severity"

// Subject reference (example patient)
* subject = Reference(Patient/example-patient)
* subject.display = "Example Patient"

// Temporal information - onset at age 15
* onsetAge.value = 15
* onsetAge.unit = "years"
* onsetAge.system = $UCUM
* onsetAge.code = #a

// Recorded date
* recordedDate = "2024-01-15"

// Body site (if applicable)
* bodySite = $SCT#91775009 "Skeletal muscle structure"
* bodySite.text = "Skeletal muscle"

// Evidence supporting the condition
* evidence.code = $HPO#HP:0001324 "Muscle weakness"
* evidence.detail = Reference(Observation/mii-exa-se-hpo-assessment)

// Additional notes
* note.text = "Patient reports progressive muscle weakness affecting daily activities, particularly climbing stairs and lifting objects. Symptom has been gradually worsening over the past 2 years."

