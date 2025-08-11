Profile:     MII_PR_SE_Bodymassindex
Id:          mii-pr-se-bodymassindex
Parent:      Observation
Title:       "Body Mass Index (BMI) of the patient"
Description: "Describes the Body Mass Index (BMI) of the patient."

* code = http://loinc.org#39156-5 "Body mass index"
* subject MS
* status MS
* status = #draft
* encounter MS
* value[x] 1..1 MS
* value[x] only Quantity
* valueQuantity.system = $UCUM 
* valueQuantity.code = #1


Instance: mii-exa-se-bodymassindex
InstanceOf: MII_PR_SE_Bodymassindex
Usage: #example
Title: "Body Mass Index (BMI) Example"
Description: "Example of a Body Mass Index (BMI) observation for a patient."
* valueQuantity.value = 22.5
* status = #draft