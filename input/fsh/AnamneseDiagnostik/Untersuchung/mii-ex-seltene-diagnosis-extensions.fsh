// Extensions for Rare Disease Diagnosis Profiles

// Age of Onset Extension
Extension: AgeOfOnset
Id: mii-ex-seltene-age-of-onset
Title: "MII EX SE Age of Onset"
Description: "Extension to capture the age of onset of a rare disease using structured HPO age of onset terms"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-age-of-onset"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* ^context[+].type = #element
* ^context[=].expression = "Condition"
* value[x] only CodeableConcept
* valueCodeableConcept from HPOAgeOfOnsetValueSet (required)
* valueCodeableConcept ^short = "HPO age of onset term"
* valueCodeableConcept ^definition = "Age of onset coded using HPO age of onset terms (e.g., HP:0003577 Congenital onset, HP:0003593 Infantile onset)"

// Inheritance Pattern Extension
Extension: InheritancePattern
Id: mii-ex-seltene-inheritance-pattern
Title: "MII EX SE Inheritance Pattern"
Description: "Extension to capture the mode of inheritance of a rare disease"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-inheritance-pattern"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* ^context[+].type = #element
* ^context[=].expression = "Condition"
* value[x] only CodeableConcept
* valueCodeableConcept from HPOInheritancePatternValueSet (required)
* valueCodeableConcept ^short = "Mode of inheritance"
* valueCodeableConcept ^definition = "Mode of inheritance coded using HPO inheritance pattern terms (e.g., HP:0000006 Autosomal dominant, HP:0000007 Autosomal recessive)"

// Genetic Basis Extension
Extension: GeneticBasis
Id: mii-ex-seltene-genetic-basis
Title: "MII EX SE Genetic Basis"
Description: "Extension to describe the genetic basis of a rare disease"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-genetic-basis"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* ^context[+].type = #element
* ^context[=].expression = "Condition"
* value[x] only CodeableConcept
* valueCodeableConcept from GeneticBasisValueSet (extensible)
* valueCodeableConcept ^short = "Type of genetic basis"
* valueCodeableConcept ^definition = "Classification of the genetic basis (e.g., single gene disorder, chromosomal disorder, mitochondrial disorder)"

// Penetrance Extension
Extension: Penetrance
Id: mii-ex-seltene-penetrance
Title: "MII EX SE Penetrance"
Description: "Extension to capture the penetrance of genetic variants associated with a rare disease"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-penetrance"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* ^context[+].type = #element
* ^context[=].expression = "Condition"
* value[x] only CodeableConcept or Quantity
* valueCodeableConcept from PenetranceValueSet (extensible)
* valueCodeableConcept ^short = "Qualitative penetrance description"
* valueQuantity ^short = "Quantitative penetrance percentage"
* valueQuantity.unit = "%"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #%