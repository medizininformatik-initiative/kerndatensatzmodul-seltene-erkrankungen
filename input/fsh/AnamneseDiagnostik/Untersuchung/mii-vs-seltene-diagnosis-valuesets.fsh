// Value Sets for Rare Disease Diagnosis Profiles

// Clinical Diagnosis Category Value Set
// RETIRED 2026-09-02. Das ValueSet war seit dem 2025-08-07 nie gebunden; beim
// Versuch, das nachzuholen, zeigte sich der eigentliche Grund: es beantwortet
// die falsche Frage. Condition.category sagt in FHIR, welche ROLLE eine
// Condition im Datensatz spielt (problem-list-item, encounter-diagnosis), nicht
// welche Art von Krankheit vorliegt. Was nach der Codekorrektur uebrig blieb,
// waren drei Tautologien (Diagnosis, Disease, Clinical finding an einer
// Condition) und drei Krankheitsklassifikationen, die in Condition.code
// gehoeren. Dass SNOMED kein generisches "Rare disease" kennt, ist dabei kein
// Verlust — die Seltenheit steht im Orpha-Code der Diagnose.
// Nicht geloescht, sondern retired: die URL ist seit 2026.0.1 publiziert und
// bleibt aufloesbar, der Status haelt Nachnutzer davon ab, sie erneut zu binden.
ValueSet: ClinicalDiagnosisCategoryVS
Id: mii-vs-seltene-clinical-diagnosis-category
Title: "MII VS SE Clinical Diagnosis Category (retired)"
Description: "RETIRED. Nicht verwenden. Das ValueSet war zur Kategorisierung klinischer Diagnosen gedacht, beantwortet aber die falsche Frage: Condition.category bezeichnet in FHIR die Rolle der Condition im Datensatz, nicht die Art der Krankheit. Die Krankheitsart gehoert in Condition.code."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-clinical-diagnosis-category"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #retired
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
// KORRIGIERT 2026-09-02. Vier Codes waren systematisch verschoben — geprueft
// gegen die HPO-API (ontology.jax.org), jeder Code einzeln:
//   HP:0003596 stand als "Neonatal onset" und bedeutet MIDDLE AGE ONSET.
//              In einem Modul fuer seltene Erkrankungen ist das die Umkehrung
//              der Aussage. Neonatal onset ist HP:0003623.
//   HP:0025708 stand als "Middle age onset" und ist Early young adult onset.
//   HP:0034198 stand als "Fetal onset" und ist Second trimester onset.
//              Fetal onset ist HP:0011461.
//   HP:0034199 stand als "Embryonal onset" und ist Late first trimester onset.
//              Embryonal onset ist HP:0011460.
// Die uebrigen sieben Codes wurden bestaetigt.
* http://human-phenotype-ontology.org#HP:0011460 "Embryonal onset"
* http://human-phenotype-ontology.org#HP:0011461 "Fetal onset"
* http://human-phenotype-ontology.org#HP:0003577 "Congenital onset"
* http://human-phenotype-ontology.org#HP:0003623 "Neonatal onset"
* http://human-phenotype-ontology.org#HP:0003593 "Infantile onset"
* http://human-phenotype-ontology.org#HP:0011463 "Childhood onset"
* http://human-phenotype-ontology.org#HP:0003621 "Juvenile onset"
* http://human-phenotype-ontology.org#HP:0011462 "Young adult onset"
* http://human-phenotype-ontology.org#HP:0025708 "Early young adult onset"
* http://human-phenotype-ontology.org#HP:0003581 "Adult onset"
* http://human-phenotype-ontology.org#HP:0003596 "Middle age onset"
* http://human-phenotype-ontology.org#HP:0003584 "Late onset"

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
// HP:0001428 heisst "Typified by somatic mosaicism", nicht "Somatic mutation".
* http://human-phenotype-ontology.org#HP:0001428 "Typified by somatic mosaicism"
* http://human-phenotype-ontology.org#HP:0003745 "Sporadic"
* http://human-phenotype-ontology.org#HP:0010983 "Oligogenic inheritance"
* http://human-phenotype-ontology.org#HP:0010982 "Polygenic inheritance"
// HP:0001426 heisst "Non-Mendelian inheritance"; ein HPO-Konzept "Multifactorial
// inheritance" gibt es nicht, der naechstliegende Begriff ist HP:0010982.
* http://human-phenotype-ontology.org#HP:0001426 "Non-Mendelian inheritance"
* http://human-phenotype-ontology.org#HP:0012275 "Autosomal dominant inheritance with maternal imprinting"
* http://human-phenotype-ontology.org#HP:0012274 "Autosomal dominant inheritance with paternal imprinting"

// RETIRED 2026-09-02. Von neun Codes war EINER richtig (409709004 Chromosomal
// disorder). Geprueft per CodeSystem/$lookup auf tx.fhir.org:
//   264530000       stand als "Single gene disorder"  -> Hereditary disease
//   16402000        stand als "Mitochondrial disorder" -> SICKLE CELL TRAIT
//   268298002       "Polygenic disorder"               -> existiert nicht
//   429962007       stand als "copy number variation"  -> Family history of hereditary disease
//   718211000119104 "trinucleotide repeat expansion"   -> existiert nicht
//   416010008       stand als "uniparental disomy"     -> HYPOSPADIAS
//   429252008       "genomic imprinting"               -> existiert nicht
//   363235000       stand als "Multifactorial disorder"-> Hereditary disorder of nervous system
// Das ist nicht reparabel, sondern neu zu bauen: acht Konzepte muessten in
// SNOMED erst gefunden werden, und fuer mehrere gibt es womoeglich kein
// Gegenstueck. Die Extension, die es band (mii-ex-seltene-genetic-basis), wurde
// am selben Tag entfernt, weil sie nie an ein Profil angeschlossen war.
// Nicht geloescht, sondern retired: die URL ist seit 2026.0.1 publiziert.
ValueSet: GeneticBasisValueSet
Id: mii-vs-seltene-genetic-basis
Title: "MII VS SE Genetic Basis (retired)"
Description: "RETIRED. Nicht verwenden. Acht der neun enthaltenen SNOMED-Codes bezeichnen etwas anderes als ihr Display behauptet oder existieren nicht; das ValueSet muss neu erstellt werden."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-genetic-basis"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #retired
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