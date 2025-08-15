// Value Sets for Rare Disease Diagnosis Profiles

// Clinical Diagnosis Category Value Set
ValueSet: ClinicalDiagnosisCategoryVS
Id: mii-vs-se-clinical-diagnosis-category
Title: "MII VS SE Clinical Diagnosis Category"
Description: "Value set for categorizing clinical diagnoses of rare diseases"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-se-clinical-diagnosis-category"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft
* $SCT#439401001 "Diagnosis"
* $SCT#363358000 "Clinical finding"
* $SCT#64572001 "Disease"
* $SCT#609328004 "Allergic disposition"
* $SCT#85828009 "Autoimmune disease"
* $SCT#47367009 "Syndrome"
* $SCT#381406004 "Congenital disorder"
* $SCT#84757009 "Rare disease"

// HPO Age of Onset Value Set
ValueSet: HPOAgeOfOnsetValueSet
Id: mii-vs-se-hpo-age-of-onset
Title: "MII VS SE HPO Age of Onset"
Description: "Value set containing HPO terms for age of onset of diseases"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-se-hpo-age-of-onset"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft
* include codes from system http://hpo.jax.org/app/ where concept is-a #HP:0003674 "Onset"
// Common age of onset codes
* http://hpo.jax.org/app/#HP:0003577 "Congenital onset"
* http://hpo.jax.org/app/#HP:0003593 "Infantile onset"
* http://hpo.jax.org/app/#HP:0011463 "Childhood onset"
* http://hpo.jax.org/app/#HP:0003621 "Juvenile onset"
* http://hpo.jax.org/app/#HP:0003581 "Adult onset"
* http://hpo.jax.org/app/#HP:0003584 "Late onset"
* http://hpo.jax.org/app/#HP:0011462 "Young adult onset"
* http://hpo.jax.org/app/#HP:0025708 "Middle age onset"
* http://hpo.jax.org/app/#HP:0003596 "Neonatal onset"
* http://hpo.jax.org/app/#HP:0034198 "Fetal onset"
* http://hpo.jax.org/app/#HP:0034199 "Embryonal onset"

// HPO Inheritance Pattern Value Set
ValueSet: HPOInheritancePatternValueSet
Id: mii-vs-se-hpo-inheritance-pattern
Title: "MII VS SE HPO Inheritance Pattern"
Description: "Value set containing HPO terms for modes of inheritance"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-se-hpo-inheritance-pattern"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft
* include codes from system http://hpo.jax.org/app/ where concept is-a #HP:0000005 "Mode of inheritance"
// Common inheritance patterns
* http://hpo.jax.org/app/#HP:0000006 "Autosomal dominant inheritance"
* http://hpo.jax.org/app/#HP:0000007 "Autosomal recessive inheritance"
* http://hpo.jax.org/app/#HP:0001417 "X-linked inheritance"
* http://hpo.jax.org/app/#HP:0001419 "X-linked recessive inheritance"
* http://hpo.jax.org/app/#HP:0001423 "X-linked dominant inheritance"
* http://hpo.jax.org/app/#HP:0001427 "Mitochondrial inheritance"
* http://hpo.jax.org/app/#HP:0001428 "Somatic mutation"
* http://hpo.jax.org/app/#HP:0003745 "Sporadic"
* http://hpo.jax.org/app/#HP:0010983 "Oligogenic"
* http://hpo.jax.org/app/#HP:0010982 "Polygenic"
* http://hpo.jax.org/app/#HP:0001426 "Multifactorial inheritance"
* http://hpo.jax.org/app/#HP:0012275 "Autosomal dominant inheritance with maternal imprinting"
* http://hpo.jax.org/app/#HP:0012274 "Autosomal dominant inheritance with paternal imprinting"

// Genetic Basis Value Set
ValueSet: GeneticBasisValueSet
Id: mii-vs-se-genetic-basis
Title: "MII VS SE Genetic Basis"
Description: "Value set for types of genetic basis of rare diseases"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-se-genetic-basis"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft
* $SCT#409709004 "Chromosomal disorder"
* $SCT#264530000 "Single gene disorder"
* $SCT#16402000 "Mitochondrial disorder"
* $SCT#268298002 "Polygenic disorder"
* $SCT#429962007 "Disorder due to copy number variation"
* $SCT#718211000119104 "Disorder due to trinucleotide repeat expansion"
* $SCT#416010008 "Disorder due to uniparental disomy"
* $SCT#429252008 "Disorder due to genomic imprinting"
* $SCT#363235000 "Multifactorial disorder"

// Penetrance Value Set
ValueSet: PenetranceValueSet
Id: mii-vs-se-penetrance
Title: "MII VS SE Penetrance"
Description: "Value set for qualitative descriptions of genetic penetrance"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-se-penetrance"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft
* http://hpo.jax.org/app/#HP:0003829 "Incomplete penetrance"
* http://hpo.jax.org/app/#HP:0003828 "Variable penetrance"
* http://hpo.jax.org/app/#HP:0025169 "Complete penetrance"
* http://hpo.jax.org/app/#HP:0003831 "Age-dependent penetrance"