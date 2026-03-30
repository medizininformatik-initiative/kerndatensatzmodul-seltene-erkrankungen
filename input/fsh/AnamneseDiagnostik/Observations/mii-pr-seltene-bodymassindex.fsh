Profile:     MII_PR_Seltene_Bodymassindex
Id:          mii-pr-seltene-bodymassindex
Parent:      Observation
Title:       "Body Mass Index (BMI) of the patient"
Description: "Describes the Body Mass Index (BMI) of the patient."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active

* status MS

* category MS
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category" (exactly)
* category.coding.code = #vital-signs (exactly)
* category.coding.display = "Vital Signs"

* code = http://loinc.org#39156-5 "Body mass index (BMI) [Ratio]"

* subject MS
* subject only Reference(Patient)

* effective[x] MS
* effective[x] only dateTime

* value[x] MS
* value[x] only Quantity
* valueQuantity.unit = "kg/m2" (exactly)
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.code = #kg/m2 (exactly)


Instance: mii-exa-seltene-bodymassindex
InstanceOf: MII_PR_Seltene_Bodymassindex
Usage: #example
Title: "Body Mass Index (BMI) Example"
Description: "Example of a Body Mass Index (BMI) observation for a patient."
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-bodymassindex)
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

// Mapping to Logical Model
Mapping: FHIR-SE-BMI
Id: SE-LogicalModel
Title: "Mapping FHIR zu Seltene Erkrankungen Logical Model"
Source: MII_PR_Seltene_Bodymassindex
Target: "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/LogicalModel/Seltene"
* -> "Messbefunde.BMI" "BMI"
* valueQuantity.value -> "Messbefunde.BMI.BMI" "BMI SE-Patient"
* effectiveDateTime -> "Messbefunde.BMI.DatumBMI" "Datum des BMI"
* subject -> "Patient" "Patient/Indexpatient"
* status -> "Status der Messung" "Beobachtungsstatus"
* code -> "Messbefunde.BMI" "BMI-Code (LOINC 39156-5)"