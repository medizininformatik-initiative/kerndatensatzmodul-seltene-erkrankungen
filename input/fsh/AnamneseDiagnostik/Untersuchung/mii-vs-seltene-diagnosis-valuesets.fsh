// Value Sets for Rare Disease Diagnosis Profiles

// Clinical Diagnosis Category Value Set
ValueSet: ClinicalDiagnosisCategoryVS
Id: mii-vs-seltene-clinical-diagnosis-category
Title: "MII VS SE Clinical Diagnosis Category"
Description: "Value set for categorizing clinical diagnoses of rare diseases"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-clinical-diagnosis-category"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
// KORRIGIERT 2026-09-02. Vier der acht urspruenglichen Codes waren falsch oder
// existierten nicht — geprueft per CodeSystem/$lookup auf tx.fhir.org:
//   363358000 stand als "Clinical finding" und ist Malignant neoplasm of lung
//   47367009  stand als "Syndrome" und ist Exocrine pancreatic insufficiency
//   84757009  stand als "Rare disease" und ist Epilepsy
//   381406004 stand als "Congenital disorder" und existiert nicht
// Zwei liessen sich ersetzen (404684003 Clinical finding, 66091009 Congenital
// disease). Fuer "Syndrome" und "Rare disease" gibt es in SNOMED CT KEIN
// generisches Konzept; beide sind daher ersatzlos entfallen statt auf etwas
// Aehnliches umgebogen zu werden. Wer die Seltenheit als solche kodieren will,
// tut das ueber den Orpha-Code der Diagnose, nicht ueber die Kategorie.
* $SCT#439401001 "Diagnosis"
* $SCT#404684003 "Clinical finding"
* $SCT#64572001 "Disease"
* $SCT#66091009 "Congenital disease"
* $SCT#609328004 "Allergic disposition"
* $SCT#85828009 "Autoimmune disease"

// HPO Age of Onset Value Set
ValueSet: HPOAgeOfOnsetValueSet
Id: mii-vs-seltene-hpo-age-of-onset
Title: "MII VS SE HPO Age of Onset"
Description: "Value set containing HPO terms for age of onset of diseases"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-hpo-age-of-onset"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* include codes from system http://human-phenotype-ontology.org where concept is-a #HP:0003674 "Onset"
// Common age of onset codes
* http://human-phenotype-ontology.org#HP:0003577 "Congenital onset"
* http://human-phenotype-ontology.org#HP:0003593 "Infantile onset"
* http://human-phenotype-ontology.org#HP:0011463 "Childhood onset"
* http://human-phenotype-ontology.org#HP:0003621 "Juvenile onset"
* http://human-phenotype-ontology.org#HP:0003581 "Adult onset"
* http://human-phenotype-ontology.org#HP:0003584 "Late onset"
* http://human-phenotype-ontology.org#HP:0011462 "Young adult onset"
* http://human-phenotype-ontology.org#HP:0025708 "Middle age onset"
* http://human-phenotype-ontology.org#HP:0003596 "Neonatal onset"
* http://human-phenotype-ontology.org#HP:0034198 "Fetal onset"
* http://human-phenotype-ontology.org#HP:0034199 "Embryonal onset"

// HPO Inheritance Pattern Value Set
ValueSet: HPOInheritancePatternValueSet
Id: mii-vs-seltene-hpo-inheritance-pattern
Title: "MII VS SE HPO Inheritance Pattern"
Description: "Value set containing HPO terms for modes of inheritance"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-hpo-inheritance-pattern"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* include codes from system http://human-phenotype-ontology.org where concept is-a #HP:0000005 "Mode of inheritance"
// Common inheritance patterns
* http://human-phenotype-ontology.org#HP:0000006 "Autosomal dominant inheritance"
* http://human-phenotype-ontology.org#HP:0000007 "Autosomal recessive inheritance"
* http://human-phenotype-ontology.org#HP:0001417 "X-linked inheritance"
* http://human-phenotype-ontology.org#HP:0001419 "X-linked recessive inheritance"
* http://human-phenotype-ontology.org#HP:0001423 "X-linked dominant inheritance"
* http://human-phenotype-ontology.org#HP:0001427 "Mitochondrial inheritance"
* http://human-phenotype-ontology.org#HP:0001428 "Somatic mutation"
* http://human-phenotype-ontology.org#HP:0003745 "Sporadic"
* http://human-phenotype-ontology.org#HP:0010983 "Oligogenic"
* http://human-phenotype-ontology.org#HP:0010982 "Polygenic"
* http://human-phenotype-ontology.org#HP:0001426 "Multifactorial inheritance"
* http://human-phenotype-ontology.org#HP:0012275 "Autosomal dominant inheritance with maternal imprinting"
* http://human-phenotype-ontology.org#HP:0012274 "Autosomal dominant inheritance with paternal imprinting"

// Genetic Basis Value Set
ValueSet: GeneticBasisValueSet
Id: mii-vs-seltene-genetic-basis
Title: "MII VS SE Genetic Basis"
Description: "Value set for types of genetic basis of rare diseases"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-genetic-basis"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
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
//
// KORRIGIERT (GitHub-Issue #31). Die bis 2026.0.1 publizierte Fassung enthielt drei
// fehlerhafte Eintraege; alle Codes unten sind gegen die HPO-API (ontology.jax.org)
// mit Label und Definition geprueft:
//   HP:0025169 war als "Complete penetrance" gefuehrt und ist in Wahrheit
//     "Left ventricular systolic dysfunction" — ein kardialer Befund. Ersetzt
//     durch HP:0034950, den echten Term fuer vollstaendige Penetranz.
//   HP:0003828 war als "Variable penetrance" gefuehrt und ist "Variable expressivity" —
//     Expressivitaet ist die Auspraegungsstaerke, nicht der Anteil Betroffener.
//     Ersatzlos entfernt: die Abstufung leistet HP:4000158/59/60.
//   HP:0003829 trug ein veraltetes Display ("Incomplete penetrance").
//
// HIERARCHIE, wichtig fuer die Auswahl: HP:4000158/59/60 (hoch/mittel/niedrig) sind
// Kinder von HP:0003829 "incomplete penetrance", NICHT Geschwister von "complete".
// "Hohe Penetranz" heisst in HPO also "unvollstaendig, aber hoch" — wer HP:4000158
// waehlt, sagt damit implizit auch unvollstaendig.
//
// HP:0003831 bleibt trotz des auf Onset lautenden Labels enthalten: seine HPO-Definition
// lautet "... in which age of onset is typically later in life and in which penetrance is
// dependent on the age of the subject" und deckt damit die altersabhaengige Penetranz ab,
// die die alte Fassung meinte.
ValueSet: PenetranceValueSet
Id: mii-vs-seltene-penetrance
Title: "MII VS SE Penetrance"
Description: "Value set for qualitative descriptions of genetic penetrance, drawn from the HPO branch Inheritance qualifier (HP:0034335). Note that the graded terms (high/moderate/low penetrance) are subtypes of incomplete penetrance, not alternatives to complete penetrance."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-penetrance"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* http://human-phenotype-ontology.org#HP:0034950 "Typified by complete penetrance"
* http://human-phenotype-ontology.org#HP:0003829 "Typified by incomplete penetrance"
* http://human-phenotype-ontology.org#HP:4000158 "Typified by high penetrance"
* http://human-phenotype-ontology.org#HP:4000159 "Typified by moderate penetrance"
* http://human-phenotype-ontology.org#HP:4000160 "Typified by low penetrance"
* http://human-phenotype-ontology.org#HP:0003831 "Typified by age-related disease onset"