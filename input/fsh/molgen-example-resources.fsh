// Mock MolGen Resources for Genetic Diagnosis Examples
// These are simplified examples to demonstrate the linkage between genetic diagnoses and MolGen resources

// ============================================
// SMA GENETIC FINDINGS
// ============================================

Instance: molgen-variant-smn1-deletion
InstanceOf: Observation
Usage: #example
Title: "SMN1 Gen Deletion - MolGen Variante"
Description: "Homozygote Deletion des SMN1-Gens bei SMA"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = $LNC#69548-6 "Genetic variant assessment"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-07-26"
* valueCodeableConcept = $SCT#10828004 "Positive"
* component[+].code = $LNC#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept.coding = http://www.genenames.org/geneId#HGNC:11117 "SMN1"
* component[+].code = $LNC#48002-0 "Genomic source class"
* component[=].valueCodeableConcept = $LNC#LA6683-2 "Germline"
* component[+].code = $LNC#53034-5 "Allelic state"
* component[=].valueCodeableConcept = $LNC#LA6705-3 "Homozygous"
* component[+].code.text = "Copy Number"
* component[=].valueInteger = 0
* component[+].code = $LNC#53037-8 "Genetic variation clinical significance"
* component[=].valueCodeableConcept = $LNC#LA6668-3 "Pathogenic"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#POS "Positive"

Instance: molgen-diagnostic-implication-sma
InstanceOf: DiagnosticReport
Usage: #example
Title: "SMA Diagnostische Implikation - MolGen"
Description: "Diagnostischer Bericht zur SMA-Genetik"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/v2-0074#GEN "Genetics"
* code = $LNC#51969-4 "Genetic analysis report"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-07-26"
* result[+] = Reference(molgen-variant-smn1-deletion)
* conclusion = "Homozygote Deletion des SMN1-Gens nachgewiesen. Diagnose: Spinale Muskelatrophie. 2 Kopien des SMN2-Gens vorhanden, vereinbar mit schwerem Phänotyp (Typ 1)."
* conclusionCode = http://omim.org#253300 "Spinal muscular atrophy, type I"

// ============================================
// DMD GENETIC FINDINGS
// ============================================

Instance: molgen-variant-dmd-deletion-exon45-47
InstanceOf: Observation
Usage: #example
Title: "DMD Exon 45-47 Deletion - MolGen Variante"
Description: "Out-of-frame Deletion im DMD-Gen"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = $LNC#69548-6 "Genetic variant assessment"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-09-15"
* valueCodeableConcept = $SCT#10828004 "Positive"
* component[+].code = $LNC#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept.coding = http://www.genenames.org/geneId#HGNC:2928 "DMD"
* component[+].code = $LNC#48002-0 "Genomic source class"
* component[=].valueCodeableConcept = $LNC#LA6683-2 "Germline"
* component[+].code = $LNC#81290-9 "Genomic DNA change (gHGVS)"
* component[=].valueCodeableConcept.text = "NC_000023.11:g.31774346_31953400del"
* component[+].code = $LNC#48004-6 "DNA change (c.HGVS)"
* component[=].valueCodeableConcept.text = "c.6439-?_6912+?del"
* component[+].code.text = "Deleted Exons"
* component[=].valueString = "Exons 45-47"
* component[+].code = $LNC#53037-8 "Genetic variation clinical significance"
* component[=].valueCodeableConcept = $LNC#LA6668-3 "Pathogenic"

Instance: molgen-diagnostic-dmd
InstanceOf: DiagnosticReport
Usage: #example
Title: "DMD Diagnostische Implikation"
Description: "Diagnostischer Bericht Duchenne-Muskeldystrophie"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/v2-0074#GEN "Genetics"
* code = $LNC#51969-4 "Genetic analysis report"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-09-15"
* result[+] = Reference(molgen-variant-dmd-deletion-exon45-47)
* conclusion = "Out-of-frame Deletion der Exons 45-47 im DMD-Gen. Diese Mutation führt zu einem vorzeitigen Stopcodon und komplettem Verlust des funktionsfähigen Dystrophin-Proteins. Diagnose: Duchenne-Muskeldystrophie."
* conclusionCode = http://omim.org#310200 "Duchenne muscular dystrophy"

// ============================================
// BRCA1 GENETIC FINDINGS
// ============================================

Instance: molgen-variant-brca1-pathogenic
InstanceOf: Observation
Usage: #example
Title: "BRCA1 Pathogene Variante - MolGen"
Description: "Pathogene BRCA1-Variante"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = $LNC#69548-6 "Genetic variant assessment"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-11-01"
* valueCodeableConcept = $SCT#10828004 "Positive"
* component[+].code = $LNC#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept.coding = http://www.genenames.org/geneId#HGNC:1100 "BRCA1"
* component[+].code = $LNC#48002-0 "Genomic source class"
* component[=].valueCodeableConcept = $LNC#LA6683-2 "Germline"
* component[+].code = $LNC#48004-6 "DNA change (c.HGVS)"
* component[=].valueCodeableConcept.text = "c.68_69del"
* component[+].code = $LNC#48005-3 "Amino acid change (pHGVS)"
* component[=].valueCodeableConcept.text = "p.Glu23Valfs*17"
* component[+].code = $LNC#53034-5 "Allelic state"
* component[=].valueCodeableConcept = $LNC#LA6706-1 "Heterozygous"
* component[+].code = $LNC#53037-8 "Genetic variation clinical significance"
* component[=].valueCodeableConcept = $LNC#LA6668-3 "Pathogenic"
* component[+].code.text = "ClinVar ID"
* component[=].valueString = "17668"

Instance: molgen-brca-panel
InstanceOf: DiagnosticReport
Usage: #example
Title: "BRCA1/2 Panel - Diagnostische Implikation"
Description: "Hereditäres Karzinom-Panel"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/v2-0074#GEN "Genetics"
* code = $LNC#94050-9 "BRCA1 and BRCA2 genes panel"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-11-01"
* result[+] = Reference(molgen-variant-brca1-pathogenic)
* conclusion = "Pathogene Variante c.68_69del (p.Glu23Valfs*17) in BRCA1 nachgewiesen. Diese Frameshift-Mutation führt zu einem vorzeitigen Stopcodon. Erhöhtes Risiko für Mamma- und Ovarialkarzinom. Lebenszeitrisiko Mammakarzinom: 60-72%, Ovarialkarzinom: 40-44%."
* conclusionCode = http://omim.org#604370 "Breast-ovarian cancer, familial, 1"

// ============================================
// CFTR GENETIC FINDINGS
// ============================================

Instance: molgen-variant-cftr-f508del-homozygous
InstanceOf: Observation
Usage: #example
Title: "CFTR F508del Homozygot - MolGen Variante"
Description: "Homozygote F508del Mutation bei Mukoviszidose"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = $LNC#69548-6 "Genetic variant assessment"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-08-25"
* valueCodeableConcept = $SCT#10828004 "Positive"
* component[+].code = $LNC#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept.coding = http://www.genenames.org/geneId#HGNC:1884 "CFTR"
* component[+].code = $LNC#48002-0 "Genomic source class"
* component[=].valueCodeableConcept = $LNC#LA6683-2 "Germline"
* component[+].code = $LNC#48004-6 "DNA change (c.HGVS)"
* component[=].valueCodeableConcept.text = "c.1521_1523delCTT"
* component[+].code = $LNC#48005-3 "Amino acid change (pHGVS)"
* component[=].valueCodeableConcept.text = "p.Phe508del"
* component[+].code = $LNC#53034-5 "Allelic state"
* component[=].valueCodeableConcept = $LNC#LA6705-3 "Homozygous"
* component[+].code = $LNC#53037-8 "Genetic variation clinical significance"
* component[=].valueCodeableConcept = $LNC#LA6668-3 "Pathogenic"
* component[+].code.text = "Legacy name"
* component[=].valueString = "F508del"

Instance: molgen-cf-diagnostic
InstanceOf: DiagnosticReport
Usage: #example
Title: "CF Diagnostische Implikation - MolGen"
Description: "Mukoviszidose genetischer Befund"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/v2-0074#GEN "Genetics"
* code = $LNC#51969-4 "Genetic analysis report"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-08-25"
* result[+] = Reference(molgen-variant-cftr-f508del-homozygous)
* conclusion = "Homozygot für die F508del-Mutation (p.Phe508del, c.1521_1523delCTT) im CFTR-Gen. Dies ist die häufigste CF-verursachende Mutation. Bei Homozygotie ist mit einem klassischen, schweren CF-Phänotyp zu rechnen."
* conclusionCode = http://omim.org#219700 "Cystic fibrosis"