Instance: mii-exa-se-diagnosis
InstanceOf: MIIProfileSEDiagnosis
Usage: #example
Title: "Rare Disease Diagnosis Example"
Description: "Example of a rare disease diagnosis using ORPHA codes for Marfan syndrome."

* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#encounter-diagnosis
* code = $SCT#19346006 "Marfan syndrome (disorder)"
* subject = Reference(Patient/example-patient)
* encounter = Reference(Encounter/example-encounter)
* extension[onsetAge].valueAge.value = 15
* extension[onsetAge].valueAge.unit = "years"
* extension[onsetAge].valueAge.system = $UCUM
* extension[onsetAge].valueAge.code = #a
* recordedDate = "2024-01-15"
* asserter = Reference(Practitioner/example-practitioner)
* evidence.detail[0] = Reference(Observation/example-genetic-finding)
* evidence.detail[+] = Reference(Condition/mii-exa-se-symptom-condition)
* note.text = "Patient zeigt typische Merkmale des Marfan-Syndroms einschließlich Arachnodaktylie und Herzklappenprolaps."