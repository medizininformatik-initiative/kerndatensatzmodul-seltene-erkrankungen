Profile:     MII_PR_SE_Waist_To_Hip_Ratio
Id:          mii-pr-se-waist-to-hip-ratio
Parent:      Observation
Title:       "Waist-to-Hip Ratio of the patient"
Description: "Describes the Waist-to-Hip Ratio of the patient."

* code = http://loinc.org#8280-0 "Waist-hip ratio"
* subject MS
* status MS
* status = #draft
* encounter MS
* value[x] 1..1 MS
* value[x] only Quantity
* valueQuantity.system = $UCUM 
* valueQuantity.code = #1


Instance: mii-exa-se-waist-to-hip-ratio
InstanceOf: MII_PR_SE_Waist_To_Hip_Ratio
Usage: #example
Title: "Waist-to-Hip Ratio Example"
Description: "Example of a Waist-to-Hip Ratio observation for a patient."
* valueQuantity.value = 0.85
* status = #draft
