Extension: OnsetAge
Id: mii-ext-seltene-onset-age
Title: "Onset Age Extension"
Description: "Extension to capture the age at onset of a condition. This backports the onsetAge functionality from FHIR R5 to R4."
Context: Condition.onset[x]

* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active

* value[x] only Age
* value[x] MS
* value[x] ^short = "Alter bei Erkrankungsbeginn"
* value[x] ^definition = "Das Alter des Patienten zum Zeitpunkt des Erkrankungsbeginns"
* value[x] ^comment = "Diese Erweiterung ermöglicht es, das Alter bei Erkrankungsbeginn anzugeben, ähnlich der onsetAge-Funktionalität in FHIR R5"

// Constraints for Age datatype
* valueAge.value 1..1
* valueAge.value ^short = "Numerischer Alterswert"
* valueAge.unit 1..1
* valueAge.unit ^short = "Alterseinheit"
* valueAge.system 1..1
* valueAge.system = $UCUM (exactly)
* valueAge.code 1..1
* valueAge.code from http://hl7.org/fhir/ValueSet/age-units (required)
* valueAge.code ^short = "UCUM-Code für Alterseinheit"