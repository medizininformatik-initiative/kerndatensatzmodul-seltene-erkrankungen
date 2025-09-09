Instance: mii-exa-seltene-hpo-assessment-change-status
InstanceOf: MII_PR_Seltene_HPO_Assessment
Usage: #example
Title: "HPO Assessment mit Änderungsstatus"
Description: "Beispiel einer HPO-Beobachtung mit dokumentiertem Änderungsstatus"
* code = $HPO#HP:0001263 "Global developmental delay"
* subject = Reference(Patient/example-patient)
* status = #final
* effectiveDateTime = "2024-11-15"
* valueBoolean = true
* interpretation[changeStatus] = MII_CS_Seltene_HPO_ChangeStatus#improved "Improved"
* note.text = "Entwicklungsverzögerung hat sich seit letzter Untersuchung verbessert"