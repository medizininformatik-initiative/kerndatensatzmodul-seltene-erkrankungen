Profile:     MII_PR_Seltene_Bodymassindex
Id:          mii-pr-seltene-bodymassindex
Parent:      Observation
Title:       "Body Mass Index (BMI) of the patient"
Description: "Describes the Body Mass Index (BMI) of the patient."

* status MS

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


Instance: mii-exa-seltene-bodymassindex
InstanceOf: MII_PR_Seltene_Bodymassindex
Usage: #example
Title: "Body Mass Index (BMI) Example"
Description: "Example of a Body Mass Index (BMI) observation for a patient."
* status = #final
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #vital-signs
* category.coding.display = "Vital Signs"
* code = http://loinc.org#39156-5 "Body mass index (BMI) [Ratio]"
* subject = Reference(Patient/example)
* subject.display = "Example Patient"
* effectiveDateTime = "2024-08-08T10:00:00+02:00"
* valueQuantity.value = 22.5
* valueQuantity.unit = "kg/m2"
* valueQuantity.system = $UCUM
* valueQuantity.code = #kg/m2