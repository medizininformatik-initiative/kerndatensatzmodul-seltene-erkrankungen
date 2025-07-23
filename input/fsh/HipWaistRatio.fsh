Profile:     HipWaistRatio
Id:          hipwaistratio-profile
Parent:      Observation
Title:       "Hip-Waist-Ratio of the patient"
Description: "Describes the hip-waist ratio of the patient."

* code = http://loinc.org#8280-0 "Waist-hip ratio"
* subject MS
* status MS
* encounter MS
* value[x] 1..1 MS
* value[x] only Quantity
* valueQuantity.system = $UCUM 
* valueQuantity.code = #1


Instance: HipWaistRatioExample
InstanceOf: HipWaistRatio
Usage: #example
Title: "HipWaistRatioExample"
Description: "Example of a Hip-Waist-Ratio observation for a patient."
* valueQuantity.value = 0.85
* status = #final
