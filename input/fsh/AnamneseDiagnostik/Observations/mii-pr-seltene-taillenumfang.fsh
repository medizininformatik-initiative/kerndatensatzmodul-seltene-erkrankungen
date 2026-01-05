Profile:     MII_PR_Seltene_Taillenumfang
Id:          mii-pr-seltene-taillenumfang
Parent:      Observation
Title:       "MII PR SE Taillenumfang"
Description: "Profil zur Dokumentation des Taillenumfangs (Bauchumfang auf Nabelhöhe) eines Patienten. Relevant für seltene Erkrankungen mit metabolischen Komponenten oder Skelettdysplasien."

* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft

* status MS

* category MS
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category" (exactly)
* category.coding.code = #vital-signs (exactly)
* category.coding.display = "Vital Signs"

* code MS
* code = $LNC#8280-0 "Waist Circumference at umbilicus by Tape measure"
* code ^short = "Taillenumfang auf Nabelhöhe"

* subject MS
* subject 1..1
* subject only Reference(Patient)

* effective[x] MS
* effective[x] only dateTime

* value[x] MS
* value[x] only Quantity
* valueQuantity.unit = "cm" (exactly)
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.code = #cm (exactly)


Instance: mii-exa-seltene-taillenumfang
InstanceOf: MII_PR_Seltene_Taillenumfang
Usage: #example
Title: "Taillenumfang Beispiel"
Description: "Beispiel einer Taillenumfang-Messung bei einem Patienten mit seltener Erkrankung."
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-taillenumfang)
* status = #final
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #vital-signs
* category.coding.display = "Vital Signs"
* code = $LNC#8280-0 "Waist Circumference at umbilicus by Tape measure"
* subject = Reference(Patient/example)
* subject.display = "Beispielpatient"
* effectiveDateTime = "2024-08-08T10:00:00+02:00"
* valueQuantity.value = 82.0
* valueQuantity.unit = "cm"
* valueQuantity.system = $UCUM
* valueQuantity.code = #cm

// Mapping to Logical Model
Mapping: FHIR-SE-Taillenumfang
Id: SE-LogicalModel
Title: "Mapping FHIR zu Seltene Erkrankungen Logical Model"
Source: MII_PR_Seltene_Taillenumfang
Target: "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/LogicalModel/Seltene"
* -> "Messbefunde.Taillenumfang" "Taillenumfang"
* valueQuantity.value -> "Messbefunde.Taillenumfang" "Taillenumfang in cm"
* effectiveDateTime -> "Messbefunde.Taillenumfang.Datum" "Datum der Messung"
* subject -> "Patient" "Patient/Indexpatient"
* status -> "Status der Messung" "Beobachtungsstatus"
