Extension: PhenotypicPattern
Id: mii-ext-seltene-phenotypic-pattern
Title: "Phenotypic Pattern Extension"
Description: "Extension to link syndrome diagnoses to characteristic phenotypic patterns or symptom clusters"
Context: Condition

* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft

* value[x] only Reference(Observation or Condition)
* value[x] MS
* value[x] ^short = "Phänotypisches Muster"
* value[x] ^definition = "Referenz auf charakteristische Symptommuster oder Phänotyp-Cluster des Syndroms"
* value[x] ^comment = "Kann auf HPO-Assessment Observationen oder Symptom-Conditions verweisen, die typische Muster für das Syndrom darstellen"