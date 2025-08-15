Profile:     MII_PR_SE_Bodymassindex
Id:          mii-pr-se-bodymassindex
Parent:      Observation
Title:       "Body Mass Index (BMI) of the patient"
Description: "Describes the Body Mass Index (BMI) of the patient."

* status MS
* status = #draft

* category MS
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category" (exactly)
* category.coding.code = #vital-signs (exactly)
* category.coding.display = "Vital Signs"

* code = http://loinc.org#39156-5 "Body mass index (BMI) [Ratio]"

* subject MS
* subject only Reference(Patient)

* effective[x] only dateTime
* value[x] only Quantity
* valueQuantity.unit = "kg/m2" (exactly)
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.code = #kg/m2 (exactly)


Instance: mii-exa-se-bodymassindex
InstanceOf: MII_PR_SE_Bodymassindex
Usage: #example
Title: "Body Mass Index (BMI) Example"
Description: "Example of a Body Mass Index (BMI) observation for a patient."
* valueQuantity.value = 22.5
* effectiveDateTime = "1980-08-08"
* status = #draft