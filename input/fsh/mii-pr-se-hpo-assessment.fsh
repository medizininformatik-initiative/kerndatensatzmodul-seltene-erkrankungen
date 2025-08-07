Profile:     MII_PR_SE_HPO_Assessment
Id:          mii-pr-se-hpo-assessment
Parent:      Observation
Title:       "MII Profile SE HPO Assessment"
Description: "Profile for HPO-based phenotypic observations in the context of rare diseases. This profile uses the Human Phenotype Ontology (HPO) to describe clinical symptoms and phenotypic abnormalities."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft

* code MS
* code from mii-vs-se-hpo-phenotypic-observation-codes (extensible)
* code ^short = "HPO-phänotypischer Beobachtungscode"
* code ^definition = "Code aus der Human Phenotype Ontology zur Beschreibung der phänotypischen Anomalie"

* subject 1..1 MS
* subject only Reference(Patient)
* subject ^short = "Patient mit der phänotypischen Anomalie"

* status MS
* status = #final

* encounter MS
* encounter ^short = "Gesundheitskontakt, bei dem der Phänotyp beobachtet wurde"

* effective[x] MS
* effective[x] only dateTime or Period
* effective[x] ^short = "Zeitpunkt der Phänotyp-Beobachtung oder Beobachtungszeitraum"

* value[x] MS
* value[x] only CodeableConcept or boolean
* value[x] ^short = "Vorhandensein, Abwesenheit oder Schweregrad des Phänotyps"

* valueCodeableConcept from mii-vs-se-hpo-severity-values (extensible)
* valueCodeableConcept ^short = "Schweregrad oder Ausprägung der phänotypischen Anomalie"

* bodySite MS
* bodySite from http://hl7.org/fhir/ValueSet/body-site (extensible)
* bodySite ^short = "Körperstelle, an der der Phänotyp beobachtet wird"

* note MS
* note ^short = "Zusätzliche klinische Anmerkungen zum Phänotyp"

* method MS
* method from http://hl7.org/fhir/ValueSet/observation-methods (extensible)
* method ^short = "Methode zur Beobachtung oder Bewertung des Phänotyps"

* derivedFrom MS
* derivedFrom ^short = "Verwandte Beobachtungen oder Bewertungen"

ValueSet: HPOPhenotypicObservationCodes
Id: mii-vs-se-hpo-phenotypic-observation-codes
Title: "HPO Phenotypic Observation Codes"
Description: "Human Phenotype Ontology codes for phenotypic observations"
* ^status = #draft
* codes from system $HPO

ValueSet: HPOSeverityValues
Id: mii-vs-se-hpo-severity-values
Title: "HPO Severity Values"
Description: "Codes for describing severity of phenotypic abnormalities"
* ^status = #draft
* $HPO#HP:0012848 "Severe"
* $HPO#HP:0012825 "Mild"
* $HPO#HP:0012826 "Moderate"
* $HPO#HP:0040281 "Normal"

Instance: mii-exa-se-hpo-assessment
InstanceOf: MII_PR_SE_HPO_Assessment
Usage: #example
Title: "HPO Symptom Observation Example"
Description: "Example of an HPO-based phenotypic observation for intellectual disability."
* code = $HPO#HP:0001249 "Intellectual disability"
* subject = Reference(Patient/example-patient)
* status = #final
* effectiveDateTime = "2024-01-15"
* valueBoolean = true
* note.text = "Patient shows signs of mild intellectual disability with learning difficulties in academic settings."