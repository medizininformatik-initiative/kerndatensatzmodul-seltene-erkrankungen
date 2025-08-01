Instance: mii-exa-se-familienanamnese
InstanceOf: MII_PR_SE_Familienanamnese
Description: "Example Patient Family Anamnesis"
Usage: #example

* status = #completed
* patient = Reference(Patient/example)
* reasonCode = http://www.orpha.net#666
* relationship = $SCT#65656005 "Natural Mother (person)"
* sex = #female
* bornDate = "1954"
* deceasedDate = "2004"
* condition[0].code = $ICD10GM#H35.8
* condition[0].code.coding.version = "2004"
* condition[1].code = $ICD10GM#E11.X
* condition[1].code.coding.version = "2004"
* condition[2].code = $ICD10GM#I21.2
* condition[2].code.coding.version = "2004"
* condition[2].contributedToDeath = true
* extension[vonSEBetroffen].valueCodeableConcept = $ExpandedYesNoIndicator#Y "Ja"