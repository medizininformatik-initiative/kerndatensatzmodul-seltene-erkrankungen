Profile:     MII_PR_Seltene_Hueftumfang
Id:          mii-pr-seltene-hueftumfang
Parent:      Observation
Title:       "MII PR SE Hüftumfang"
Description: "Profil zur Dokumentation des Hüftumfangs (maximale Gesäßprotuberanz) eines Patienten. Relevant für seltene Erkrankungen mit Auswirkungen auf die Körperproportionen, metabolische Erkrankungen oder Skelettdysplasien."

* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft

* status MS

* category MS
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category" (exactly)
* category.coding.code = #vital-signs (exactly)
* category.coding.display = "Vital Signs"

* code MS
* code = $LNC#56063-1 "Circumference.at maximal protrusion of gluteus muscles Pelvis"
* code ^short = "Hüftumfang an der maximalen Gesäßprotuberanz"

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


Instance: mii-exa-seltene-hueftumfang
InstanceOf: MII_PR_Seltene_Hueftumfang
Usage: #example
Title: "Hüftumfang Beispiel"
Description: "Beispiel einer Hüftumfang-Messung bei einem Patienten mit seltener Erkrankung."
* status = #final
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #vital-signs
* category.coding.display = "Vital Signs"
* code = $LNC#56063-1 "Circumference.at maximal protrusion of gluteus muscles Pelvis"
* subject = Reference(Patient/example)
* subject.display = "Beispielpatient"
* effectiveDateTime = "2024-08-08T10:00:00+02:00"
* valueQuantity.value = 98.0
* valueQuantity.unit = "cm"
* valueQuantity.system = $UCUM
* valueQuantity.code = #cm

// Mapping to Logical Model
Mapping: FHIR-SE-Hueftumfang
Id: SE-LogicalModel
Title: "Mapping FHIR zu Seltene Erkrankungen Logical Model"
Source: MII_PR_Seltene_Hueftumfang
Target: "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/LogicalModel/Seltene"
* -> "Messbefunde.Hueftumfang" "Hüftumfang"
* valueQuantity.value -> "Messbefunde.Hueftumfang" "Hüftumfang in cm"
* effectiveDateTime -> "Messbefunde.Hueftumfang.Datum" "Datum der Messung"
* subject -> "Patient" "Patient/Indexpatient"
* status -> "Status der Messung" "Beobachtungsstatus"
