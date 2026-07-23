Instance: mii-exa-seltene-hpo-assessment-change-status
InstanceOf: MII_PR_Seltene_HPO_Assessment
Usage: #example
Title: "HPO Assessment mit Änderungsstatus"
Description: "Beispiel einer HPO-Beobachtung mit dokumentiertem Änderungsstatus"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment)
* code = $HPO#HP:0001263 "Global developmental delay"
* subject = Reference(Patient/example)
* status = #final
* effectiveDateTime = "2024-11-15"
* component[status].code = $SCT#260411009 "Presence findings"
* component[status].valueCodeableConcept = $LNC#LA9633-4 "Present"
* component[status].interpretation = MII_CS_Seltene_HPO_ChangeStatus#improved "Verbessert"
* note.text = "Entwicklungsverzögerung hat sich seit letzter Untersuchung verbessert"