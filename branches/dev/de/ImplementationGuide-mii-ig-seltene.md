# MII ImplementationGuide Ressource - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* **MII ImplementationGuide Ressource**

## MII ImplementationGuide Ressource

Diese ImplementationGuide-Ressource definiert die technischen Details dieser Publikation, einschließlich Abhängigkeiten und Veröffentlichungsparametern.

* [XML](../ImplementationGuide-mii-ig-seltene.xml)
* [JSON](../ImplementationGuide-mii-ig-seltene.json)

### Versionsübergreifende Analyse

This is an R4 IG. None of the features it uses are changed in R4B, so it can be used as is with R4B systems. Packages for both [R4 (de.medizininformatikinitiative.kerndatensatz.seltene.r4)](../package.r4.tgz) and [R4B (de.medizininformatikinitiative.kerndatensatz.seltene.r4b)](../package.r4b.tgz) are available.

### IG-Abhängigkeiten

Dieser IG enthält die folgenden Abhängigkeiten von anderen IGs.


























> **Woher die Versionen kommen.** Jedes Paket der Tabelle ist direkt in [`sushi-config.yaml`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-seltene-erkrankungen/blob/main/sushi-config.yaml) (`dependencies:`) gepinnt — auch `hl7.terminology.r4` (THO) und `hl7.fhir.uv.extensions.r4`, und diese beiden mit Bedacht: Die [Automatik des IG Publishers](https://build.fhir.org/ig/FHIR/ig-guidance/versions.html#automatic-packages) liest ausschließlich die **eigene** Abhängigkeitsliste dieses Leitfadens; ohne direkten Pin würde jeder Build stillschweigend das jeweils aktuellste THO-/Extensions-Release injizieren — eine allein im MII-Meta-Paket gepinnte Version kann den Build nicht steuern (verifiziert im Publisher-Quellcode des gepinnten Release). Eine wöchentliche Prüfung warnt, wenn diese beiden Pins von den Vorgaben des gepinnten Meta-Pakets abweichen; die von einem konkreten Build verwendeten Versionen stehen in dessen `qa-versions.json`.

### Globale Profile

Dieser IG deklariert die folgenden globalen Profile — Profile, die für jede unter diesem Leitfaden ausgetauschte Instanz ihres Ressourcentyps gelten. Eine leere Tabelle bedeutet: Dieses Modul deklariert keine.

*There are no Global profiles defined*

### Urheberrechte

This publication includes IP covered under the following statements.

* BfArM - Bundesinstitut für Arzneimittel und Medizinprodukte

* [ATC](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.molgen@2026.0.4&canonical=http://fhir.de/CodeSystem/bfarm/atc): [Bundle/mii-exa-seltene-bundle-marfan-complete](Bundle-mii-exa-seltene-bundle-marfan-complete.md), [MII_PR_Seltene_Therapieempfehlung](StructureDefinition-mii-pr-seltene-therapieempfehlung.md), [MedicationRequest/mii-exa-seltene-therapieempfehlung-losartan-marfan](MedicationRequest-mii-exa-seltene-therapieempfehlung-losartan-marfan.md) and [MedicationStatement/mii-exa-seltene-medication-losartan](MedicationStatement-mii-exa-seltene-medication-losartan.md)


* BfArM 1994 - 2024 - Die Erstellung erfolgt unter Verwendung der maschinenlesbaren Fassung des Bundesinstituts für Arzneimittel und Medizinprodukte (BfArM)

* [Alpha-ID](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.molgen@2026.0.4&canonical=http://fhir.de/CodeSystem/bfarm/alpha-id): [MII_PR_Seltene_ClinicalDiagnosis](StructureDefinition-mii-pr-seltene-clinical-diagnosis.md), [MII_PR_Seltene_Familienanamnese](StructureDefinition-mii-pr-seltene-familienanamnese.md) and [MII_PR_Seltene_GeneticDiagnosis](StructureDefinition-mii-pr-seltene-genetic-diagnosis.md)
* [OPS](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.molgen@2026.0.4&canonical=http://fhir.de/CodeSystem/bfarm/ops): [Bundle/mii-exa-seltene-bundle-marfan-complete](Bundle-mii-exa-seltene-bundle-marfan-complete.md), [MII_PR_Seltene_TherapieempfehlungNichtMedikamentoes](StructureDefinition-mii-pr-seltene-therapieempfehlung-nicht-medikamentoes.md), [Procedure/mii-exa-seltene-procedure-aortic-planned](Procedure-mii-exa-seltene-procedure-aortic-planned.md), [Procedure/mii-exa-seltene-procedure-cataract-surgery](Procedure-mii-exa-seltene-procedure-cataract-surgery.md) and [ServiceRequest/mii-exa-seltene-therapieempfehlung-aortenwurzelersatz-marfan](ServiceRequest-mii-exa-seltene-therapieempfehlung-aortenwurzelersatz-marfan.md)


* Copyrights permitted under terms specified by [Creative Commons Attribution 4.0 International (CC BY 4.0) ](https://creativecommons.org/licenses/by/4.0/legalcode) .Consistent with the terms of CC BY 4.0, HL7 is permitted to share, copy and redistribute the material in any medium or format and adapt, remix, transform, and build upon the material for its purposes as long as the CC BY 4.0 license terms are upheld. HL7 must must give appropriate credit, provide a link to the license, and indicate if changes were made. HL7 may do so in any reasonable manner, but not in any way that suggests the licensor endorses HL7 or it's use. And HL7 may not apply legal terms or technological measures that legally restrict others from doing anything the license permits.

* [Mondo Disease Ontology](http://terminology.hl7.org/6.5.0/CodeSystem-MONDO.html): [MII_PR_Seltene_Familienanamnese](StructureDefinition-mii-pr-seltene-familienanamnese.md) and [MII_PR_Seltene_Symptom_Condition](StructureDefinition-mii-pr-seltene-symptom-condition.md)


* IFA GmbH

* [PZN](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.molgen@2026.0.4&canonical=http://fhir.de/CodeSystem/ifa/pzn): [MII_PR_Seltene_Therapieempfehlung](StructureDefinition-mii-pr-seltene-therapieempfehlung.md)


* ISO maintains the copyright on the country codes, and controls its use carefully. For further details see the ISO 3166 web page: [https://www.iso.org/iso-3166-country-codes.html](https://www.iso.org/iso-3166-country-codes.html)

* [ISO 3166-1 Codes for the representation of names of countries and their subdivisions — Part 1: Country code](http://terminology.hl7.org/6.5.0/CodeSystem-ISO3166Part1.html): [ERNEuroNMDRegistry](Library-mii-exa-seltene-register-katalog-euro-nmd.md), [MII_CPS_Seltene_CapabilityStatement](CapabilityStatement-mii-cps-seltene-capabilitystatement.md)... Show 65 more, [MII_CS_Seltene_Empfehlung_StatusBegruendung](CodeSystem-mii-cs-seltene-empfehlung-status-begruendung.md), [MII_CS_Seltene_HPO_ChangeStatus](CodeSystem-mii-cs-seltene-hpo-change-status.md), [MII_CS_Seltene_ICFBeurteilungsmerkmal](CodeSystem-mii-cs-seltene-icf-beurteilungsmerkmal.md), [MII_CS_Seltene_NARSE_Therapietyp](CodeSystem-mii-cs-seltene-narse-therapietyp.md), [MII_CS_Seltene_TherapieempfehlungStrategie](CodeSystem-mii-cs-seltene-therapieempfehlung-strategie.md), [MII_CS_Seltene_TherapieempfehlungTyp](CodeSystem-mii-cs-seltene-therapieempfehlung-typ.md), [MII_EX_Seltene_Empfehlung_Prioritaet](StructureDefinition-mii-ex-seltene-empfehlung-prioritaet.md), [MII_EX_Seltene_Empfehlung_Publikation](StructureDefinition-mii-ex-seltene-empfehlung-publikation.md), [MII_EX_Seltene_Penetrance](StructureDefinition-mii-ex-seltene-penetrance.md), [MII_EX_Seltene_Register](StructureDefinition-mii-ex-seltene-register.md), [MII_EX_Seltene_VonSEBetroffen](StructureDefinition-mii-ex-seltene-von-se-betroffen.md), [MII_IG_Seltene_Erkrankungen](index.md), [MII_LM_Seltene](StructureDefinition-mii-lm-seltene.md), [MII_PR_Seltene_Blutgruppe](StructureDefinition-mii-pr-seltene-blutgruppe.md), [MII_PR_Seltene_Bodymassindex](StructureDefinition-mii-pr-seltene-bodymassindex.md), [MII_PR_Seltene_ClinicalDiagnosis](StructureDefinition-mii-pr-seltene-clinical-diagnosis.md), [MII_PR_Seltene_ClinicalImpression](StructureDefinition-mii-pr-seltene-clinical-impression.md), [MII_PR_Seltene_Consanguinity](StructureDefinition-mii-pr-seltene-consanguinity.md), [MII_PR_Seltene_Familienanamnese](StructureDefinition-mii-pr-seltene-familienanamnese.md), [MII_PR_Seltene_Geburtsgewicht](StructureDefinition-mii-pr-seltene-geburtsgewicht.md), [MII_PR_Seltene_Geburtslaenge](StructureDefinition-mii-pr-seltene-geburtslaenge.md), [MII_PR_Seltene_GeneticDiagnosis](StructureDefinition-mii-pr-seltene-genetic-diagnosis.md), [MII_PR_Seltene_Gestationsalter](StructureDefinition-mii-pr-seltene-gestationsalter.md), [MII_PR_Seltene_HPO_Assessment](StructureDefinition-mii-pr-seltene-hpo-assessment.md), [MII_PR_Seltene_Hueftumfang](StructureDefinition-mii-pr-seltene-hueftumfang.md), [MII_PR_Seltene_ICFAssessment](StructureDefinition-mii-pr-seltene-icf-assessment.md), [MII_PR_Seltene_Kopfumfang](StructureDefinition-mii-pr-seltene-kopfumfang.md), [MII_PR_Seltene_Registerteilnahme](StructureDefinition-mii-pr-seltene-registerteilnahme.md), [MII_PR_Seltene_Studieneinschluss_Anfrage](StructureDefinition-mii-pr-seltene-studieneinschluss-anfrage.md), [MII_PR_Seltene_Symptom_Condition](StructureDefinition-mii-pr-seltene-symptom-condition.md), [MII_PR_Seltene_Taillenumfang](StructureDefinition-mii-pr-seltene-taillenumfang.md), [MII_PR_Seltene_TherapieDurchgefuehrt](StructureDefinition-mii-pr-seltene-therapie-durchgefuehrt.md), [MII_PR_Seltene_Therapieempfehlung](StructureDefinition-mii-pr-seltene-therapieempfehlung.md), [MII_PR_Seltene_TherapieempfehlungNichtMedikamentoes](StructureDefinition-mii-pr-seltene-therapieempfehlung-nicht-medikamentoes.md), [MII_PR_Seltene_Therapieempfehlung_Kombination](StructureDefinition-mii-pr-seltene-therapieempfehlung-kombination.md), [MII_PR_Seltene_Therapieplan](StructureDefinition-mii-pr-seltene-therapieplan.md), [MII_VS_Seltene_Blutgruppe](ValueSet-mii-vs-seltene-blutgruppe.md), [MII_VS_Seltene_ClinicalDiagnosisCategory](ValueSet-mii-vs-seltene-clinical-diagnosis-category.md), [MII_VS_Seltene_Consanguinity](ValueSet-mii-vs-seltene-consanguinity.md), [MII_VS_Seltene_Empfehlung_StatusBegruendung](ValueSet-mii-vs-seltene-empfehlung-status-begruendung.md), [MII_VS_Seltene_GeneticBasis](ValueSet-mii-vs-seltene-genetic-basis.md), [MII_VS_Seltene_HPOAgeOfOnset](ValueSet-mii-vs-seltene-hpo-age-of-onset.md), [MII_VS_Seltene_HPOInheritancePattern](ValueSet-mii-vs-seltene-hpo-inheritance-pattern.md), [MII_VS_Seltene_HPOPhenotypicObservationCodes](ValueSet-mii-vs-seltene-hpo-phenotypic-observation-codes.md), [MII_VS_Seltene_HPOPresenceStatus](ValueSet-mii-vs-seltene-hpo-presence-status.md), [MII_VS_Seltene_HPOSeverity](ValueSet-mii-vs-seltene-hpo-severity.md), [MII_VS_Seltene_HPO_ChangeStatus](ValueSet-mii-vs-seltene-hpo-change-status.md), [MII_VS_Seltene_ICF](ValueSet-mii-vs-seltene-icf.md), [MII_VS_Seltene_ICFBeurteilungsmerkmal](ValueSet-mii-vs-seltene-icf-beurteilungsmerkmal.md), [MII_VS_Seltene_NARSE_Therapietyp](ValueSet-mii-vs-seltene-narse-therapietyp.md), [MII_VS_Seltene_NBS_Acylcarnitine_DBS](ValueSet-mii-vs-seltene-nbs-acylcarnitine-dbs.md), [MII_VS_Seltene_NBS_AminoAcid_DBS](ValueSet-mii-vs-seltene-nbs-aminoacid-dbs.md), [MII_VS_Seltene_NBS_DBS_All](ValueSet-mii-vs-seltene-nbs-dbs-all.md), [MII_VS_Seltene_NBS_EnzymeActivity_DBS](ValueSet-mii-vs-seltene-nbs-enzyme-activity-dbs.md), [MII_VS_Seltene_NBS_Hemoglobin_DBS](ValueSet-mii-vs-seltene-nbs-hemoglobin-dbs.md), [MII_VS_Seltene_NBS_Ratio_DBS](ValueSet-mii-vs-seltene-nbs-ratio-dbs.md), [MII_VS_Seltene_NBS_TargetAnalyte](ValueSet-mii-vs-seltene-nbs-target-analyte.md), [MII_VS_Seltene_Penetrance](ValueSet-mii-vs-seltene-penetrance.md), [MII_VS_Seltene_Symptom_ChangeStatus_Combined](ValueSet-mii-vs-seltene-symptom-change-status-combined.md), [MII_VS_Seltene_SyndromeCategory](ValueSet-mii-vs-seltene-syndrome-category.md), [MII_VS_Seltene_TherapieempfehlungStrategie](ValueSet-mii-vs-seltene-therapieempfehlung-strategie.md), [MII_VS_Seltene_TherapieempfehlungStrategieMedikamentoes](ValueSet-mii-vs-seltene-therapieempfehlung-strategie-medikamentoes.md), [MII_VS_Seltene_TherapieempfehlungStrategieNichtMedikamentoes](ValueSet-mii-vs-seltene-therapieempfehlung-strategie-nicht-medikamentoes.md), [MII_VS_Seltene_TherapieempfehlungTyp](ValueSet-mii-vs-seltene-therapieempfehlung-typ.md) and [MII_VS_Seltene_VonSEBetroffen](ValueSet-mii-vs-seltene-von-se-betroffen.md)


* Publications of the World Health Organization enjoy copyright protection in accordance with the provisions of Protocol 2 of the Universal Copyright Convention. All rights reserved.

* [International Classification of Functioning, Disability and Health](http://terminology.hl7.org/6.5.0/CodeSystem-ICF.html): [MII_PR_Seltene_ICFAssessment](StructureDefinition-mii-pr-seltene-icf-assessment.md), [MII_VS_Seltene_ICF](ValueSet-mii-vs-seltene-icf.md)... Show 4 more, [Observation/mii-exa-seltene-icf-aktivitaet](Observation-mii-exa-seltene-icf-aktivitaet.md), [Observation/mii-exa-seltene-icf-koerperfunktion](Observation-mii-exa-seltene-icf-koerperfunktion.md), [Observation/mii-exa-seltene-icf-koerperstruktur](Observation-mii-exa-seltene-icf-koerperstruktur.md) and [Observation/mii-exa-seltene-icf-umweltfaktor](Observation-mii-exa-seltene-icf-umweltfaktor.md)


* The HPO vocabularies, annotation files, tools and documentation are freely available. 
* The HPO is copyrighted to protect the integrity of the vocabularies, which means that changes to the HPO vocabularies need to be done by HPO developers. However, anyone can download the HPO and use the ontologies or other HPO files under three conditions:
 
*  That the Human Phenotype Ontology Consortium is acknowledged and [cited](https://hpo.jax.org/app/citation) properly. 
 
* That any HPO Consortium file(s) displayed publicly include the date(s) and/or version number(s) of the relevant HPO file(s).
 
*  That neither the content of the HPO file(s) nor the logical relationships embedded within the HPO file(s) be altered in any way. (Content additions and modifications have to be suggested using our [issue tracker](https://github.com/obophenotype/human-phenotype-ontology/issues) .) 
 
* Users of the HPO should add the following statement to their online presence. This service/product uses the Human Phenotype Ontology (version information). Find out more at [http://www.human-phenotype-ontology.org](http://www.human-phenotype-ontology.org). We request that the HPO logo be included as well.
 

* [Human Phenotype Ontology](http://terminology.hl7.org/6.5.0/CodeSystem-HPO.html): [Bundle/mii-exa-seltene-bundle-marfan-complete](Bundle-mii-exa-seltene-bundle-marfan-complete.md), [Bundle/mii-exa-seltene-bundle-sma-complete](Bundle-mii-exa-seltene-bundle-sma-complete.md)... Show 42 more, [Condition/mii-exa-seltene-condition-cataract](Condition-mii-exa-seltene-condition-cataract.md), [Condition/mii-exa-seltene-condition-marfan-clinical](Condition-mii-exa-seltene-condition-marfan-clinical.md), [Condition/mii-exa-seltene-condition-sma-clinical](Condition-mii-exa-seltene-condition-sma-clinical.md), [Condition/mii-exa-seltene-condition-sma-suspected](Condition-mii-exa-seltene-condition-sma-suspected.md), [Condition/mii-exa-seltene-example-cf-clinical](Condition-mii-exa-seltene-example-cf-clinical.md), [Condition/mii-exa-seltene-example-marfan-clinical-diagnosis](Condition-mii-exa-seltene-example-marfan-clinical-diagnosis.md), [Condition/mii-exa-seltene-example-noonan-clinical-diagnosis](Condition-mii-exa-seltene-example-noonan-clinical-diagnosis.md), [Condition/mii-exa-seltene-symptom-condition](Condition-mii-exa-seltene-symptom-condition.md), [MII_EX_Seltene_Penetrance](StructureDefinition-mii-ex-seltene-penetrance.md), [MII_PR_Seltene_ClinicalDiagnosis](StructureDefinition-mii-pr-seltene-clinical-diagnosis.md), [MII_PR_Seltene_ClinicalImpression](StructureDefinition-mii-pr-seltene-clinical-impression.md), [MII_PR_Seltene_HPO_Assessment](StructureDefinition-mii-pr-seltene-hpo-assessment.md), [MII_PR_Seltene_Symptom_Condition](StructureDefinition-mii-pr-seltene-symptom-condition.md), [MII_VS_Seltene_HPOAgeOfOnset](ValueSet-mii-vs-seltene-hpo-age-of-onset.md), [MII_VS_Seltene_HPOInheritancePattern](ValueSet-mii-vs-seltene-hpo-inheritance-pattern.md), [MII_VS_Seltene_HPOPhenotypicObservationCodes](ValueSet-mii-vs-seltene-hpo-phenotypic-observation-codes.md), [MII_VS_Seltene_HPOSeverity](ValueSet-mii-vs-seltene-hpo-severity.md), [MII_VS_Seltene_Penetrance](ValueSet-mii-vs-seltene-penetrance.md), [Observation/mii-exa-seltene-anteverted-nares](Observation-mii-exa-seltene-anteverted-nares.md), [Observation/mii-exa-seltene-aortic-root-dilatation](Observation-mii-exa-seltene-aortic-root-dilatation.md), [Observation/mii-exa-seltene-arachnodactyly](Observation-mii-exa-seltene-arachnodactyly.md), [Observation/mii-exa-seltene-beighton-score-low](Observation-mii-exa-seltene-beighton-score-low.md), [Observation/mii-exa-seltene-chronic-diarrhea](Observation-mii-exa-seltene-chronic-diarrhea.md), [Observation/mii-exa-seltene-failure-to-thrive](Observation-mii-exa-seltene-failure-to-thrive.md), [Observation/mii-exa-seltene-hpo-assessment](Observation-mii-exa-seltene-hpo-assessment.md), [Observation/mii-exa-seltene-hpo-assessment-change-status](Observation-mii-exa-seltene-hpo-assessment-change-status.md), [Observation/mii-exa-seltene-hpo-assessment-excluded](Observation-mii-exa-seltene-hpo-assessment-excluded.md), [Observation/mii-exa-seltene-hpo-assessment-severity](Observation-mii-exa-seltene-hpo-assessment-severity.md), [Observation/mii-exa-seltene-hypertelorism](Observation-mii-exa-seltene-hypertelorism.md), [Observation/mii-exa-seltene-lens-dislocation](Observation-mii-exa-seltene-lens-dislocation.md), [Observation/mii-exa-seltene-lens-examination-normal](Observation-mii-exa-seltene-lens-examination-normal.md), [Observation/mii-exa-seltene-lymphedema](Observation-mii-exa-seltene-lymphedema.md), [Observation/mii-exa-seltene-observation-height-001](Observation-mii-exa-seltene-observation-height-001.md), [Observation/mii-exa-seltene-observation-leg-asymmetry](Observation-mii-exa-seltene-observation-leg-asymmetry.md), [Observation/mii-exa-seltene-recurrent-respiratory-infections](Observation-mii-exa-seltene-recurrent-respiratory-infections.md), [Observation/mii-exa-seltene-symptom-aortic-regurg](Observation-mii-exa-seltene-symptom-aortic-regurg.md), [Observation/mii-exa-seltene-symptom-aortic-root](Observation-mii-exa-seltene-symptom-aortic-root.md), [Observation/mii-exa-seltene-symptom-cataract](Observation-mii-exa-seltene-symptom-cataract.md), [Observation/mii-exa-seltene-symptom-chest-pain](Observation-mii-exa-seltene-symptom-chest-pain.md), [Observation/mii-exa-seltene-symptom-mitral-regurg](Observation-mii-exa-seltene-symptom-mitral-regurg.md), [Observation/mii-exa-seltene-tall-stature](Observation-mii-exa-seltene-tall-stature.md) and [Observation/mii-exa-seltene-vsd](Observation-mii-exa-seltene-vsd.md)


* The UCUM codes, UCUM table (regardless of format), and UCUM Specification are copyright 1999-2009, Regenstrief Institute, Inc. and the Unified Codes for Units of Measures (UCUM) Organization. All rights reserved. [https://ucum.org/trac/wiki/TermsOfUse](https://ucum.org/trac/wiki/TermsOfUse)

* [Unified Code for Units of Measure (UCUM)](http://hl7.org/fhir/uv/xver-r5.r4/0.1.0/CodeSystem-v3-ucum.html): [Bundle/mii-exa-seltene-bundle-marfan-complete](Bundle-mii-exa-seltene-bundle-marfan-complete.md), [Bundle/mii-exa-seltene-bundle-sma-complete](Bundle-mii-exa-seltene-bundle-sma-complete.md)... Show 21 more, [MII_PR_Seltene_Kopfumfang](StructureDefinition-mii-pr-seltene-kopfumfang.md), [MII_PR_Seltene_Therapieempfehlung](StructureDefinition-mii-pr-seltene-therapieempfehlung.md), [MedicationRequest/mii-exa-seltene-therapieempfehlung-losartan-marfan](MedicationRequest-mii-exa-seltene-therapieempfehlung-losartan-marfan.md), [MedicationStatement/mii-exa-seltene-medication-losartan](MedicationStatement-mii-exa-seltene-medication-losartan.md), [Observation/mii-exa-seltene-aortic-root-normal](Observation-mii-exa-seltene-aortic-root-normal.md), [Observation/mii-exa-seltene-bodymassindex](Observation-mii-exa-seltene-bodymassindex.md), [Observation/mii-exa-seltene-geburtsgewicht](Observation-mii-exa-seltene-geburtsgewicht.md), [Observation/mii-exa-seltene-geburtslaenge](Observation-mii-exa-seltene-geburtslaenge.md), [Observation/mii-exa-seltene-gestationsalter](Observation-mii-exa-seltene-gestationsalter.md), [Observation/mii-exa-seltene-hueftumfang](Observation-mii-exa-seltene-hueftumfang.md), [Observation/mii-exa-seltene-kopfumfang](Observation-mii-exa-seltene-kopfumfang.md), [Observation/mii-exa-seltene-lactate-normal](Observation-mii-exa-seltene-lactate-normal.md), [Observation/mii-exa-seltene-observation-echo-aortic](Observation-mii-exa-seltene-observation-echo-aortic.md), [Observation/mii-exa-seltene-observation-height-001](Observation-mii-exa-seltene-observation-height-001.md), [Observation/mii-exa-seltene-observation-sma-screening](Observation-mii-exa-seltene-observation-sma-screening.md), [Observation/mii-exa-seltene-observation-troponin-001](Observation-mii-exa-seltene-observation-troponin-001.md), [Observation/mii-exa-seltene-observation-troponin-002](Observation-mii-exa-seltene-observation-troponin-002.md), [Observation/mii-exa-seltene-observation-troponin-003](Observation-mii-exa-seltene-observation-troponin-003.md), [Observation/mii-exa-seltene-observation-troponin-004](Observation-mii-exa-seltene-observation-troponin-004.md), [Observation/mii-exa-seltene-symptom-aortic-root](Observation-mii-exa-seltene-symptom-aortic-root.md) and [Observation/mii-exa-seltene-taillenumfang](Observation-mii-exa-seltene-taillenumfang.md)


* This material contains content from [LOINC](http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the [license](http://loinc.org/license). LOINC® is a registered United States trademark of Regenstrief Institute, Inc.

* [LOINC](http://terminology.hl7.org/6.5.0/CodeSystem-v3-loinc.html): [Bundle/mii-exa-seltene-bundle-marfan-complete](Bundle-mii-exa-seltene-bundle-marfan-complete.md), [Bundle/mii-exa-seltene-bundle-sma-complete](Bundle-mii-exa-seltene-bundle-sma-complete.md)... Show 71 more, [Condition/mii-exa-seltene-condition-pku-diagnosis](Condition-mii-exa-seltene-condition-pku-diagnosis.md), [DiagnosticReport/mii-exa-seltene-molgen-brca-panel](DiagnosticReport-mii-exa-seltene-molgen-brca-panel.md), [DiagnosticReport/mii-exa-seltene-molgen-cf-diagnostic](DiagnosticReport-mii-exa-seltene-molgen-cf-diagnostic.md), [DiagnosticReport/mii-exa-seltene-molgen-diagnostic-dmd](DiagnosticReport-mii-exa-seltene-molgen-diagnostic-dmd.md), [DiagnosticReport/mii-exa-seltene-molgen-diagnostic-dmd-duchenne](DiagnosticReport-mii-exa-seltene-molgen-diagnostic-dmd-duchenne.md), [DiagnosticReport/mii-exa-seltene-molgen-diagnostic-implication-sma](DiagnosticReport-mii-exa-seltene-molgen-diagnostic-implication-sma.md), [DiagnosticReport/mii-exa-seltene-molgen-sma-negative](DiagnosticReport-mii-exa-seltene-molgen-sma-negative.md), [DiagnosticReport/mii-exa-seltene-muscle-biopsy-normal](DiagnosticReport-mii-exa-seltene-muscle-biopsy-normal.md), [MII_PR_Seltene_Blutgruppe](StructureDefinition-mii-pr-seltene-blutgruppe.md), [MII_PR_Seltene_Bodymassindex](StructureDefinition-mii-pr-seltene-bodymassindex.md), [MII_PR_Seltene_Geburtsgewicht](StructureDefinition-mii-pr-seltene-geburtsgewicht.md), [MII_PR_Seltene_Geburtslaenge](StructureDefinition-mii-pr-seltene-geburtslaenge.md), [MII_PR_Seltene_Gestationsalter](StructureDefinition-mii-pr-seltene-gestationsalter.md), [MII_PR_Seltene_HPO_Assessment](StructureDefinition-mii-pr-seltene-hpo-assessment.md), [MII_PR_Seltene_Kopfumfang](StructureDefinition-mii-pr-seltene-kopfumfang.md), [MII_VS_Seltene_Blutgruppe](ValueSet-mii-vs-seltene-blutgruppe.md), [MII_VS_Seltene_HPOPresenceStatus](ValueSet-mii-vs-seltene-hpo-presence-status.md), [MII_VS_Seltene_NBS_Acylcarnitine_DBS](ValueSet-mii-vs-seltene-nbs-acylcarnitine-dbs.md), [MII_VS_Seltene_NBS_AminoAcid_DBS](ValueSet-mii-vs-seltene-nbs-aminoacid-dbs.md), [MII_VS_Seltene_NBS_DBS_All](ValueSet-mii-vs-seltene-nbs-dbs-all.md), [MII_VS_Seltene_NBS_EnzymeActivity_DBS](ValueSet-mii-vs-seltene-nbs-enzyme-activity-dbs.md), [MII_VS_Seltene_NBS_Hemoglobin_DBS](ValueSet-mii-vs-seltene-nbs-hemoglobin-dbs.md), [MII_VS_Seltene_NBS_Ratio_DBS](ValueSet-mii-vs-seltene-nbs-ratio-dbs.md), [MII_VS_Seltene_NBS_TargetAnalyte](ValueSet-mii-vs-seltene-nbs-target-analyte.md), [Observation/mii-exa-seltene-anteverted-nares](Observation-mii-exa-seltene-anteverted-nares.md), [Observation/mii-exa-seltene-aortic-root-dilatation](Observation-mii-exa-seltene-aortic-root-dilatation.md), [Observation/mii-exa-seltene-aortic-root-normal](Observation-mii-exa-seltene-aortic-root-normal.md), [Observation/mii-exa-seltene-arachnodactyly](Observation-mii-exa-seltene-arachnodactyly.md), [Observation/mii-exa-seltene-beighton-score-low](Observation-mii-exa-seltene-beighton-score-low.md), [Observation/mii-exa-seltene-bodymassindex](Observation-mii-exa-seltene-bodymassindex.md), [Observation/mii-exa-seltene-chronic-diarrhea](Observation-mii-exa-seltene-chronic-diarrhea.md), [Observation/mii-exa-seltene-failure-to-thrive](Observation-mii-exa-seltene-failure-to-thrive.md), [Observation/mii-exa-seltene-geburtsgewicht](Observation-mii-exa-seltene-geburtsgewicht.md), [Observation/mii-exa-seltene-geburtslaenge](Observation-mii-exa-seltene-geburtslaenge.md), [Observation/mii-exa-seltene-gestationsalter](Observation-mii-exa-seltene-gestationsalter.md), [Observation/mii-exa-seltene-hpo-assessment](Observation-mii-exa-seltene-hpo-assessment.md), [Observation/mii-exa-seltene-hpo-assessment-change-status](Observation-mii-exa-seltene-hpo-assessment-change-status.md), [Observation/mii-exa-seltene-hpo-assessment-excluded](Observation-mii-exa-seltene-hpo-assessment-excluded.md), [Observation/mii-exa-seltene-hpo-assessment-severity](Observation-mii-exa-seltene-hpo-assessment-severity.md), [Observation/mii-exa-seltene-hypertelorism](Observation-mii-exa-seltene-hypertelorism.md), [Observation/mii-exa-seltene-kopfumfang](Observation-mii-exa-seltene-kopfumfang.md), [Observation/mii-exa-seltene-lactate-normal](Observation-mii-exa-seltene-lactate-normal.md), [Observation/mii-exa-seltene-lens-dislocation](Observation-mii-exa-seltene-lens-dislocation.md), [Observation/mii-exa-seltene-lens-examination-normal](Observation-mii-exa-seltene-lens-examination-normal.md), [Observation/mii-exa-seltene-lymphedema](Observation-mii-exa-seltene-lymphedema.md), [Observation/mii-exa-seltene-molgen-cftr-heterozygous-carrier](Observation-mii-exa-seltene-molgen-cftr-heterozygous-carrier.md), [Observation/mii-exa-seltene-molgen-smn1-normal-copies](Observation-mii-exa-seltene-molgen-smn1-normal-copies.md), [Observation/mii-exa-seltene-molgen-variant-brca1-pathogenic](Observation-mii-exa-seltene-molgen-variant-brca1-pathogenic.md), [Observation/mii-exa-seltene-molgen-variant-cftr-f508del-homozygous](Observation-mii-exa-seltene-molgen-variant-cftr-f508del-homozygous.md), [Observation/mii-exa-seltene-molgen-variant-dmd-deletion-exon45](Observation-mii-exa-seltene-molgen-variant-dmd-deletion-exon45.md), [Observation/mii-exa-seltene-molgen-variant-dmd-deletion-exon45-47](Observation-mii-exa-seltene-molgen-variant-dmd-deletion-exon45-47.md), [Observation/mii-exa-seltene-molgen-variant-pah-pku](Observation-mii-exa-seltene-molgen-variant-pah-pku.md), [Observation/mii-exa-seltene-molgen-variant-smn1-deletion](Observation-mii-exa-seltene-molgen-variant-smn1-deletion.md), [Observation/mii-exa-seltene-observation-alt-001](Observation-mii-exa-seltene-observation-alt-001.md), [Observation/mii-exa-seltene-observation-ast-001](Observation-mii-exa-seltene-observation-ast-001.md), [Observation/mii-exa-seltene-observation-echo-aortic](Observation-mii-exa-seltene-observation-echo-aortic.md), [Observation/mii-exa-seltene-observation-echo-av](Observation-mii-exa-seltene-observation-echo-av.md), [Observation/mii-exa-seltene-observation-echo-mv](Observation-mii-exa-seltene-observation-echo-mv.md), [Observation/mii-exa-seltene-observation-height-001](Observation-mii-exa-seltene-observation-height-001.md), [Observation/mii-exa-seltene-observation-plt-001](Observation-mii-exa-seltene-observation-plt-001.md), [Observation/mii-exa-seltene-observation-sma-screening](Observation-mii-exa-seltene-observation-sma-screening.md), [Observation/mii-exa-seltene-observation-troponin-001](Observation-mii-exa-seltene-observation-troponin-001.md), [Observation/mii-exa-seltene-observation-troponin-002](Observation-mii-exa-seltene-observation-troponin-002.md), [Observation/mii-exa-seltene-observation-troponin-003](Observation-mii-exa-seltene-observation-troponin-003.md), [Observation/mii-exa-seltene-observation-troponin-004](Observation-mii-exa-seltene-observation-troponin-004.md), [Observation/mii-exa-seltene-recurrent-respiratory-infections](Observation-mii-exa-seltene-recurrent-respiratory-infections.md), [Observation/mii-exa-seltene-tall-stature](Observation-mii-exa-seltene-tall-stature.md), [Observation/mii-exa-seltene-variant-fbn1-001](Observation-mii-exa-seltene-variant-fbn1-001.md), [Observation/mii-exa-seltene-variant-smn1-001](Observation-mii-exa-seltene-variant-smn1-001.md), [Observation/mii-exa-seltene-variant-smn2-001](Observation-mii-exa-seltene-variant-smn2-001.md) and [Observation/mii-exa-seltene-vsd](Observation-mii-exa-seltene-vsd.md)


* This material contains content that is copyright of SNOMED International. Implementers of these specifications must have the appropriate SNOMED CT Affiliate license - for more information contact [https://www.snomed.org/get-snomed](https://www.snomed.org/get-snomed) or [info@snomed.org](mailto:info@snomed.org).

* [SNOMED Clinical Terms&reg; (SNOMED CT&reg;)](http://hl7.org/fhir/R4/codesystem-snomedct.html): [Bundle/mii-exa-seltene-bundle-marfan-complete](Bundle-mii-exa-seltene-bundle-marfan-complete.md), [Bundle/mii-exa-seltene-bundle-sma-complete](Bundle-mii-exa-seltene-bundle-sma-complete.md)... Show 108 more, [ClinicalImpression/mii-exa-seltene-clinical-impression-erstvorstellung](ClinicalImpression-mii-exa-seltene-clinical-impression-erstvorstellung.md), [ClinicalImpression/mii-exa-seltene-clinical-impression-nachsorge](ClinicalImpression-mii-exa-seltene-clinical-impression-nachsorge.md), [ClinicalImpression/mii-exa-seltene-clinical-impression-seltene-assessment](ClinicalImpression-mii-exa-seltene-clinical-impression-seltene-assessment.md), [Condition/mii-exa-seltene-condition-cataract](Condition-mii-exa-seltene-condition-cataract.md), [Condition/mii-exa-seltene-condition-marfan-clinical](Condition-mii-exa-seltene-condition-marfan-clinical.md), [Condition/mii-exa-seltene-condition-marfan-genetic](Condition-mii-exa-seltene-condition-marfan-genetic.md), [Condition/mii-exa-seltene-condition-marfan-suspected](Condition-mii-exa-seltene-condition-marfan-suspected.md), [Condition/mii-exa-seltene-condition-pku-diagnosis](Condition-mii-exa-seltene-condition-pku-diagnosis.md), [Condition/mii-exa-seltene-condition-sma-clinical](Condition-mii-exa-seltene-condition-sma-clinical.md), [Condition/mii-exa-seltene-condition-sma-genetic](Condition-mii-exa-seltene-condition-sma-genetic.md), [Condition/mii-exa-seltene-condition-sma-suspected](Condition-mii-exa-seltene-condition-sma-suspected.md), [Condition/mii-exa-seltene-example-brca1-genetic-diagnosis](Condition-mii-exa-seltene-example-brca1-genetic-diagnosis.md), [Condition/mii-exa-seltene-example-cf-excluded-after-screening](Condition-mii-exa-seltene-example-cf-excluded-after-screening.md), [Condition/mii-exa-seltene-example-cf-genetic](Condition-mii-exa-seltene-example-cf-genetic.md), [Condition/mii-exa-seltene-example-dmd-excluded-bmd-confirmed](Condition-mii-exa-seltene-example-dmd-excluded-bmd-confirmed.md), [Condition/mii-exa-seltene-example-dmd-genetic-diagnosis](Condition-mii-exa-seltene-example-dmd-genetic-diagnosis.md), [Condition/mii-exa-seltene-example-marfan-clinical-diagnosis](Condition-mii-exa-seltene-example-marfan-clinical-diagnosis.md), [Condition/mii-exa-seltene-example-noonan-clinical-diagnosis](Condition-mii-exa-seltene-example-noonan-clinical-diagnosis.md), [Condition/mii-exa-seltene-example-sma-excluded-genetic](Condition-mii-exa-seltene-example-sma-excluded-genetic.md), [Condition/mii-exa-seltene-example-sma-genetic-diagnosis](Condition-mii-exa-seltene-example-sma-genetic-diagnosis.md), [Condition/mii-exa-seltene-symptom-condition](Condition-mii-exa-seltene-symptom-condition.md), [DiagnosticReport/mii-exa-seltene-molgen-sma-negative](DiagnosticReport-mii-exa-seltene-molgen-sma-negative.md), [DiagnosticReport/mii-exa-seltene-muscle-biopsy-normal](DiagnosticReport-mii-exa-seltene-muscle-biopsy-normal.md), [Encounter/mii-exa-seltene-encounter-ambulant-001](Encounter-mii-exa-seltene-encounter-ambulant-001.md), [Encounter/mii-exa-seltene-encounter-cardiology](Encounter-mii-exa-seltene-encounter-cardiology.md), [Encounter/mii-exa-seltene-encounter-cardiology-consultation](Encounter-mii-exa-seltene-encounter-cardiology-consultation.md), [Encounter/mii-exa-seltene-encounter-cataract-surgery](Encounter-mii-exa-seltene-encounter-cataract-surgery.md), [Encounter/mii-exa-seltene-encounter-genetic-consultation](Encounter-mii-exa-seltene-encounter-genetic-consultation.md), [Encounter/mii-exa-seltene-encounter-nachsorge-001](Encounter-mii-exa-seltene-encounter-nachsorge-001.md), [Encounter/mii-exa-seltene-encounter-ophthalmology](Encounter-mii-exa-seltene-encounter-ophthalmology.md), [Encounter/mii-exa-seltene-encounter-screening-001](Encounter-mii-exa-seltene-encounter-screening-001.md), [Encounter/mii-exa-seltene-encounter-stationaer-001](Encounter-mii-exa-seltene-encounter-stationaer-001.md), [Encounter/mii-exa-seltene-encounter-surgery-planned](Encounter-mii-exa-seltene-encounter-surgery-planned.md), [FamilyMemberHistory/mii-exa-seltene-familienanamnese](FamilyMemberHistory-mii-exa-seltene-familienanamnese.md), [FamilyMemberHistory/mii-exa-seltene-family-history-001](FamilyMemberHistory-mii-exa-seltene-family-history-001.md), [MII_EX_Seltene_VonSEBetroffen](StructureDefinition-mii-ex-seltene-von-se-betroffen.md), [MII_PR_Seltene_Blutgruppe](StructureDefinition-mii-pr-seltene-blutgruppe.md), [MII_PR_Seltene_ClinicalDiagnosis](StructureDefinition-mii-pr-seltene-clinical-diagnosis.md), [MII_PR_Seltene_Consanguinity](StructureDefinition-mii-pr-seltene-consanguinity.md), [MII_PR_Seltene_Familienanamnese](StructureDefinition-mii-pr-seltene-familienanamnese.md), [MII_PR_Seltene_GeneticDiagnosis](StructureDefinition-mii-pr-seltene-genetic-diagnosis.md), [MII_PR_Seltene_HPO_Assessment](StructureDefinition-mii-pr-seltene-hpo-assessment.md), [MII_PR_Seltene_Hueftumfang](StructureDefinition-mii-pr-seltene-hueftumfang.md), [MII_PR_Seltene_Kopfumfang](StructureDefinition-mii-pr-seltene-kopfumfang.md), [MII_PR_Seltene_Studieneinschluss_Anfrage](StructureDefinition-mii-pr-seltene-studieneinschluss-anfrage.md), [MII_PR_Seltene_Symptom_Condition](StructureDefinition-mii-pr-seltene-symptom-condition.md), [MII_PR_Seltene_Taillenumfang](StructureDefinition-mii-pr-seltene-taillenumfang.md), [MII_PR_Seltene_Therapieempfehlung](StructureDefinition-mii-pr-seltene-therapieempfehlung.md), [MII_PR_Seltene_TherapieempfehlungNichtMedikamentoes](StructureDefinition-mii-pr-seltene-therapieempfehlung-nicht-medikamentoes.md), [MII_VS_Seltene_Blutgruppe](ValueSet-mii-vs-seltene-blutgruppe.md), [MII_VS_Seltene_ClinicalDiagnosisCategory](ValueSet-mii-vs-seltene-clinical-diagnosis-category.md), [MII_VS_Seltene_Consanguinity](ValueSet-mii-vs-seltene-consanguinity.md), [MII_VS_Seltene_GeneticBasis](ValueSet-mii-vs-seltene-genetic-basis.md), [MII_VS_Seltene_Symptom_ChangeStatus_Combined](ValueSet-mii-vs-seltene-symptom-change-status-combined.md), [MII_VS_Seltene_SyndromeCategory](ValueSet-mii-vs-seltene-syndrome-category.md), [MII_VS_Seltene_VonSEBetroffen](ValueSet-mii-vs-seltene-von-se-betroffen.md), [MedicationStatement/mii-exa-seltene-medication-losartan](MedicationStatement-mii-exa-seltene-medication-losartan.md), [Observation/mii-exa-seltene-anteverted-nares](Observation-mii-exa-seltene-anteverted-nares.md), [Observation/mii-exa-seltene-aortic-root-dilatation](Observation-mii-exa-seltene-aortic-root-dilatation.md), [Observation/mii-exa-seltene-arachnodactyly](Observation-mii-exa-seltene-arachnodactyly.md), [Observation/mii-exa-seltene-beighton-score-low](Observation-mii-exa-seltene-beighton-score-low.md), [Observation/mii-exa-seltene-chronic-diarrhea](Observation-mii-exa-seltene-chronic-diarrhea.md), [Observation/mii-exa-seltene-consanguinity](Observation-mii-exa-seltene-consanguinity.md), [Observation/mii-exa-seltene-failure-to-thrive](Observation-mii-exa-seltene-failure-to-thrive.md), [Observation/mii-exa-seltene-hpo-assessment](Observation-mii-exa-seltene-hpo-assessment.md), [Observation/mii-exa-seltene-hpo-assessment-change-status](Observation-mii-exa-seltene-hpo-assessment-change-status.md), [Observation/mii-exa-seltene-hpo-assessment-excluded](Observation-mii-exa-seltene-hpo-assessment-excluded.md), [Observation/mii-exa-seltene-hpo-assessment-severity](Observation-mii-exa-seltene-hpo-assessment-severity.md), [Observation/mii-exa-seltene-hueftumfang](Observation-mii-exa-seltene-hueftumfang.md), [Observation/mii-exa-seltene-hypertelorism](Observation-mii-exa-seltene-hypertelorism.md), [Observation/mii-exa-seltene-kopfumfang](Observation-mii-exa-seltene-kopfumfang.md), [Observation/mii-exa-seltene-lens-dislocation](Observation-mii-exa-seltene-lens-dislocation.md), [Observation/mii-exa-seltene-lens-examination-normal](Observation-mii-exa-seltene-lens-examination-normal.md), [Observation/mii-exa-seltene-lymphedema](Observation-mii-exa-seltene-lymphedema.md), [Observation/mii-exa-seltene-molgen-cftr-heterozygous-carrier](Observation-mii-exa-seltene-molgen-cftr-heterozygous-carrier.md), [Observation/mii-exa-seltene-molgen-smn1-normal-copies](Observation-mii-exa-seltene-molgen-smn1-normal-copies.md), [Observation/mii-exa-seltene-molgen-variant-brca1-pathogenic](Observation-mii-exa-seltene-molgen-variant-brca1-pathogenic.md), [Observation/mii-exa-seltene-molgen-variant-cftr-f508del-homozygous](Observation-mii-exa-seltene-molgen-variant-cftr-f508del-homozygous.md), [Observation/mii-exa-seltene-molgen-variant-dmd-deletion-exon45](Observation-mii-exa-seltene-molgen-variant-dmd-deletion-exon45.md), [Observation/mii-exa-seltene-molgen-variant-dmd-deletion-exon45-47](Observation-mii-exa-seltene-molgen-variant-dmd-deletion-exon45-47.md), [Observation/mii-exa-seltene-molgen-variant-pah-pku](Observation-mii-exa-seltene-molgen-variant-pah-pku.md), [Observation/mii-exa-seltene-molgen-variant-smn1-deletion](Observation-mii-exa-seltene-molgen-variant-smn1-deletion.md), [Observation/mii-exa-seltene-observation-echo-aortic](Observation-mii-exa-seltene-observation-echo-aortic.md), [Observation/mii-exa-seltene-observation-echo-av](Observation-mii-exa-seltene-observation-echo-av.md), [Observation/mii-exa-seltene-observation-echo-mv](Observation-mii-exa-seltene-observation-echo-mv.md), [Observation/mii-exa-seltene-observation-height-001](Observation-mii-exa-seltene-observation-height-001.md), [Observation/mii-exa-seltene-observation-leg-asymmetry](Observation-mii-exa-seltene-observation-leg-asymmetry.md), [Observation/mii-exa-seltene-observation-sma-screening](Observation-mii-exa-seltene-observation-sma-screening.md), [Observation/mii-exa-seltene-recurrent-respiratory-infections](Observation-mii-exa-seltene-recurrent-respiratory-infections.md), [Observation/mii-exa-seltene-symptom-aortic-regurg](Observation-mii-exa-seltene-symptom-aortic-regurg.md), [Observation/mii-exa-seltene-symptom-aortic-root](Observation-mii-exa-seltene-symptom-aortic-root.md), [Observation/mii-exa-seltene-symptom-cataract](Observation-mii-exa-seltene-symptom-cataract.md), [Observation/mii-exa-seltene-symptom-chest-pain](Observation-mii-exa-seltene-symptom-chest-pain.md), [Observation/mii-exa-seltene-symptom-mitral-regurg](Observation-mii-exa-seltene-symptom-mitral-regurg.md), [Observation/mii-exa-seltene-taillenumfang](Observation-mii-exa-seltene-taillenumfang.md), [Observation/mii-exa-seltene-tall-stature](Observation-mii-exa-seltene-tall-stature.md), [Observation/mii-exa-seltene-variant-fbn1-001](Observation-mii-exa-seltene-variant-fbn1-001.md), [Observation/mii-exa-seltene-variant-smn1-001](Observation-mii-exa-seltene-variant-smn1-001.md), [Observation/mii-exa-seltene-vsd](Observation-mii-exa-seltene-vsd.md), [Procedure/mii-exa-seltene-procedure-aortic-planned](Procedure-mii-exa-seltene-procedure-aortic-planned.md), [Procedure/mii-exa-seltene-procedure-cataract-surgery](Procedure-mii-exa-seltene-procedure-cataract-surgery.md), [Procedure/mii-exa-seltene-procedure-gentherapy-001](Procedure-mii-exa-seltene-procedure-gentherapy-001.md), [ServiceRequest/mii-exa-seltene-example-early-detection-recommendation](ServiceRequest-mii-exa-seltene-example-early-detection-recommendation.md), [ServiceRequest/mii-exa-seltene-example-nutrition-therapy-recommendation](ServiceRequest-mii-exa-seltene-example-nutrition-therapy-recommendation.md), [ServiceRequest/mii-exa-seltene-studieneinschluss-anfrage](ServiceRequest-mii-exa-seltene-studieneinschluss-anfrage.md), [ServiceRequest/mii-exa-seltene-therapieempfehlung-aortenwurzelersatz-marfan](ServiceRequest-mii-exa-seltene-therapieempfehlung-aortenwurzelersatz-marfan.md), [ServiceRequest/mii-exa-seltene-therapieempfehlung-genetische-beratung](ServiceRequest-mii-exa-seltene-therapieempfehlung-genetische-beratung.md) and [ServiceRequest/mii-exa-seltene-therapieempfehlung-physiotherapie-sma](ServiceRequest-mii-exa-seltene-therapieempfehlung-physiotherapie-sma.md)


* This material derives from the HL7 Terminology (THO). THO is copyright ©1989+ Health Level Seven International and is made available under the CC0 designation. For more licensing information see: [https://terminology.hl7.org/license.html](https://terminology.hl7.org/license.html)

* [Condition Category Codes](http://terminology.hl7.org/7.3.0/CodeSystem-condition-category.html): [Bundle/mii-exa-seltene-bundle-marfan-complete](Bundle-mii-exa-seltene-bundle-marfan-complete.md), [Bundle/mii-exa-seltene-bundle-sma-complete](Bundle-mii-exa-seltene-bundle-sma-complete.md)... Show 12 more, [Condition/mii-exa-seltene-condition-cataract](Condition-mii-exa-seltene-condition-cataract.md), [Condition/mii-exa-seltene-condition-marfan-clinical](Condition-mii-exa-seltene-condition-marfan-clinical.md), [Condition/mii-exa-seltene-condition-marfan-suspected](Condition-mii-exa-seltene-condition-marfan-suspected.md), [Condition/mii-exa-seltene-condition-sma-clinical](Condition-mii-exa-seltene-condition-sma-clinical.md), [Condition/mii-exa-seltene-condition-sma-suspected](Condition-mii-exa-seltene-condition-sma-suspected.md), [Condition/mii-exa-seltene-example-cf-clinical](Condition-mii-exa-seltene-example-cf-clinical.md), [Condition/mii-exa-seltene-example-eds-excluded-clinical](Condition-mii-exa-seltene-example-eds-excluded-clinical.md), [Condition/mii-exa-seltene-example-marfan-clinical-diagnosis](Condition-mii-exa-seltene-example-marfan-clinical-diagnosis.md), [Condition/mii-exa-seltene-example-marfan-excluded-clinical](Condition-mii-exa-seltene-example-marfan-excluded-clinical.md), [Condition/mii-exa-seltene-example-metabolic-myopathy-excluded](Condition-mii-exa-seltene-example-metabolic-myopathy-excluded.md), [Condition/mii-exa-seltene-example-noonan-clinical-diagnosis](Condition-mii-exa-seltene-example-noonan-clinical-diagnosis.md) and [Condition/mii-exa-seltene-symptom-condition](Condition-mii-exa-seltene-symptom-condition.md)
* [Condition Clinical Status Codes](http://terminology.hl7.org/7.3.0/CodeSystem-condition-clinical.html): [Bundle/mii-exa-seltene-bundle-marfan-complete](Bundle-mii-exa-seltene-bundle-marfan-complete.md), [Bundle/mii-exa-seltene-bundle-sma-complete](Bundle-mii-exa-seltene-bundle-sma-complete.md)... Show 23 more, [Condition/mii-exa-seltene-condition-cataract](Condition-mii-exa-seltene-condition-cataract.md), [Condition/mii-exa-seltene-condition-marfan-clinical](Condition-mii-exa-seltene-condition-marfan-clinical.md), [Condition/mii-exa-seltene-condition-marfan-genetic](Condition-mii-exa-seltene-condition-marfan-genetic.md), [Condition/mii-exa-seltene-condition-marfan-suspected](Condition-mii-exa-seltene-condition-marfan-suspected.md), [Condition/mii-exa-seltene-condition-pku-diagnosis](Condition-mii-exa-seltene-condition-pku-diagnosis.md), [Condition/mii-exa-seltene-condition-sma-clinical](Condition-mii-exa-seltene-condition-sma-clinical.md), [Condition/mii-exa-seltene-condition-sma-genetic](Condition-mii-exa-seltene-condition-sma-genetic.md), [Condition/mii-exa-seltene-condition-sma-suspected](Condition-mii-exa-seltene-condition-sma-suspected.md), [Condition/mii-exa-seltene-example-brca1-genetic-diagnosis](Condition-mii-exa-seltene-example-brca1-genetic-diagnosis.md), [Condition/mii-exa-seltene-example-cf-clinical](Condition-mii-exa-seltene-example-cf-clinical.md), [Condition/mii-exa-seltene-example-cf-excluded-after-screening](Condition-mii-exa-seltene-example-cf-excluded-after-screening.md), [Condition/mii-exa-seltene-example-cf-genetic](Condition-mii-exa-seltene-example-cf-genetic.md), [Condition/mii-exa-seltene-example-dmd-excluded-bmd-confirmed](Condition-mii-exa-seltene-example-dmd-excluded-bmd-confirmed.md), [Condition/mii-exa-seltene-example-dmd-genetic-diagnosis](Condition-mii-exa-seltene-example-dmd-genetic-diagnosis.md), [Condition/mii-exa-seltene-example-eds-excluded-clinical](Condition-mii-exa-seltene-example-eds-excluded-clinical.md), [Condition/mii-exa-seltene-example-marfan-clinical-diagnosis](Condition-mii-exa-seltene-example-marfan-clinical-diagnosis.md), [Condition/mii-exa-seltene-example-marfan-excluded-clinical](Condition-mii-exa-seltene-example-marfan-excluded-clinical.md), [Condition/mii-exa-seltene-example-metabolic-myopathy-excluded](Condition-mii-exa-seltene-example-metabolic-myopathy-excluded.md), [Condition/mii-exa-seltene-example-noonan-clinical-diagnosis](Condition-mii-exa-seltene-example-noonan-clinical-diagnosis.md), [Condition/mii-exa-seltene-example-sma-excluded-genetic](Condition-mii-exa-seltene-example-sma-excluded-genetic.md), [Condition/mii-exa-seltene-example-sma-genetic-diagnosis](Condition-mii-exa-seltene-example-sma-genetic-diagnosis.md), [Condition/mii-exa-seltene-symptom-condition](Condition-mii-exa-seltene-symptom-condition.md) and [MII_PR_Seltene_Symptom_Condition](StructureDefinition-mii-pr-seltene-symptom-condition.md)
* [ConditionVerificationStatus](http://terminology.hl7.org/7.3.0/CodeSystem-condition-ver-status.html): [Bundle/mii-exa-seltene-bundle-marfan-complete](Bundle-mii-exa-seltene-bundle-marfan-complete.md), [Bundle/mii-exa-seltene-bundle-sma-complete](Bundle-mii-exa-seltene-bundle-sma-complete.md)... Show 23 more, [Condition/mii-exa-seltene-condition-cataract](Condition-mii-exa-seltene-condition-cataract.md), [Condition/mii-exa-seltene-condition-marfan-clinical](Condition-mii-exa-seltene-condition-marfan-clinical.md), [Condition/mii-exa-seltene-condition-marfan-genetic](Condition-mii-exa-seltene-condition-marfan-genetic.md), [Condition/mii-exa-seltene-condition-marfan-suspected](Condition-mii-exa-seltene-condition-marfan-suspected.md), [Condition/mii-exa-seltene-condition-pku-diagnosis](Condition-mii-exa-seltene-condition-pku-diagnosis.md), [Condition/mii-exa-seltene-condition-sma-clinical](Condition-mii-exa-seltene-condition-sma-clinical.md), [Condition/mii-exa-seltene-condition-sma-genetic](Condition-mii-exa-seltene-condition-sma-genetic.md), [Condition/mii-exa-seltene-condition-sma-suspected](Condition-mii-exa-seltene-condition-sma-suspected.md), [Condition/mii-exa-seltene-example-brca1-genetic-diagnosis](Condition-mii-exa-seltene-example-brca1-genetic-diagnosis.md), [Condition/mii-exa-seltene-example-cf-clinical](Condition-mii-exa-seltene-example-cf-clinical.md), [Condition/mii-exa-seltene-example-cf-excluded-after-screening](Condition-mii-exa-seltene-example-cf-excluded-after-screening.md), [Condition/mii-exa-seltene-example-cf-genetic](Condition-mii-exa-seltene-example-cf-genetic.md), [Condition/mii-exa-seltene-example-dmd-excluded-bmd-confirmed](Condition-mii-exa-seltene-example-dmd-excluded-bmd-confirmed.md), [Condition/mii-exa-seltene-example-dmd-genetic-diagnosis](Condition-mii-exa-seltene-example-dmd-genetic-diagnosis.md), [Condition/mii-exa-seltene-example-eds-excluded-clinical](Condition-mii-exa-seltene-example-eds-excluded-clinical.md), [Condition/mii-exa-seltene-example-marfan-clinical-diagnosis](Condition-mii-exa-seltene-example-marfan-clinical-diagnosis.md), [Condition/mii-exa-seltene-example-marfan-excluded-clinical](Condition-mii-exa-seltene-example-marfan-excluded-clinical.md), [Condition/mii-exa-seltene-example-metabolic-myopathy-excluded](Condition-mii-exa-seltene-example-metabolic-myopathy-excluded.md), [Condition/mii-exa-seltene-example-noonan-clinical-diagnosis](Condition-mii-exa-seltene-example-noonan-clinical-diagnosis.md), [Condition/mii-exa-seltene-example-sma-excluded-genetic](Condition-mii-exa-seltene-example-sma-excluded-genetic.md), [Condition/mii-exa-seltene-example-sma-genetic-diagnosis](Condition-mii-exa-seltene-example-sma-genetic-diagnosis.md), [Condition/mii-exa-seltene-symptom-condition](Condition-mii-exa-seltene-symptom-condition.md) and [MII_PR_Seltene_Symptom_Condition](StructureDefinition-mii-pr-seltene-symptom-condition.md)
* [Consent Category Codes](http://terminology.hl7.org/7.3.0/CodeSystem-consentcategorycodes.html): [Consent/mii-exa-seltene-register-einwilligung](Consent-mii-exa-seltene-register-einwilligung.md)
* [Consent PolicyRule Codes](http://terminology.hl7.org/7.3.0/CodeSystem-consentpolicycodes.html): [Consent/mii-exa-seltene-register-einwilligung](Consent-mii-exa-seltene-register-einwilligung.md)
* [Consent Scope Codes](http://terminology.hl7.org/7.3.0/CodeSystem-consentscope.html): [Consent/mii-exa-seltene-register-einwilligung](Consent-mii-exa-seltene-register-einwilligung.md)
* [Diagnosis Role](http://terminology.hl7.org/7.3.0/CodeSystem-diagnosis-role.html): [Bundle/mii-exa-seltene-bundle-marfan-complete](Bundle-mii-exa-seltene-bundle-marfan-complete.md), [Bundle/mii-exa-seltene-bundle-sma-complete](Bundle-mii-exa-seltene-bundle-sma-complete.md)... Show 6 more, [Encounter/mii-exa-seltene-encounter-ambulant-001](Encounter-mii-exa-seltene-encounter-ambulant-001.md), [Encounter/mii-exa-seltene-encounter-cardiology](Encounter-mii-exa-seltene-encounter-cardiology.md), [Encounter/mii-exa-seltene-encounter-cataract-surgery](Encounter-mii-exa-seltene-encounter-cataract-surgery.md), [Encounter/mii-exa-seltene-encounter-ophthalmology](Encounter-mii-exa-seltene-encounter-ophthalmology.md), [Encounter/mii-exa-seltene-encounter-stationaer-001](Encounter-mii-exa-seltene-encounter-stationaer-001.md) and [Encounter/mii-exa-seltene-encounter-surgery-planned](Encounter-mii-exa-seltene-encounter-surgery-planned.md)
* [LibraryType](http://terminology.hl7.org/7.3.0/CodeSystem-library-type.html): [ERNEuroNMDRegistry](Library-mii-exa-seltene-register-katalog-euro-nmd.md)
* [Observation Category Codes](http://terminology.hl7.org/7.3.0/CodeSystem-observation-category.html): [Bundle/mii-exa-seltene-bundle-marfan-complete](Bundle-mii-exa-seltene-bundle-marfan-complete.md), [Bundle/mii-exa-seltene-bundle-sma-complete](Bundle-mii-exa-seltene-bundle-sma-complete.md)... Show 59 more, [MII_PR_Seltene_Blutgruppe](StructureDefinition-mii-pr-seltene-blutgruppe.md), [MII_PR_Seltene_Consanguinity](StructureDefinition-mii-pr-seltene-consanguinity.md), [MII_PR_Seltene_Geburtsgewicht](StructureDefinition-mii-pr-seltene-geburtsgewicht.md), [MII_PR_Seltene_Geburtslaenge](StructureDefinition-mii-pr-seltene-geburtslaenge.md), [MII_PR_Seltene_ICFAssessment](StructureDefinition-mii-pr-seltene-icf-assessment.md), [MII_PR_Seltene_Kopfumfang](StructureDefinition-mii-pr-seltene-kopfumfang.md), [Observation/mii-exa-seltene-anteverted-nares](Observation-mii-exa-seltene-anteverted-nares.md), [Observation/mii-exa-seltene-aortic-root-dilatation](Observation-mii-exa-seltene-aortic-root-dilatation.md), [Observation/mii-exa-seltene-aortic-root-normal](Observation-mii-exa-seltene-aortic-root-normal.md), [Observation/mii-exa-seltene-arachnodactyly](Observation-mii-exa-seltene-arachnodactyly.md), [Observation/mii-exa-seltene-bodymassindex](Observation-mii-exa-seltene-bodymassindex.md), [Observation/mii-exa-seltene-chronic-diarrhea](Observation-mii-exa-seltene-chronic-diarrhea.md), [Observation/mii-exa-seltene-consanguinity](Observation-mii-exa-seltene-consanguinity.md), [Observation/mii-exa-seltene-failure-to-thrive](Observation-mii-exa-seltene-failure-to-thrive.md), [Observation/mii-exa-seltene-geburtsgewicht](Observation-mii-exa-seltene-geburtsgewicht.md), [Observation/mii-exa-seltene-geburtslaenge](Observation-mii-exa-seltene-geburtslaenge.md), [Observation/mii-exa-seltene-hueftumfang](Observation-mii-exa-seltene-hueftumfang.md), [Observation/mii-exa-seltene-hypertelorism](Observation-mii-exa-seltene-hypertelorism.md), [Observation/mii-exa-seltene-icf-aktivitaet](Observation-mii-exa-seltene-icf-aktivitaet.md), [Observation/mii-exa-seltene-icf-koerperfunktion](Observation-mii-exa-seltene-icf-koerperfunktion.md), [Observation/mii-exa-seltene-icf-koerperstruktur](Observation-mii-exa-seltene-icf-koerperstruktur.md), [Observation/mii-exa-seltene-icf-umweltfaktor](Observation-mii-exa-seltene-icf-umweltfaktor.md), [Observation/mii-exa-seltene-kopfumfang](Observation-mii-exa-seltene-kopfumfang.md), [Observation/mii-exa-seltene-lactate-normal](Observation-mii-exa-seltene-lactate-normal.md), [Observation/mii-exa-seltene-lens-dislocation](Observation-mii-exa-seltene-lens-dislocation.md), [Observation/mii-exa-seltene-lymphedema](Observation-mii-exa-seltene-lymphedema.md), [Observation/mii-exa-seltene-molgen-cftr-heterozygous-carrier](Observation-mii-exa-seltene-molgen-cftr-heterozygous-carrier.md), [Observation/mii-exa-seltene-molgen-smn1-normal-copies](Observation-mii-exa-seltene-molgen-smn1-normal-copies.md), [Observation/mii-exa-seltene-molgen-variant-brca1-pathogenic](Observation-mii-exa-seltene-molgen-variant-brca1-pathogenic.md), [Observation/mii-exa-seltene-molgen-variant-cftr-f508del-homozygous](Observation-mii-exa-seltene-molgen-variant-cftr-f508del-homozygous.md), [Observation/mii-exa-seltene-molgen-variant-dmd-deletion-exon45](Observation-mii-exa-seltene-molgen-variant-dmd-deletion-exon45.md), [Observation/mii-exa-seltene-molgen-variant-dmd-deletion-exon45-47](Observation-mii-exa-seltene-molgen-variant-dmd-deletion-exon45-47.md), [Observation/mii-exa-seltene-molgen-variant-pah-pku](Observation-mii-exa-seltene-molgen-variant-pah-pku.md), [Observation/mii-exa-seltene-molgen-variant-smn1-deletion](Observation-mii-exa-seltene-molgen-variant-smn1-deletion.md), [Observation/mii-exa-seltene-observation-alt-001](Observation-mii-exa-seltene-observation-alt-001.md), [Observation/mii-exa-seltene-observation-ast-001](Observation-mii-exa-seltene-observation-ast-001.md), [Observation/mii-exa-seltene-observation-echo-aortic](Observation-mii-exa-seltene-observation-echo-aortic.md), [Observation/mii-exa-seltene-observation-echo-av](Observation-mii-exa-seltene-observation-echo-av.md), [Observation/mii-exa-seltene-observation-echo-mv](Observation-mii-exa-seltene-observation-echo-mv.md), [Observation/mii-exa-seltene-observation-height-001](Observation-mii-exa-seltene-observation-height-001.md), [Observation/mii-exa-seltene-observation-leg-asymmetry](Observation-mii-exa-seltene-observation-leg-asymmetry.md), [Observation/mii-exa-seltene-observation-plt-001](Observation-mii-exa-seltene-observation-plt-001.md), [Observation/mii-exa-seltene-observation-sma-screening](Observation-mii-exa-seltene-observation-sma-screening.md), [Observation/mii-exa-seltene-observation-troponin-001](Observation-mii-exa-seltene-observation-troponin-001.md), [Observation/mii-exa-seltene-observation-troponin-002](Observation-mii-exa-seltene-observation-troponin-002.md), [Observation/mii-exa-seltene-observation-troponin-003](Observation-mii-exa-seltene-observation-troponin-003.md), [Observation/mii-exa-seltene-observation-troponin-004](Observation-mii-exa-seltene-observation-troponin-004.md), [Observation/mii-exa-seltene-recurrent-respiratory-infections](Observation-mii-exa-seltene-recurrent-respiratory-infections.md), [Observation/mii-exa-seltene-symptom-aortic-regurg](Observation-mii-exa-seltene-symptom-aortic-regurg.md), [Observation/mii-exa-seltene-symptom-aortic-root](Observation-mii-exa-seltene-symptom-aortic-root.md), [Observation/mii-exa-seltene-symptom-cataract](Observation-mii-exa-seltene-symptom-cataract.md), [Observation/mii-exa-seltene-symptom-chest-pain](Observation-mii-exa-seltene-symptom-chest-pain.md), [Observation/mii-exa-seltene-symptom-mitral-regurg](Observation-mii-exa-seltene-symptom-mitral-regurg.md), [Observation/mii-exa-seltene-taillenumfang](Observation-mii-exa-seltene-taillenumfang.md), [Observation/mii-exa-seltene-tall-stature](Observation-mii-exa-seltene-tall-stature.md), [Observation/mii-exa-seltene-variant-fbn1-001](Observation-mii-exa-seltene-variant-fbn1-001.md), [Observation/mii-exa-seltene-variant-smn1-001](Observation-mii-exa-seltene-variant-smn1-001.md), [Observation/mii-exa-seltene-variant-smn2-001](Observation-mii-exa-seltene-variant-smn2-001.md) and [Observation/mii-exa-seltene-vsd](Observation-mii-exa-seltene-vsd.md)
* [diagnosticServiceSectionId](http://terminology.hl7.org/7.3.0/CodeSystem-v2-0074.html): [DiagnosticReport/mii-exa-seltene-molgen-brca-panel](DiagnosticReport-mii-exa-seltene-molgen-brca-panel.md), [DiagnosticReport/mii-exa-seltene-molgen-cf-diagnostic](DiagnosticReport-mii-exa-seltene-molgen-cf-diagnostic.md)... Show 5 more, [DiagnosticReport/mii-exa-seltene-molgen-diagnostic-dmd](DiagnosticReport-mii-exa-seltene-molgen-diagnostic-dmd.md), [DiagnosticReport/mii-exa-seltene-molgen-diagnostic-dmd-duchenne](DiagnosticReport-mii-exa-seltene-molgen-diagnostic-dmd-duchenne.md), [DiagnosticReport/mii-exa-seltene-molgen-diagnostic-implication-sma](DiagnosticReport-mii-exa-seltene-molgen-diagnostic-implication-sma.md), [DiagnosticReport/mii-exa-seltene-molgen-sma-negative](DiagnosticReport-mii-exa-seltene-molgen-sma-negative.md) and [DiagnosticReport/mii-exa-seltene-muscle-biopsy-normal](DiagnosticReport-mii-exa-seltene-muscle-biopsy-normal.md)
* [expandedYes-NoIndicator](http://terminology.hl7.org/7.3.0/CodeSystem-v2-0532.html): [MII_EX_Seltene_VonSEBetroffen](StructureDefinition-mii-ex-seltene-von-se-betroffen.md) and [MII_VS_Seltene_VonSEBetroffen](ValueSet-mii-vs-seltene-von-se-betroffen.md)
* [ActCode](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActCode.html): [Bundle/mii-exa-seltene-bundle-marfan-complete](Bundle-mii-exa-seltene-bundle-marfan-complete.md), [Bundle/mii-exa-seltene-bundle-sma-complete](Bundle-mii-exa-seltene-bundle-sma-complete.md)... Show 10 more, [Encounter/mii-exa-seltene-encounter-ambulant-001](Encounter-mii-exa-seltene-encounter-ambulant-001.md), [Encounter/mii-exa-seltene-encounter-cardiology](Encounter-mii-exa-seltene-encounter-cardiology.md), [Encounter/mii-exa-seltene-encounter-cardiology-consultation](Encounter-mii-exa-seltene-encounter-cardiology-consultation.md), [Encounter/mii-exa-seltene-encounter-cataract-surgery](Encounter-mii-exa-seltene-encounter-cataract-surgery.md), [Encounter/mii-exa-seltene-encounter-genetic-consultation](Encounter-mii-exa-seltene-encounter-genetic-consultation.md), [Encounter/mii-exa-seltene-encounter-nachsorge-001](Encounter-mii-exa-seltene-encounter-nachsorge-001.md), [Encounter/mii-exa-seltene-encounter-ophthalmology](Encounter-mii-exa-seltene-encounter-ophthalmology.md), [Encounter/mii-exa-seltene-encounter-screening-001](Encounter-mii-exa-seltene-encounter-screening-001.md), [Encounter/mii-exa-seltene-encounter-stationaer-001](Encounter-mii-exa-seltene-encounter-stationaer-001.md) and [Encounter/mii-exa-seltene-encounter-surgery-planned](Encounter-mii-exa-seltene-encounter-surgery-planned.md)
* [ObservationInterpretation](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ObservationInterpretation.html): [Bundle/mii-exa-seltene-bundle-marfan-complete](Bundle-mii-exa-seltene-bundle-marfan-complete.md), [Bundle/mii-exa-seltene-bundle-sma-complete](Bundle-mii-exa-seltene-bundle-sma-complete.md)... Show 35 more, [Observation/mii-exa-seltene-anteverted-nares](Observation-mii-exa-seltene-anteverted-nares.md), [Observation/mii-exa-seltene-aortic-root-dilatation](Observation-mii-exa-seltene-aortic-root-dilatation.md), [Observation/mii-exa-seltene-aortic-root-normal](Observation-mii-exa-seltene-aortic-root-normal.md), [Observation/mii-exa-seltene-arachnodactyly](Observation-mii-exa-seltene-arachnodactyly.md), [Observation/mii-exa-seltene-chronic-diarrhea](Observation-mii-exa-seltene-chronic-diarrhea.md), [Observation/mii-exa-seltene-failure-to-thrive](Observation-mii-exa-seltene-failure-to-thrive.md), [Observation/mii-exa-seltene-hypertelorism](Observation-mii-exa-seltene-hypertelorism.md), [Observation/mii-exa-seltene-lactate-normal](Observation-mii-exa-seltene-lactate-normal.md), [Observation/mii-exa-seltene-lens-dislocation](Observation-mii-exa-seltene-lens-dislocation.md), [Observation/mii-exa-seltene-lymphedema](Observation-mii-exa-seltene-lymphedema.md), [Observation/mii-exa-seltene-molgen-smn1-normal-copies](Observation-mii-exa-seltene-molgen-smn1-normal-copies.md), [Observation/mii-exa-seltene-molgen-variant-smn1-deletion](Observation-mii-exa-seltene-molgen-variant-smn1-deletion.md), [Observation/mii-exa-seltene-observation-alt-001](Observation-mii-exa-seltene-observation-alt-001.md), [Observation/mii-exa-seltene-observation-ast-001](Observation-mii-exa-seltene-observation-ast-001.md), [Observation/mii-exa-seltene-observation-echo-aortic](Observation-mii-exa-seltene-observation-echo-aortic.md), [Observation/mii-exa-seltene-observation-echo-av](Observation-mii-exa-seltene-observation-echo-av.md), [Observation/mii-exa-seltene-observation-echo-mv](Observation-mii-exa-seltene-observation-echo-mv.md), [Observation/mii-exa-seltene-observation-height-001](Observation-mii-exa-seltene-observation-height-001.md), [Observation/mii-exa-seltene-observation-leg-asymmetry](Observation-mii-exa-seltene-observation-leg-asymmetry.md), [Observation/mii-exa-seltene-observation-plt-001](Observation-mii-exa-seltene-observation-plt-001.md), [Observation/mii-exa-seltene-observation-sma-screening](Observation-mii-exa-seltene-observation-sma-screening.md), [Observation/mii-exa-seltene-observation-troponin-001](Observation-mii-exa-seltene-observation-troponin-001.md), [Observation/mii-exa-seltene-observation-troponin-002](Observation-mii-exa-seltene-observation-troponin-002.md), [Observation/mii-exa-seltene-observation-troponin-003](Observation-mii-exa-seltene-observation-troponin-003.md), [Observation/mii-exa-seltene-observation-troponin-004](Observation-mii-exa-seltene-observation-troponin-004.md), [Observation/mii-exa-seltene-recurrent-respiratory-infections](Observation-mii-exa-seltene-recurrent-respiratory-infections.md), [Observation/mii-exa-seltene-symptom-aortic-regurg](Observation-mii-exa-seltene-symptom-aortic-regurg.md), [Observation/mii-exa-seltene-symptom-aortic-root](Observation-mii-exa-seltene-symptom-aortic-root.md), [Observation/mii-exa-seltene-symptom-cataract](Observation-mii-exa-seltene-symptom-cataract.md), [Observation/mii-exa-seltene-symptom-chest-pain](Observation-mii-exa-seltene-symptom-chest-pain.md), [Observation/mii-exa-seltene-symptom-mitral-regurg](Observation-mii-exa-seltene-symptom-mitral-regurg.md), [Observation/mii-exa-seltene-tall-stature](Observation-mii-exa-seltene-tall-stature.md), [Observation/mii-exa-seltene-variant-fbn1-001](Observation-mii-exa-seltene-variant-fbn1-001.md), [Observation/mii-exa-seltene-variant-smn1-001](Observation-mii-exa-seltene-variant-smn1-001.md) and [Observation/mii-exa-seltene-vsd](Observation-mii-exa-seltene-vsd.md)
* [RoleCode](http://terminology.hl7.org/7.3.0/CodeSystem-v3-RoleCode.html): [MII_PR_Seltene_Familienanamnese](StructureDefinition-mii-pr-seltene-familienanamnese.md)


* Unless otherwise noted, the contents of the FDA website (www.fda.gov) — both text and graphics — are not copyrighted. They are in the public domain and may be republished, reprinted and otherwise used freely by anyone without the need to obtain permission from FDA. Credit to the U.S. Food and Drug Administration as the source is appreciated but not required.

* [Unique Ingredient Identifier (UNII)](http://terminology.hl7.org/6.5.0/CodeSystem-UNII.html): [Bundle/mii-exa-seltene-bundle-sma-complete](Bundle-mii-exa-seltene-bundle-sma-complete.md), [MII_PR_Seltene_Therapieempfehlung](StructureDefinition-mii-pr-seltene-therapieempfehlung.md), [MedicationRequest/mii-exa-seltene-therapieempfehlung-gentherapie-sma](MedicationRequest-mii-exa-seltene-therapieempfehlung-gentherapie-sma.md) and [Procedure/mii-exa-seltene-procedure-gentherapy-001](Procedure-mii-exa-seltene-procedure-gentherapy-001.md)


* WHO, BfArM 1994 - 2024 - Die Erstellung erfolgt unter Verwendung der maschinenlesbaren Fassung des Bundesinstituts für Arzneimittel und Medizinprodukte (BfArM)

* [ICD-10-GM](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.molgen@2026.0.4&canonical=http://fhir.de/CodeSystem/bfarm/icd-10-gm): [Bundle/mii-exa-seltene-bundle-marfan-complete](Bundle-mii-exa-seltene-bundle-marfan-complete.md), [Bundle/mii-exa-seltene-bundle-sma-complete](Bundle-mii-exa-seltene-bundle-sma-complete.md)... Show 11 more, [Condition/mii-exa-seltene-condition-cataract](Condition-mii-exa-seltene-condition-cataract.md), [Condition/mii-exa-seltene-condition-marfan-suspected](Condition-mii-exa-seltene-condition-marfan-suspected.md), [Condition/mii-exa-seltene-condition-sma-clinical](Condition-mii-exa-seltene-condition-sma-clinical.md), [Condition/mii-exa-seltene-example-eds-excluded-clinical](Condition-mii-exa-seltene-example-eds-excluded-clinical.md), [Condition/mii-exa-seltene-example-metabolic-myopathy-excluded](Condition-mii-exa-seltene-example-metabolic-myopathy-excluded.md), [Condition/mii-exa-seltene-example-noonan-clinical-diagnosis](Condition-mii-exa-seltene-example-noonan-clinical-diagnosis.md), [FamilyMemberHistory/mii-exa-seltene-familienanamnese](FamilyMemberHistory-mii-exa-seltene-familienanamnese.md), [MII_PR_Seltene_ClinicalDiagnosis](StructureDefinition-mii-pr-seltene-clinical-diagnosis.md), [MII_PR_Seltene_Familienanamnese](StructureDefinition-mii-pr-seltene-familienanamnese.md), [MII_PR_Seltene_GeneticDiagnosis](StructureDefinition-mii-pr-seltene-genetic-diagnosis.md) and [MII_PR_Seltene_Symptom_Condition](StructureDefinition-mii-pr-seltene-symptom-condition.md)


### IG-Parametereinstellungen und Expansionsparameter

Expansionsparameter sind Query-Parameter, die an eine `ValueSet`- `$expand`-Operation übergeben werden können, um zu steuern, wie das ValueSet expandiert wird — also wie die vollständige Liste der Codes aus der ValueSet-Definition erzeugt wird. Die für diesen IG verwendeten [IG-Parameter](https://hl7.org/fhir/tools/en/CodeSystem-ig-parameters.html) sind in [`sushi-config.yaml`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-seltene-erkrankungen/blob/main/sushi-config.yaml) (`parameters:`) deklariert. Ein Modul, das seine Expansionsparameter über ein CRMI-Manifest pinnt, verlinkt hier zusätzlich die generierte `Parameters`-Ressource (siehe die auskommentierten Manifest-Blöcke in `sushi-config.yaml` und die Seite Metadata Overview, sofern das Modul sie behält).



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "mii-ig-seltene",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableimplementationguide",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableimplementationguide",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-implementationguide"]
  },
  "language" : "en",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/resource-approvalDate",
    "valueDate" : "2026-09-02"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "shareable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "publishable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionPolicy",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/artifact-version-policy-codes",
        "code" : "package",
        "display" : "Package"
      }]
    }
  },
  {
    "extension" : [{
      "url" : "packageId",
      "valueId" : "de.medizininformatikinitiative.kerndatensatz.seltene"
    },
    {
      "url" : "version",
      "valueString" : "2027.0.0-ballot"
    },
    {
      "url" : "uri",
      "valueUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene"
    }],
    "url" : "http://hl7.org/fhir/StructureDefinition/package-source"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/resource-effectivePeriod",
    "valuePeriod" : {
      "start" : "2027"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-author",
    "valueContactDetail" : {
      "telecom" : [{
        "system" : "email",
        "value" : "thomas.debertshaeuser@charite.de"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-editor",
    "valueContactDetail" : {
      "name" : "Taskforce Core Data Set"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-reviewer",
    "valueContactDetail" : {
      "name" : "Interoperability Working Group",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/interoperability-working-group"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-reviewer",
    "valueContactDetail" : {
      "name" : "National Steering Committee",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/national-steering-committee"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-endorser",
    "valueContactDetail" : {
      "name" : "Interoperability Working Group",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/interoperability-working-group"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-endorser",
    "valueContactDetail" : {
      "name" : "National Steering Committee",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/national-steering-committee"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-expansionParameters",
    "valueReference" : {
      "reference" : "Parameters/mii-param-seltene-manifest"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm",
    "valueCoding" : {
      "system" : "http://hl7.org/fhir/version-algorithm",
      "code" : "semver"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-usage",
    "valueMarkdown" : "Use this ImplementationGuide resource as a computable definition of all the parts of the corresponding module of the Medical Informatics Initiative core data set."
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-purpose",
    "valueMarkdown" : "Provide the computable publication unit for the MII Core Dataset Seltene Erkrankungen (rare diseases) module, enabling implementers to discover, validate, version, and apply the specification consistently."
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-topic",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl",
        "code" : "C4873"
      }]
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ImplementationGuide/mii-ig-seltene",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_IG_Seltene_Erkrankungen",
  "title" : "MII IG Kerndatensatz-Modul Seltene Erkrankungen",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "de"
      },
      {
        "url" : "content",
        "valueString" : "MII IG Kerndatensatz-Modul Seltene Erkrankungen"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-02",
  "publisher" : "Medizininformatik Initiative",
  "_publisher" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "de"
      },
      {
        "url" : "content",
        "valueString" : "Medizininformatik Initiative"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "FHIR profiles for representing rare disease data (phenotyping, family history, genetic diagnoses, therapy and research) as part of the German MII core data set.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "packageId" : "de.medizininformatikinitiative.kerndatensatz.seltene",
  "license" : "CC-BY-4.0",
  "fhirVersion" : ["4.0.1"],
  "dependsOn" : [{
    "id" : "de_basisprofil_r4",
    "uri" : "http://fhir.org/packages/de.basisprofil.r4/ImplementationGuide/de.basisprofil.r4",
    "packageId" : "de.basisprofil.r4",
    "version" : "1.6.0"
  },
  {
    "id" : "de_medizininformatikinitiative_kerndatensatz_meta",
    "uri" : "https://www.medizininformatik-initiative.de/fhir/modul-meta/ImplementationGuide/mii-ig-meta",
    "packageId" : "de.medizininformatikinitiative.kerndatensatz.meta",
    "version" : "2027.0.0-ballot.rc3"
  },
  {
    "id" : "de_medizininformatikinitiative_kerndatensatz_molgen",
    "uri" : "http://fhir.org/packages/de.medizininformatikinitiative.kerndatensatz.molgen/ImplementationGuide/de.medizininformatikinitiative.kerndatensatz.molgen",
    "packageId" : "de.medizininformatikinitiative.kerndatensatz.molgen",
    "version" : "2026.0.4"
  },
  {
    "id" : "de_medizininformatikinitiative_kerndatensatz_icu",
    "uri" : "http://fhir.org/packages/de.medizininformatikinitiative.kerndatensatz.icu/ImplementationGuide/de.medizininformatikinitiative.kerndatensatz.icu",
    "packageId" : "de.medizininformatikinitiative.kerndatensatz.icu",
    "version" : "2026.0.3"
  },
  {
    "id" : "de_medizininformatikinitiative_kerndatensatz_studie",
    "uri" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/ImplementationGuide/mii-ig-studie",
    "packageId" : "de.medizininformatikinitiative.kerndatensatz.studie",
    "version" : "2027.0.0-ballot.rc1"
  },
  {
    "id" : "de_medizininformatikinitiative_kerndatensatz_base",
    "uri" : "https://www.medizininformatik-initiative.de/fhir/modul-base/ImplementationGuide/mii-ig-base",
    "packageId" : "de.medizininformatikinitiative.kerndatensatz.base",
    "version" : "2027.0.0-ballot.rc1"
  },
  {
    "id" : "de_medizininformatikinitiative_kerndatensatz_medikation",
    "uri" : "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/ImplementationGuide/mii-ig-medikation",
    "packageId" : "de.medizininformatikinitiative.kerndatensatz.medikation",
    "version" : "2026.0.1"
  },
  {
    "id" : "hl7_fhir_uv_crmi",
    "uri" : "http://hl7.org/fhir/uv/crmi/ImplementationGuide/hl7.fhir.uv.crmi",
    "packageId" : "hl7.fhir.uv.crmi",
    "version" : "2.0.0"
  },
  {
    "id" : "hl7_terminology_r4",
    "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
    "packageId" : "hl7.terminology.r4",
    "version" : "7.3.0"
  },
  {
    "id" : "hl7_fhir_uv_extensions_r4",
    "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
    "packageId" : "hl7.fhir.uv.extensions.r4",
    "version" : "5.3.0"
  }],
  "definition" : {
    "extension" : [{
      "extension" : [{
        "url" : "code",
        "valueString" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2022+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "ci-build"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/LogicalModel/Seltene"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CapabilityStatement/metadata"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "i18n-default-lang"
      },
      {
        "url" : "value",
        "valueString" : "en"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "i18n-lang"
      },
      {
        "url" : "value",
        "valueString" : "de"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "translation-sources"
      },
      {
        "url" : "value",
        "valueString" : "input/translations/de"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludexml"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludejson"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludettl"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludemap"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "init"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "progress"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "context"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "tx"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "pin-canonicals"
      },
      {
        "url" : "value",
        "valueString" : "pin-all"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-expansion-params"
      },
      {
        "url" : "value",
        "valueString" : "../../input/resources/Parameters-expansion-manifest.json"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "pin-manifest"
      },
      {
        "url" : "value",
        "valueString" : "mii-param-seltene-manifest"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "suppress-mappings"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/v3"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "suppress-mappings"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/v3/cda"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "wantGen-ttl"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "wantGen-ttl-html"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/expansion-parameters",
      "valueReference" : {
        "reference" : "Parameters/expansion-parameters"
      }
    },
    {
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
      "valueCode" : "hl7.fhir.uv.tools.r4#1.1.2"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2022+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "ci-build"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/LogicalModel/Seltene"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CapabilityStatement/metadata"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "i18n-default-lang"
      },
      {
        "url" : "value",
        "valueString" : "en"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "i18n-lang"
      },
      {
        "url" : "value",
        "valueString" : "de"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "translation-sources"
      },
      {
        "url" : "value",
        "valueString" : "input/translations/de"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludexml"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludejson"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludettl"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludemap"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "init"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "progress"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "context"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "tx"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "pin-canonicals"
      },
      {
        "url" : "value",
        "valueString" : "pin-all"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-expansion-params"
      },
      {
        "url" : "value",
        "valueString" : "../../input/resources/Parameters-expansion-manifest.json"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "pin-manifest"
      },
      {
        "url" : "value",
        "valueString" : "mii-param-seltene-manifest"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "suppress-mappings"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/v3"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "suppress-mappings"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/v3/cda"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "wantGen-ttl"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "wantGen-ttl-html"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    }],
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-seltene-observation-alt-001.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-seltene-observation-alt-001"
      },
      "name" : "ALT Labor - Post-therapeutisch",
      "description" : "ALT Wert nach Gentherapie",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Encounter-mii-exa-seltene-encounter-ambulant-001.html"
      }],
      "reference" : {
        "reference" : "Encounter/mii-exa-seltene-encounter-ambulant-001"
      },
      "name" : "Ambulante Erstvorstellung",
      "description" : "Erstvorstellung im SMA-Zentrum",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Encounter-mii-exa-seltene-encounter-nachsorge-001.html"
      }],
      "reference" : {
        "reference" : "Encounter/mii-exa-seltene-encounter-nachsorge-001"
      },
      "name" : "Ambulante Nachsorge",
      "description" : "Erster Nachsorgetermin nach Gentherapie",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-seltene-anteverted-nares.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-seltene-anteverted-nares"
      },
      "name" : "Antevertierte Nares - HPO-kodiert",
      "description" : "Nach oben gerichtete Nasenlöcher",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-seltene-symptom-aortic-regurg.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-seltene-symptom-aortic-regurg"
      },
      "name" : "Aortenklappeninsuffizienz",
      "description" : "Moderate Aortenklappeninsuffizienz Grad II",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-seltene-aortic-root-normal.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-seltene-aortic-root-normal"
      },
      "name" : "Aortenwurzel - Normalbefund",
      "description" : "Normale Aortenwurzel, schließt Marfan aus",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-seltene-symptom-aortic-root.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-seltene-symptom-aortic-root"
      },
      "name" : "Aortenwurzeldilatation",
      "description" : "Pathologisch erweiterte Aortenwurzel",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-seltene-aortic-root-dilatation.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-seltene-aortic-root-dilatation"
      },
      "name" : "Aortenwurzeldilatation - HPO-kodiert",
      "description" : "Echokardiographisch nachgewiesene Aortenwurzeldilatation",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-seltene-arachnodactyly.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-seltene-arachnodactyly"
      },
      "name" : "Arachnodaktylie - HPO-kodiert",
      "description" : "Spinnenfingrigkeit bei Marfan-Syndrom",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-seltene-observation-ast-001.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-seltene-observation-ast-001"
      },
      "name" : "AST Labor - Post-therapeutisch",
      "description" : "AST Wert nach Gentherapie",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Encounter-mii-exa-seltene-encounter-ophthalmology.html"
      }],
      "reference" : {
        "reference" : "Encounter/mii-exa-seltene-encounter-ophthalmology"
      },
      "name" : "Augenärztliche Konsultation",
      "description" : "Erstvorstellung beim Augenarzt wegen Katarakt",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-seltene-observation-leg-asymmetry.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-seltene-observation-leg-asymmetry"
      },
      "name" : "Beinlängendifferenz",
      "description" : "Beinlängendifferenz mit rechts verkürztem Bein",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-mii-exa-seltene-therapieempfehlung-aortenwurzelersatz-marfan.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/mii-exa-seltene-therapieempfehlung-aortenwurzelersatz-marfan"
      },
      "name" : "Beispiel Aortenwurzelersatz bei Marfan-Syndrom",
      "description" : "Beispiel einer nicht-medikamentösen Therapieempfehlung für Aortenwurzelersatz bei Marfan-Syndrom",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung-nicht-medikamentoes"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Consent"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Consent-mii-exa-seltene-register-einwilligung.html"
      }],
      "reference" : {
        "reference" : "Consent/mii-exa-seltene-register-einwilligung"
      },
      "name" : "Beispiel Einwilligung zur Registerteilnahme",
      "description" : "Das Probanden-Profil des Moduls Studie fordert consent mit 1..1 — bei einer Registeraufnahme ist die Einwilligung der Sorgeberechtigten ohnehin die Grundlage, die Pflichtangabe deckt sich also mit der Praxis und ist keine zusaetzliche Huerde.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-mii-exa-seltene-example-nutrition-therapy-recommendation.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/mii-exa-seltene-example-nutrition-therapy-recommendation"
      },
      "name" : "Beispiel Ernährungstherapie-Empfehlung",
      "description" : "Beispiel einer Ernährungstherapie-Empfehlung bei Phenylketonurie",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung-nicht-medikamentoes"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-mii-exa-seltene-example-early-detection-recommendation.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/mii-exa-seltene-example-early-detection-recommendation"
      },
      "name" : "Beispiel Früherkennungsprogramm-Empfehlung",
      "description" : "Beispiel einer Empfehlung für regelmäßige Früherkennungsuntersuchungen",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung-nicht-medikamentoes"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-seltene-geburtsgewicht.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-seltene-geburtsgewicht"
      },
      "name" : "Beispiel Geburtsgewicht",
      "description" : "Geburtsgewicht im Normbereich. Ausgangswert für die Beurteilung der bei SMA Typ 1 häufigen späteren Gedeihstörung.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-geburtsgewicht"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-seltene-geburtslaenge.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-seltene-geburtslaenge"
      },
      "name" : "Beispiel Geburtslänge",
      "description" : "Körperlänge bei Geburt, gemessen.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-geburtslaenge"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-mii-exa-seltene-therapieempfehlung-genetische-beratung.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/mii-exa-seltene-therapieempfehlung-genetische-beratung"
      },
      "name" : "Beispiel Genetische Beratung",
      "description" : "Beispiel einer nicht-medikamentösen Therapieempfehlung für genetische Beratung",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung-nicht-medikamentoes"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationRequest-mii-exa-seltene-therapieempfehlung-gentherapie-sma.html"
      }],
      "reference" : {
        "reference" : "MedicationRequest/mii-exa-seltene-therapieempfehlung-gentherapie-sma"
      },
      "name" : "Beispiel Gentherapie bei SMA",
      "description" : "Beispiel einer medikamentösen Therapieempfehlung für Gentherapie bei Spinaler Muskelatrophie",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-seltene-gestationsalter.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-seltene-gestationsalter"
      },
      "name" : "Beispiel Gestationsalter bei Geburt",
      "description" : "Reifgeborenes in der 38. Woche. Bei SMA Typ 1 wichtig als Abgrenzung: die Muskelschwäche ist nicht durch Frühgeburtlichkeit erklärbar.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-gestationsalter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationRequest-mii-exa-seltene-therapieempfehlung-losartan-marfan.html"
      }],
      "reference" : {
        "reference" : "MedicationRequest/mii-exa-seltene-therapieempfehlung-losartan-marfan"
      },
      "name" : "Beispiel Losartan bei Marfan-Syndrom",
      "description" : "Beispiel einer medikamentösen Therapieempfehlung für Losartan zur Progressionshemmung bei Marfan-Syndrom",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-mii-exa-seltene-narse-gentherapie-sma.html"
      }],
      "reference" : {
        "reference" : "Procedure/mii-exa-seltene-narse-gentherapie-sma"
      },
      "name" : "Beispiel NARSE Gentherapie bei SMA",
      "description" : "Beispiel einer durchgeführten Gentherapie bei Spinaler Muskelatrophie",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapie-durchgefuehrt"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-mii-exa-seltene-narse-stoffwechseltherapie-pompe.html"
      }],
      "reference" : {
        "reference" : "Procedure/mii-exa-seltene-narse-stoffwechseltherapie-pompe"
      },
      "name" : "Beispiel NARSE Stoffwechseltherapie bei Morbus Pompe",
      "description" : "Beispiel einer durchgeführten Enzymersatztherapie bei Morbus Pompe",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapie-durchgefuehrt"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-mii-exa-seltene-therapieempfehlung-physiotherapie-sma.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/mii-exa-seltene-therapieempfehlung-physiotherapie-sma"
      },
      "name" : "Beispiel Physiotherapie bei SMA",
      "description" : "Beispiel einer nicht-medikamentösen Therapieempfehlung für Physiotherapie bei Spinaler Muskelatrophie",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung-nicht-medikamentoes"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ResearchStudy"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ResearchStudy-mii-exa-seltene-register-euro-nmd.html"
      }],
      "reference" : {
        "reference" : "ResearchStudy/mii-exa-seltene-register-euro-nmd"
      },
      "name" : "Beispiel Register als ResearchStudy — ERN EURO-NMD",
      "description" : "Das Register des European Reference Network für neuromuskuläre Erkrankungen, als ResearchStudy geführt. Ein Register ist inhaltlich eine Beobachtungsstudie; das ist keine Verlegenheitslösung, sondern die Voraussetzung dafür, dass ResearchSubject.study überhaupt darauf zeigen kann.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Library"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Library-mii-exa-seltene-register-katalog-euro-nmd.html"
      }],
      "reference" : {
        "reference" : "Library/mii-exa-seltene-register-katalog-euro-nmd"
      },
      "name" : "Beispiel Register-Katalogeintrag (Library)",
      "description" : "Derselbe Registerbestand als Katalogeintrag nach dem Profil mii-pr-studie-register des Moduls Studie. Steht neben der ResearchStudy, nicht an ihrer Stelle — eine Library kann kein Ziel von ResearchSubject.study sein.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ResearchSubject"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ResearchSubject-mii-exa-seltene-registerteilnahme.html"
      }],
      "reference" : {
        "reference" : "ResearchSubject/mii-exa-seltene-registerteilnahme"
      },
      "name" : "Beispiel Registerteilnahme — ERN EURO-NMD",
      "description" : "Teilnahme des SMA-Kindes am EURO-NMD-Register. Die Kennung ist das registereigene Pseudonym, nicht die Patienten-ID des Standorts.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-registerteilnahme"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-seltene-bodymassindex.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-seltene-bodymassindex"
      },
      "name" : "Body Mass Index (BMI) Example",
      "description" : "Example of a Body Mass Index (BMI) observation for a patient.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-bodymassindex"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-seltene-bodymassindex.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-seltene-bodymassindex"
      },
      "name" : "Body Mass Index (BMI) of the patient",
      "description" : "Describes the Body Mass Index (BMI) of the patient.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-seltene-molgen-variant-brca1-pathogenic.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-seltene-molgen-variant-brca1-pathogenic"
      },
      "name" : "BRCA1 Pathogene Variante - MolGen",
      "description" : "Pathogene BRCA1-Variante",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DiagnosticReport"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "DiagnosticReport-mii-exa-seltene-molgen-brca-panel.html"
      }],
      "reference" : {
        "reference" : "DiagnosticReport/mii-exa-seltene-molgen-brca-panel"
      },
      "name" : "BRCA1/2 Panel - Diagnostische Implikation",
      "description" : "Hereditäres Karzinom-Panel",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DiagnosticReport"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "DiagnosticReport-mii-exa-seltene-molgen-cf-diagnostic.html"
      }],
      "reference" : {
        "reference" : "DiagnosticReport/mii-exa-seltene-molgen-cf-diagnostic"
      },
      "name" : "CF Diagnostische Implikation - MolGen",
      "description" : "Mukoviszidose genetischer Befund",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-seltene-molgen-cftr-heterozygous-carrier.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-seltene-molgen-cftr-heterozygous-carrier"
      },
      "name" : "CFTR F508del - heterozygoter Anlagetraeger",
      "description" : "Nur eine CFTR-Mutation nachweisbar; schliesst Mukoviszidose aus",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-seltene-molgen-variant-cftr-f508del-homozygous.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-seltene-molgen-variant-cftr-f508del-homozygous"
      },
      "name" : "CFTR F508del Homozygot - MolGen Variante",
      "description" : "Homozygote F508del Mutation bei Mukoviszidose",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-seltene-chronic-diarrhea.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-seltene-chronic-diarrhea"
      },
      "name" : "Chronische Diarrhoe - HPO-kodiert",
      "description" : "Chronische Durchfälle bei CF",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-seltene-consanguinity.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-seltene-consanguinity"
      },
      "name" : "Consanguinity - Eltern blutsverwandt",
      "description" : "Beispiel: Bei einem Indexpatienten mit Verdacht auf eine autosomal-rezessive seltene Erkrankung ist dokumentiert, dass die Eltern blutsverwandt sind (Cousins 1. Grades).",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-consanguinity"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DiagnosticReport"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "DiagnosticReport-mii-exa-seltene-molgen-diagnostic-dmd-duchenne.html"
      }],
      "reference" : {
        "reference" : "DiagnosticReport/mii-exa-seltene-molgen-diagnostic-dmd-duchenne"
      },
      "name" : "DMD Exon 45 - Diagnostische Implikation (Duchenne)",
      "description" : "Diagnostischer Bericht Duchenne-Muskeldystrophie",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-seltene-molgen-variant-dmd-deletion-exon45.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-seltene-molgen-variant-dmd-deletion-exon45"
      },
      "name" : "DMD Exon 45 Deletion - MolGen Variante",
      "description" : "Out-of-frame Deletion im DMD-Gen (Exon 45) — fuehrt zu Duchenne",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DiagnosticReport"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "DiagnosticReport-mii-exa-seltene-molgen-diagnostic-dmd.html"
      }],
      "reference" : {
        "reference" : "DiagnosticReport/mii-exa-seltene-molgen-diagnostic-dmd"
      },
      "name" : "DMD Exon 45-47 - Diagnostische Implikation (Becker)",
      "description" : "Diagnostischer Bericht: in-frame Deletion, Becker- statt Duchenne-Muskeldystrophie",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-seltene-molgen-variant-dmd-deletion-exon45-47.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-seltene-molgen-variant-dmd-deletion-exon45-47"
      },
      "name" : "DMD Exon 45-47 Deletion - MolGen Variante",
      "description" : "In-frame Deletion im DMD-Gen (Exons 45-47) — vereinbar mit Becker, nicht mit Duchenne",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-mii-exa-seltene-example-dmd-excluded-bmd-confirmed.html"
      }],
      "reference" : {
        "reference" : "Condition/mii-exa-seltene-example-dmd-excluded-bmd-confirmed"
      },
      "name" : "Duchenne ausgeschlossen - Becker bestätigt",
      "description" : "Duchenne-Muskeldystrophie ausgeschlossen, stattdessen Becker-Muskeldystrophie",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-genetic-diagnosis"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-mii-exa-seltene-example-dmd-genetic-diagnosis.html"
      }],
      "reference" : {
        "reference" : "Condition/mii-exa-seltene-example-dmd-genetic-diagnosis"
      },
      "name" : "Duchenne-Muskeldystrophie - Genetisch bestätigt",
      "description" : "Beispiel einer genetisch bestätigten Duchenne-Muskeldystrophie",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-genetic-diagnosis"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-seltene-observation-echo-av.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-seltene-observation-echo-av"
      },
      "name" : "Echokardiographie - Aortenklappeninsuffizienz",
      "description" : "Beurteilung der Aortenklappeninsuffizienz",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-seltene-observation-echo-aortic.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-seltene-observation-echo-aortic"
      },
      "name" : "Echokardiographie - Aortenwurzeldurchmesser",
      "description" : "Aortenwurzeldurchmesser in der Echokardiographie",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-seltene-observation-echo-mv.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-seltene-observation-echo-mv"
      },
      "name" : "Echokardiographie - Mitralklappeninsuffizienz",
      "description" : "Beurteilung der Mitralklappeninsuffizienz",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-mii-exa-seltene-example-eds-excluded-clinical.html"
      }],
      "reference" : {
        "reference" : "Condition/mii-exa-seltene-example-eds-excluded-clinical"
      },
      "name" : "Ehlers-Danlos-Syndrom - Ausgeschlossen",
      "description" : "Differentialdiagnose EDS ausgeschlossen",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "FamilyMemberHistory"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "FamilyMemberHistory-mii-exa-seltene-family-history-001.html"
      }],
      "reference" : {
        "reference" : "FamilyMemberHistory/mii-exa-seltene-family-history-001"
      },
      "name" : "Familienanamnese - Urgroßmutter mit Muskelerkrankung",
      "description" : "Urgroßmutter mit unbekannter Muskelerkrankung",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-familienanamnese"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-seltene-variant-fbn1-001.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-seltene-variant-fbn1-001"
      },
      "name" : "FBN1 Gen - Pathogene Mutation",
      "description" : "Pathogene FBN1-Mutation bei Marfan-Syndrom",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-seltene-failure-to-thrive.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-seltene-failure-to-thrive"
      },
      "name" : "Gedeihstörung - HPO-kodiert",
      "description" : "Mangelhafte Gewichtszunahme",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-seltene-beighton-score-low.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-seltene-beighton-score-low"
      },
      "name" : "Generalisierte Hypermobilitaet - ausgeschlossen",
      "description" : "Beighton-Score 2/9; generalisierte Gelenkhypermobilitaet ausgeschlossen",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-mii-exa-seltene-procedure-gentherapy-001.html"
      }],
      "reference" : {
        "reference" : "Procedure/mii-exa-seltene-procedure-gentherapy-001"
      },
      "name" : "Gentherapie Verabreichung",
      "description" : "Verabreichung des Gentherapeutikums für SMA",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-mii-exa-seltene-procedure-aortic-planned.html"
      }],
      "reference" : {
        "reference" : "Procedure/mii-exa-seltene-procedure-aortic-planned"
      },
      "name" : "Geplante Aortenwurzelersatz-Operation",
      "description" : "Geplante David-Operation (Valve-sparing root replacement)",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Encounter-mii-exa-seltene-encounter-surgery-planned.html"
      }],
      "reference" : {
        "reference" : "Encounter/mii-exa-seltene-encounter-surgery-planned"
      },
      "name" : "Geplante Herzchirurgie",
      "description" : "Geplanter stationärer Aufenthalt für Aortenwurzelersatz",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-mii-exa-seltene-example-brca1-genetic-diagnosis.html"
      }],
      "reference" : {
        "reference" : "Condition/mii-exa-seltene-example-brca1-genetic-diagnosis"
      },
      "name" : "Hereditäres Mamma- und Ovarialkarzinom-Syndrom",
      "description" : "Genetisch bestätigtes BRCA1-assoziiertes Karzinom-Syndrom",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-genetic-diagnosis"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-seltene-tall-stature.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-seltene-tall-stature"
      },
      "name" : "Hochwuchs - HPO-kodiert",
      "description" : "Pathologisch erhöhte Körpergröße",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-seltene-hpo-assessment-excluded.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-seltene-hpo-assessment-excluded"
      },
      "name" : "HPO Assessment - Excluded Phenotype",
      "description" : "Example of an explicitly excluded phenotype (arachnodactyly ruled out during Marfan syndrome workup).",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-seltene-hpo-assessment-severity.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-seltene-hpo-assessment-severity"
      },
      "name" : "HPO Assessment - Present with Severity",
      "description" : "Example of a phenotype with both status (present) and severity grading. Demonstrates HL7 Phenomics IG component pattern.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-seltene-hpo-assessment-change-status.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-seltene-hpo-assessment-change-status"
      },
      "name" : "HPO Assessment mit Änderungsstatus",
      "description" : "Beispiel einer HPO-Beobachtung mit dokumentiertem Änderungsstatus",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-seltene-hpo-presence-status.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-seltene-hpo-presence-status"
      },
      "name" : "HPO Phenotype Presence Status",
      "description" : "LOINC codes for indicating presence or absence of phenotypic features. Follows HL7 Phenomics IG pattern.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-seltene-hpo-phenotypic-observation-codes.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-seltene-hpo-phenotypic-observation-codes"
      },
      "name" : "HPO Phenotypic Observation Codes",
      "description" : "Human Phenotype Ontology codes for phenotypic observations",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-seltene-hpo-severity.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-seltene-hpo-severity"
      },
      "name" : "HPO Severity",
      "description" : "HPO codes for describing severity of phenotypic abnormalities. Follows HL7 Phenomics IG component pattern.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-seltene-hpo-assessment.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-seltene-hpo-assessment"
      },
      "name" : "HPO Symptom Observation Example",
      "description" : "Example of an HPO-based phenotypic observation for intellectual disability.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Encounter-mii-exa-seltene-encounter-genetic-consultation.html"
      }],
      "reference" : {
        "reference" : "Encounter/mii-exa-seltene-encounter-genetic-consultation"
      },
      "name" : "Humangenetische Beratung (generisch)",
      "description" : "Ambulante humangenetische Beratung des generischen Beispielpatienten",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-seltene-hypertelorism.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-seltene-hypertelorism"
      },
      "name" : "Hypertelorismus - HPO-kodiert",
      "description" : "Vergrößerter Augenabstand",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-seltene-hueftumfang.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-seltene-hueftumfang"
      },
      "name" : "Hüftumfang Beispiel",
      "description" : "Beispiel einer Hüftumfang-Messung bei einem Patienten mit seltener Erkrankung.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hueftumfang"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-seltene-icf-aktivitaet.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-seltene-icf-aktivitaet"
      },
      "name" : "ICF example — activities and participation (chapter d), capacity vs performance",
      "description" : "Eating in SMA type 1, and the reason chapter d takes two qualifiers rather than one. Without assistance the child cannot feed orally at all — capacity is a complete problem. With a gastrostomy in place, nutrition in daily life is only moderately impaired — performance is markedly better. The gap between the two IS the measured effect of the assistive device; a model with a single value would have had to discard one of the two numbers and would have said something false either way.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-icf-assessment"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-seltene-icf-koerperfunktion.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-seltene-icf-koerperfunktion"
      },
      "name" : "ICF example — body function (chapter b), one qualifier",
      "description" : "Muscle power functions in SMA type 1, graded as a complete problem. Chapter b takes exactly one qualifier; invariant mii-icf-1 rejects any other component here.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-icf-assessment"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-seltene-icf-koerperstruktur.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-seltene-icf-koerperstruktur"
      },
      "name" : "ICF example — body structure (chapter s), three qualifiers",
      "description" : "Spinal cord in SMA type 1: degeneration of the anterior horn cells. The only chapter that takes three qualifiers at once — extent, nature of the change and anatomical location. This is the case a single value[x] could never have carried, which is why the profile uses components.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-icf-assessment"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-seltene-icf-umweltfaktor.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-seltene-icf-umweltfaktor"
      },
      "name" : "ICF example — environmental factor (chapter e), facilitator",
      "description" : "Assistive products for mobility, graded as a substantial FACILITATOR. Environmental factors are the one chapter with a two-sided scale, and BfArM resolves it by putting the sign into the code itself: facilitators run +0 to +4, barriers .0 to .4. Invariant mii-icf-5 forbids grading the same factor as both at once.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-icf-assessment"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Encounter-mii-exa-seltene-encounter-cardiology.html"
      }],
      "reference" : {
        "reference" : "Encounter/mii-exa-seltene-encounter-cardiology"
      },
      "name" : "Kardiologische Erstvorstellung",
      "description" : "Ambulante kardiologische Erstvorstellung bei Thoraxschmerzen",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Encounter-mii-exa-seltene-encounter-cardiology-consultation.html"
      }],
      "reference" : {
        "reference" : "Encounter/mii-exa-seltene-encounter-cardiology-consultation"
      },
      "name" : "Kardiologische Vorstellung (generisch)",
      "description" : "Ambulante kardiologische Vorstellung des generischen Beispielpatienten",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-mii-exa-seltene-condition-cataract.html"
      }],
      "reference" : {
        "reference" : "Condition/mii-exa-seltene-condition-cataract"
      },
      "name" : "Katarakt bilateral",
      "description" : "Beidseitige Katarakt bei Marfan-Syndrom",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-seltene-symptom-cataract.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-seltene-symptom-cataract"
      },
      "name" : "Katarakt bilateral",
      "description" : "Beidseitige Katarakt als ophthalmologische Manifestation",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-mii-exa-seltene-procedure-cataract-surgery.html"
      }],
      "reference" : {
        "reference" : "Procedure/mii-exa-seltene-procedure-cataract-surgery"
      },
      "name" : "Katarakt-Operation",
      "description" : "Phakoemulsifikation mit Intraokularlinsenimplantation",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Encounter-mii-exa-seltene-encounter-cataract-surgery.html"
      }],
      "reference" : {
        "reference" : "Encounter/mii-exa-seltene-encounter-cataract-surgery"
      },
      "name" : "Katarakt-Operation Aufenthalt",
      "description" : "Tagesklinischer Aufenthalt für Katarakt-Operation",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ClinicalImpression"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ClinicalImpression-mii-exa-seltene-clinical-impression-erstvorstellung.html"
      }],
      "reference" : {
        "reference" : "ClinicalImpression/mii-exa-seltene-clinical-impression-erstvorstellung"
      },
      "name" : "Klinische Beurteilung - Erstvorstellung",
      "description" : "Initiale klinische Beurteilung bei Erstvorstellung im SMA-Zentrum",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-impression"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ClinicalImpression"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ClinicalImpression-mii-exa-seltene-clinical-impression-nachsorge.html"
      }],
      "reference" : {
        "reference" : "ClinicalImpression/mii-exa-seltene-clinical-impression-nachsorge"
      },
      "name" : "Klinische Beurteilung - Nachsorge",
      "description" : "Nachsorgeuntersuchung nach Gentherapie",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-impression"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ClinicalImpression"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ClinicalImpression-mii-exa-seltene-clinical-impression-seltene-assessment.html"
      }],
      "reference" : {
        "reference" : "ClinicalImpression/mii-exa-seltene-clinical-impression-seltene-assessment"
      },
      "name" : "Konsultation ZSE bei V.a. Marfan-Syndrom",
      "description" : "Konsultation im Zentrum für Seltene Erkrankungen mit kardiologischer Mitbeurteilung bei V.a. Marfan-Syndrom",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-impression"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-seltene-kopfumfang.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-seltene-kopfumfang"
      },
      "name" : "Kopfumfang Beispiel",
      "description" : "Beispiel einer Kopfumfang-Messung bei einem Patienten mit seltener Erkrankung.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-kopfumfang"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-seltene-observation-height-001.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-seltene-observation-height-001"
      },
      "name" : "Körpergröße - Hochwuchs",
      "description" : "Pathologisch erhöhte Körpergröße bei Marfan-Syndrom",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-seltene-lactate-normal.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-seltene-lactate-normal"
      },
      "name" : "Laktat - Normalbefund",
      "description" : "Laktat in Ruhe normwertig; spricht gegen metabolische Myopathie",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-seltene-lens-examination-normal.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-seltene-lens-examination-normal"
      },
      "name" : "Linsenluxation - ausgeschlossen",
      "description" : "Ectopia lentis spaltlampenmikroskopisch ausgeschlossen; Ghent-Kriterium nicht erfuellt",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-seltene-lens-dislocation.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-seltene-lens-dislocation"
      },
      "name" : "Linsenluxation - HPO-kodiert",
      "description" : "Ectopia lentis bei Marfan-Syndrom",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationStatement-mii-exa-seltene-medication-losartan.html"
      }],
      "reference" : {
        "reference" : "MedicationStatement/mii-exa-seltene-medication-losartan"
      },
      "name" : "Losartan Therapie",
      "description" : "Losartan zur Progressionshemmung der Aortenwurzeldilatation",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-seltene-lymphedema.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-seltene-lymphedema"
      },
      "name" : "Lymphödem - HPO-kodiert",
      "description" : "Peripheres Lymphödem",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-mii-exa-seltene-patient-marfan-001.html"
      }],
      "reference" : {
        "reference" : "Patient/mii-exa-seltene-patient-marfan-001"
      },
      "name" : "Marfan Patient - 19-jähriger Mann",
      "description" : "19-jähriger männlicher Patient mit bestätigtem Marfan-Syndrom",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-mii-exa-seltene-condition-marfan-genetic.html"
      }],
      "reference" : {
        "reference" : "Condition/mii-exa-seltene-condition-marfan-genetic"
      },
      "name" : "Marfan-Syndrom - Genetische Diagnose",
      "description" : "Genetisch bestätigtes Marfan-Syndrom mit FBN1-Mutation",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-genetic-diagnosis"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-mii-exa-seltene-example-marfan-excluded-clinical.html"
      }],
      "reference" : {
        "reference" : "Condition/mii-exa-seltene-example-marfan-excluded-clinical"
      },
      "name" : "Marfan-Syndrom - Klinisch ausgeschlossen",
      "description" : "Beispiel einer klinisch ausgeschlossenen Marfan-Diagnose",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-mii-exa-seltene-example-marfan-clinical-diagnosis.html"
      }],
      "reference" : {
        "reference" : "Condition/mii-exa-seltene-example-marfan-clinical-diagnosis"
      },
      "name" : "Marfan-Syndrom - Klinische Diagnose",
      "description" : "Beispiel einer klinischen Diagnose des Marfan-Syndroms basierend auf phänotypischen Merkmalen",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-mii-exa-seltene-condition-marfan-clinical.html"
      }],
      "reference" : {
        "reference" : "Condition/mii-exa-seltene-condition-marfan-clinical"
      },
      "name" : "Marfan-Syndrom - Klinische Diagnose",
      "description" : "Klinisch bestätigtes Marfan-Syndrom",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-mii-exa-seltene-condition-marfan-suspected.html"
      }],
      "reference" : {
        "reference" : "Condition/mii-exa-seltene-condition-marfan-suspected"
      },
      "name" : "Marfan-Syndrom - Verdacht",
      "description" : "Verdacht auf Marfan-Syndrom",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-mii-exa-seltene-bundle-marfan-complete.html"
      }],
      "reference" : {
        "reference" : "Bundle/mii-exa-seltene-bundle-marfan-complete"
      },
      "name" : "Marfan-Syndrom Fallbeispiel - Vollständiges Transaction Bundle",
      "description" : "Transaction Bundle mit allen Ressourcen für den Marfan-Syndrom Fall",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-mii-exa-seltene-example-metabolic-myopathy-excluded.html"
      }],
      "reference" : {
        "reference" : "Condition/mii-exa-seltene-example-metabolic-myopathy-excluded"
      },
      "name" : "Metabolische Myopathie - Ausgeschlossen",
      "description" : "Metabolische Myopathie als Differentialdiagnose ausgeschlossen",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CapabilityStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CapabilityStatement-mii-cps-seltene-capabilitystatement.html"
      }],
      "reference" : {
        "reference" : "CapabilityStatement/mii-cps-seltene-capabilitystatement"
      },
      "name" : "MII CPS Seltene Erkrankungen CapabilityStatement",
      "description" : "Das vorliegende CapabilityStatement beschreibt alle verpflichtenden Interaktionen die ein konformes System unterstützen muss, um das Modul Seltene Erkrankungen der Medizininformatik Initiative zu implementieren.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-seltene-empfehlung-status-begruendung.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-seltene-empfehlung-status-begruendung"
      },
      "name" : "MII CS SE Empfehlung Status Begründung",
      "description" : "Begründung bei fehlender Empfehlung",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-seltene-icf-beurteilungsmerkmal.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-seltene-icf-beurteilungsmerkmal"
      },
      "name" : "MII CS SE ICF Qualifier Kind",
      "description" : "Names which ICF qualifier a component carries. This is a slot name, not a scale — the scales themselves are the seven BfArM code systems. Defined locally because neither the ICF nor BfArM publishes identifiers for the qualifier positions, and because capacity and performance share one scale and can only be told apart here.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-seltene-therapieempfehlung-strategie.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-seltene-therapieempfehlung-strategie"
      },
      "name" : "MII CS SE Therapieempfehlung Strategie",
      "description" : "Strategietypen für Therapieempfehlungen bei seltenen Erkrankungen, abgeleitet aus MV GenomSeq",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-seltene-therapieempfehlung-typ.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-seltene-therapieempfehlung-typ"
      },
      "name" : "MII CS SE Therapieempfehlung Typ",
      "description" : "Therapietyp (kausal vs. symptomatisch) für Therapieempfehlungen bei seltenen Erkrankungen, abgeleitet aus MV GenomSeq",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-seltene-hpo-change-status.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-seltene-hpo-change-status"
      },
      "name" : "MII CS Seltene Erkrankungen HPO Change Status",
      "description" : "CodeSystem zur Dokumentation von Änderungen bei HPO-Phänotypen über Zeit. Eigene Codes des Moduls: HPO führt für diesen Zweck nichts. Sein Zweig Clinical course (HP:0031797) beschreibt den Verlauf der Krankheit — Onset, Pace of progression, Temporal pattern, Disease remission —, nicht die Veränderung eines einzelnen Phänotyps zwischen zwei Erhebungen. Vier der fünf Konzepte haben SNOMED-CT-Entsprechungen, die je Code unten angegeben sind; für newly-added führt SNOMED kein generisches Konzept.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-seltene-narse-therapietyp.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-seltene-narse-therapietyp"
      },
      "name" : "MII CS Seltene Erkrankungen NARSE Therapietyp",
      "description" : "CodeSystem für NARSE-spezifische Therapietypen bei Seltenen Erkrankungen",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-ex-seltene-empfehlung-prioritaet.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-ex-seltene-empfehlung-prioritaet"
      },
      "name" : "MII EX SE Empfehlung Priorität",
      "description" : "Priorität der (einzelnen) Empfehlung",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-ex-seltene-empfehlung-publikation.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-ex-seltene-empfehlung-publikation"
      },
      "name" : "MII EX SE Empfehlung Publikation",
      "description" : "Verweis auf Publikation der (einzelnen) Empfehlung",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-ex-seltene-penetrance.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-ex-seltene-penetrance"
      },
      "name" : "MII EX SE Penetrance",
      "description" : "Extension to capture the penetrance of genetic variants associated with a rare disease",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-ex-seltene-register.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-ex-seltene-register"
      },
      "name" : "MII EX SE Register",
      "description" : "Optionaler Verweis auf den Library-Katalogeintrag des Registers nach dem Profil mii-pr-studie-register des MII KDS Moduls Studie. Der verbindliche Registerbezug laeuft ueber ResearchSubject.study, das in R4 zwingend auf eine ResearchStudy zeigt.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-mii-exa-seltene-patient.html"
      }],
      "reference" : {
        "reference" : "Patient/mii-exa-seltene-patient"
      },
      "name" : "MII EXA SE Beispielpatient",
      "description" : "Generischer Beispielpatient des Moduls Seltene Erkrankungen, referenziert von den Beispielen, die keinen eigenen Fallbezug haben. Fuer die ausgearbeiteten Fallbeispiele siehe mii-exa-seltene-patient-sma-001 und mii-exa-seltene-patient-marfan-001.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-mii-exa-seltene-symptom-condition.html"
      }],
      "reference" : {
        "reference" : "Condition/mii-exa-seltene-symptom-condition"
      },
      "name" : "MII Example SE Symptom Condition",
      "description" : "Example of a symptom condition in the context of rare diseases using HPO codes",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-symptom-condition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-lm-seltene.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-lm-seltene"
      },
      "name" : "MII LM SE",
      "description" : "MII LogicalModel Modul Seltene Erkraknungen",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-seltene-blutgruppe.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-seltene-blutgruppe"
      },
      "name" : "MII PR SE Blutgruppe",
      "description" : "Observation-Profil für die Erfassung der Blutgruppe (AB0 und Rhesusfaktor) im Kontext seltener Erkrankungen",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-seltene-clinical-diagnosis.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-seltene-clinical-diagnosis"
      },
      "name" : "MII PR SE Clinical Diagnosis",
      "description" : "Profile for clinical diagnosis of rare diseases with HPO phenotype codes. This profile is used for clinically diagnosed rare diseases based on phenotypic presentation.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-seltene-consanguinity.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-seltene-consanguinity"
      },
      "name" : "MII PR SE Consanguinity",
      "description" : "Observation-Profil zur Erfassung der Blutsverwandtschaft der Eltern (Consanguinity) im Kontext seltener Erkrankungen. Insbesondere für autosomal-rezessive genetisch bedingte Erkrankungen ist die Angabe, ob die Eltern blutsverwandt sind, ein relevanter Aspekt der Familienanamnese. Abgeleitet aus RD-CDM v2.0.0 (Element 6.4.4) bzw. dem JARDIN-MDS-Entwurf.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-seltene-familienanamnese.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-seltene-familienanamnese"
      },
      "name" : "MII PR SE Familienanamnese",
      "description" : "Dieses Profil beschreibt die Familienanamnese eines Patienten im Kontext von seltenen Erkrankungen, basierend auf dem MolGen Familienanamnese Profil. Für jedes Familienmitglied wird eine separate FamilyMemberHistory-Ressource erstellt. Das Profil unterstützt die Dokumentation von Todesfällen durch seltene Erkrankungen über condition.contributedToDeath. Für den Indexpatienten selbst kann relationship.coding[snomed] = 116154003 | Patient | verwendet werden, um den Tod des Patienten durch eine seltene Erkrankung einheitlich zu dokumentieren.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-seltene-geburtsgewicht.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-seltene-geburtsgewicht"
      },
      "name" : "MII PR SE Geburtsgewicht",
      "description" : "Gemessenes Geburtsgewicht. Bei seltenen Erkrankungen ein Ausgangswert für die Beurteilung von Gedeihstörungen, Makrosomie und intrauteriner Wachstumsrestriktion.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-seltene-geburtslaenge.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-seltene-geburtslaenge"
      },
      "name" : "MII PR SE Geburtslänge",
      "description" : "Gemessene Körperlänge bei Geburt. Zusammen mit Geburtsgewicht und Kopfumfang der anthropometrische Ausgangsbefund, gegen den spätere Wachstumsverläufe bewertet werden.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-seltene-genetic-diagnosis.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-seltene-genetic-diagnosis"
      },
      "name" : "MII PR SE Genetic Diagnosis",
      "description" : "Profile for genetically confirmed diagnosis of rare diseases with OMIM codes and links to MolGen variant/diagnostic implication resources. This profile is used when a rare disease diagnosis has been confirmed through genetic testing.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-seltene-gestationsalter.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-seltene-gestationsalter"
      },
      "name" : "MII PR SE Gestationsalter bei Geburt",
      "description" : "Gestationsalter bei Geburt (Schwangerschaftsdauer bis zur Entbindung). Bei seltenen Erkrankungen relevant, weil Frühgeburtlichkeit sowohl Folge einer Grunderkrankung als auch Störgröße bei der Bewertung von Wachstums- und Entwicklungsparametern sein kann.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-seltene-hueftumfang.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-seltene-hueftumfang"
      },
      "name" : "MII PR SE Hüftumfang",
      "description" : "Profil zur Dokumentation des Hüftumfangs (maximale Gesäßprotuberanz) eines Patienten. Relevant für seltene Erkrankungen mit Auswirkungen auf die Körperproportionen, metabolische Erkrankungen oder Skelettdysplasien.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-seltene-icf-assessment.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-seltene-icf-assessment"
      },
      "name" : "MII PR SE ICF Assessment",
      "description" : "Observation profile grading a single ICF category for a patient, as required by the JARDIN MDS draft and the ERDRI-CDS. Observation.code carries the ICF category; the WHO qualifiers are carried as components, because body structures take three of them and activities/participation take two (capacity and performance).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-seltene-kopfumfang.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-seltene-kopfumfang"
      },
      "name" : "MII PR SE Kopfumfang",
      "description" : "Profil zur Dokumentation des Kopfumfangs (okzipital-frontal) eines Patienten. Besonders relevant bei seltenen Erkrankungen mit Auswirkungen auf das Schädelwachstum, z.B. Skelettdysplasien, neurologische Erkrankungen. Erbt vom MII ICU Kopfumfang-Profil.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-seltene-registerteilnahme.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-seltene-registerteilnahme"
      },
      "name" : "MII PR SE Registerteilnahme",
      "description" : "Teilnahme einer Person an einem Register für seltene Erkrankungen, insbesondere an einem Register eines European Reference Network (ERN). Gedacht für die Dokumentation aus zweiter Hand im Versorgungskontext: festgehalten wird, dass die Person teilnimmt. Nah am Probanden-Profil des MII KDS Moduls Studie, aber bewusst nicht davon abgeleitet, weil dessen Pflichtangabe consent den Sekundärfall ausschließt.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-seltene-studieneinschluss-anfrage.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-seltene-studieneinschluss-anfrage"
      },
      "name" : "MII PR SE Studieneinschluss Anfrage",
      "description" : "Anfrage zum Studieneinschluss",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-seltene-taillenumfang.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-seltene-taillenumfang"
      },
      "name" : "MII PR SE Taillenumfang",
      "description" : "Profil zur Dokumentation des Taillenumfangs (Bauchumfang auf Nabelhöhe) eines Patienten. Relevant für seltene Erkrankungen mit metabolischen Komponenten oder Skelettdysplasien.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-seltene-therapieempfehlung-kombination.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-seltene-therapieempfehlung-kombination"
      },
      "name" : "MII PR SE Therapieempfehlung Kombinationstherapie",
      "description" : "Therapieempfehlung für eine medikamentöse Kombinationstherapie",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-seltene-therapieempfehlung-nicht-medikamentoes.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-seltene-therapieempfehlung-nicht-medikamentoes"
      },
      "name" : "MII PR SE Therapieempfehlung Nicht-Medikamentös",
      "description" : "Therapieempfehlung für nicht-medikamentöse Interventionen bei seltenen Erkrankungen (z.B. Ernährungstherapie, Gentherapie, Prophylaxe, Früherkennung)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-seltene-therapieempfehlung.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-seltene-therapieempfehlung"
      },
      "name" : "MII PR SE Therapieempfehlung Systemische Therapie",
      "description" : "Therapieempfehlung für eine medikamentöse Systemische Therapie",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-seltene-therapieplan.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-seltene-therapieplan"
      },
      "name" : "MII PR SE Therapieplan",
      "description" : "Therapieplan",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-seltene-therapie-durchgefuehrt.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-seltene-therapie-durchgefuehrt"
      },
      "name" : "MII PR Seltene Erkrankungen Therapie Durchgeführt",
      "description" : "Minimales Profil zur Dokumentation durchgeführter Therapien bei Seltenen Erkrankungen gemäß NARSE-Klassifikation. Dieses Profil erfasst Therapien unabhängig vom Durchführungsort (ambulant, stationär, außerhalb des Krankenhauses).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-seltene-clinical-impression.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-seltene-clinical-impression"
      },
      "name" : "MII Profile SE Clinical Impression",
      "description" : "Profile for clinical impressions in the context of rare diseases. This profile captures clinical assessments and suspected diagnoses based on phenotypic findings and symptoms.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-seltene-hpo-assessment.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-seltene-hpo-assessment"
      },
      "name" : "MII Profile SE HPO Assessment",
      "description" : "Profile for HPO-based phenotypic observations in the context of rare diseases. This profile uses the Human Phenotype Ontology (HPO) to describe clinical symptoms and phenotypic abnormalities.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-seltene-symptom-condition.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-seltene-symptom-condition"
      },
      "name" : "MII Profile SE Symptom Condition",
      "description" : "Profile for symptom-based conditions in the context of rare diseases. This profile captures symptomatic conditions with temporal characteristics, complementing the HPO Assessment Observation profile.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-seltene-blutgruppe.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-seltene-blutgruppe"
      },
      "name" : "MII VS SE Blutgruppe",
      "description" : "ValueSet für Blutgruppen (AB0 und Rhesusfaktor) basierend auf LOINC Answer List für 882-1",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-seltene-clinical-diagnosis-category.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-seltene-clinical-diagnosis-category"
      },
      "name" : "MII VS SE Clinical Diagnosis Category (retired)",
      "description" : "RETIRED. Nicht verwenden. Das ValueSet war zur Kategorisierung klinischer Diagnosen gedacht, beantwortet aber die falsche Frage: Condition.category bezeichnet in FHIR die Rolle der Condition im Datensatz, nicht die Art der Krankheit. Die Krankheitsart gehoert in Condition.code.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-seltene-empfehlung-status-begruendung.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-seltene-empfehlung-status-begruendung"
      },
      "name" : "MII VS SE Empfehlung Status Begründung",
      "description" : "ValueSet für Begründung bei fehlender Empfehlung",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-seltene-genetic-basis.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-seltene-genetic-basis"
      },
      "name" : "MII VS SE Genetic Basis (retired)",
      "description" : "RETIRED. Nicht verwenden. Acht der neun enthaltenen SNOMED-Codes bezeichnen etwas anderes als ihr Display behauptet oder existieren nicht; das ValueSet muss neu erstellt werden.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-seltene-hpo-age-of-onset.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-seltene-hpo-age-of-onset"
      },
      "name" : "MII VS SE HPO Age of Onset",
      "description" : "Value set containing HPO terms for age of onset of diseases",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-seltene-hpo-inheritance-pattern.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-seltene-hpo-inheritance-pattern"
      },
      "name" : "MII VS SE HPO Inheritance Pattern",
      "description" : "Value set containing HPO terms for modes of inheritance",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-seltene-icf.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-seltene-icf"
      },
      "name" : "MII VS SE ICF Categories",
      "description" : "All categories of the WHO International Classification of Functioning, Disability and Health. Defined intensionally over the whole classification rather than enumerated: which categories are relevant depends entirely on the disease, and any curated subset would be wrong for the next rare disease. German display text comes from the BfArM language supplement, so the value set does not need a German twin.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-seltene-icf-beurteilungsmerkmal.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-seltene-icf-beurteilungsmerkmal"
      },
      "name" : "MII VS SE ICF Qualifier Kind",
      "description" : "All qualifier kinds usable as a component code in the ICF assessment profile.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-seltene-penetrance.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-seltene-penetrance"
      },
      "name" : "MII VS SE Penetrance",
      "description" : "Value set for qualitative descriptions of genetic penetrance, drawn from the HPO branch Inheritance qualifier (HP:0034335). Note that the graded terms (high/moderate/low penetrance) are subtypes of incomplete penetrance, not alternatives to complete penetrance.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-seltene-therapieempfehlung-strategie.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-seltene-therapieempfehlung-strategie"
      },
      "name" : "MII VS SE Therapieempfehlung Strategie",
      "description" : "ValueSet für Strategietypen von Therapieempfehlungen bei seltenen Erkrankungen (Modellvorhaben GenomSeq)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-seltene-therapieempfehlung-strategie-medikamentoes.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-seltene-therapieempfehlung-strategie-medikamentoes"
      },
      "name" : "MII VS SE Therapieempfehlung Strategie - Medikamentös",
      "description" : "ValueSet für medikamentöse Therapiestrategien (für MedicationRequest Profile) - Verwendet für MedicationRequest-basierte Therapieempfehlungen im Kontext Modellvorhaben GenomSeq",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-seltene-therapieempfehlung-strategie-nicht-medikamentoes.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-seltene-therapieempfehlung-strategie-nicht-medikamentoes"
      },
      "name" : "MII VS SE Therapieempfehlung Strategie - Nicht-Medikamentös",
      "description" : "ValueSet für nicht-medikamentöse Therapiestrategien (für ServiceRequest Profile) - Verwendet für ServiceRequest-basierte Therapieempfehlungen im Kontext Modellvorhaben GenomSeq",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-seltene-therapieempfehlung-typ.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-seltene-therapieempfehlung-typ"
      },
      "name" : "MII VS SE Therapieempfehlung Typ",
      "description" : "ValueSet für Therapietypen (kausal/symptomatisch) bei seltenen Erkrankungen (Modellvorhaben GenomSeq)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-seltene-consanguinity.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-seltene-consanguinity"
      },
      "name" : "MII VS Seltene Erkrankungen Consanguinity",
      "description" : "ValueSet zur Angabe der Blutsverwandtschaft der Eltern (Consanguinity): Ja / Nein / Unbekannt / Nicht erfasst (SNOMED CT), entsprechend dem Consanguinity Value Set aus RD-CDM v2.0.0.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-seltene-hpo-change-status.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-seltene-hpo-change-status"
      },
      "name" : "MII VS Seltene Erkrankungen HPO Change Status",
      "description" : "ValueSet für Änderungsstatus von HPO-Phänotypen gemäß Modellvorhaben Genomsequenzierung",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-seltene-narse-therapietyp.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-seltene-narse-therapietyp"
      },
      "name" : "MII VS Seltene Erkrankungen NARSE Therapietyp",
      "description" : "ValueSet für NARSE-spezifische Therapietypen bei Seltenen Erkrankungen",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-seltene-nbs-acylcarnitine-dbs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-seltene-nbs-acylcarnitine-dbs"
      },
      "name" : "MII VS Seltene Erkrankungen NBS Acylcarnitine (Trockenblut)",
      "description" : "Acylcarnitin- und Carnitin-Analyte in Trockenblut (dried blood spot) — die Messgrößen des MS/MS-Acylcarnitinprofils im Neugeborenenscreening (Fettsäureoxidationsstörungen, Organoazidopathien, Carnitinzyklusdefekte). Abgeleitet aus der LOINC-SNOMED-Ontologie und deshalb NICHT vollständig gegenüber LOINC: enthalten ist der nach SNOMED gemappte Teil. Für die lückenlose Menge siehe mii-vs-seltene-nbs-dbs-all.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-seltene-nbs-dbs-all.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-seltene-nbs-dbs-all"
      },
      "name" : "MII VS Seltene Erkrankungen NBS alle Trockenblut-Analyte (LOINC)",
      "description" : "Alle LOINC-Codes, deren Untersuchungsmaterial Trockenblut (dried blood spot) ist — intensional über die LOINC-Eigenschaft SYSTEM definiert und damit vollständig. Enthält Analyte, Quotienten, Panels und Interpretationscodes nebeneinander sowie Analytik ausserhalb des Neugeborenenscreenings; für klinisch abgegrenzte Teilmengen dienen die gruppierten ValueSets mii-vs-seltene-nbs-*-dbs.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-seltene-nbs-aminoacid-dbs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-seltene-nbs-aminoacid-dbs"
      },
      "name" : "MII VS Seltene Erkrankungen NBS Aminosäuren (Trockenblut)",
      "description" : "Aminosäure-Analyte in Trockenblut — die Messgrößen des MS/MS-Aminosäureprofils im Neugeborenenscreening (Phenylketonurie, Ahornsirupkrankheit, Homocystinurie, Tyrosinämie, Harnstoffzyklusdefekte). Abgeleitet aus der LOINC-SNOMED-Ontologie und deshalb NICHT vollständig gegenüber LOINC; für die lückenlose Menge siehe mii-vs-seltene-nbs-dbs-all.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-seltene-nbs-enzyme-activity-dbs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-seltene-nbs-enzyme-activity-dbs"
      },
      "name" : "MII VS Seltene Erkrankungen NBS Enzymaktivitäten (Trockenblut)",
      "description" : "Enzymaktivitäten (katalytische Konzentration), die in Trockenblut bestimmt werden — u. a. Biotinidase und Galaktose-Enzyme des deutschen Neugeborenenscreenings sowie die Enzyme lysosomaler Speicherkrankheiten, die international gescreent werden.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-seltene-nbs-hemoglobin-dbs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-seltene-nbs-hemoglobin-dbs"
      },
      "name" : "MII VS Seltene Erkrankungen NBS Hämoglobin-Fraktionen (Trockenblut)",
      "description" : "Hämoglobin-Fraktionen in Trockenblut, bezogen auf das Gesamthämoglobin — die Messgrößen des Screenings auf Sichelzellkrankheit und weitere Hämoglobinopathien. Abgeleitet aus der LOINC-SNOMED-Ontologie und deshalb deutlich unvollständig gegenüber LOINC (rund ein Drittel der DBS-Hämoglobin-Codes); für die lückenlose Menge siehe mii-vs-seltene-nbs-dbs-all.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-seltene-nbs-target-analyte.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-seltene-nbs-target-analyte"
      },
      "name" : "MII VS Seltene Erkrankungen NBS Leitanalyten der Zielkrankheiten",
      "description" : "Leitanalyten der Zielkrankheiten des deutschen Neugeborenenscreenings nach G-BA Kinder-Richtlinie § 17 Abs. 1 (20 Zielkrankheiten) und § 23 ff. (Mukoviszidose). Je Zielkrankheit der Analyt, über den sie im Screening erkannt wird.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-seltene-nbs-ratio-dbs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-seltene-nbs-ratio-dbs"
      },
      "name" : "MII VS Seltene Erkrankungen NBS Quotienten (Trockenblut)",
      "description" : "Diagnostische Quotienten aus Trockenblut-Analyten. Im Neugeborenenscreening tragen die Verhältnisse (z. B. C3/C2, Phe/Tyr) einen großen Teil der diagnostischen Trennschärfe, weil sie von der Probenqualität weniger abhängen als Einzelwerte.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-seltene-symptom-change-status-combined.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-seltene-symptom-change-status-combined"
      },
      "name" : "MII VS Seltene Erkrankungen Symptom Change Status (Combined)",
      "description" : "ValueSet zur Dokumentation von Änderungen bei Symptomen/Phänotypen über Zeit. Kombiniert MVGenomSeq-spezifische Codes mit SNOMED CT-Codes für internationale Interoperabilität.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "FamilyMemberHistory"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "FamilyMemberHistory-mii-exa-seltene-familienanamnese.html"
      }],
      "reference" : {
        "reference" : "FamilyMemberHistory/mii-exa-seltene-familienanamnese"
      },
      "name" : "mii-exa-seltene-familienanamnese",
      "description" : "Example Patient Family Anamnesis",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-familienanamnese"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Parameters"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Parameters-mii-param-seltene-manifest.html"
      }],
      "reference" : {
        "reference" : "Parameters/mii-param-seltene-manifest"
      },
      "name" : "mii-param-seltene-manifest",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-ex-seltene-von-se-betroffen.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-ex-seltene-von-se-betroffen"
      },
      "name" : "MII_EX_Seltene_VonSEBetroffen",
      "description" : "Wird in der MII Modul SE Familienanamnese genutzt um zu bestimmen ob ein Familienmitglied an der gleichen SE erkrankt ist.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-seltene-symptom-mitral-regurg.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-seltene-symptom-mitral-regurg"
      },
      "name" : "Mitralklappeninsuffizienz",
      "description" : "Milde Mitralklappeninsuffizienz Grad I",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-mii-exa-seltene-example-cf-genetic.html"
      }],
      "reference" : {
        "reference" : "Condition/mii-exa-seltene-example-cf-genetic"
      },
      "name" : "Mukoviszidose - Genetisch bestätigt",
      "description" : "Genetisch bestätigte Mukoviszidose",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-genetic-diagnosis"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-mii-exa-seltene-example-cf-clinical.html"
      }],
      "reference" : {
        "reference" : "Condition/mii-exa-seltene-example-cf-clinical"
      },
      "name" : "Mukoviszidose - Klinischer Verdacht",
      "description" : "Initiale klinische Verdachtsdiagnose Mukoviszidose",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-mii-exa-seltene-example-cf-excluded-after-screening.html"
      }],
      "reference" : {
        "reference" : "Condition/mii-exa-seltene-example-cf-excluded-after-screening"
      },
      "name" : "Mukoviszidose - Nach positivem Screening ausgeschlossen",
      "description" : "CF nach auffälligem Neugeborenenscreening genetisch ausgeschlossen",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-genetic-diagnosis"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DiagnosticReport"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "DiagnosticReport-mii-exa-seltene-muscle-biopsy-normal.html"
      }],
      "reference" : {
        "reference" : "DiagnosticReport/mii-exa-seltene-muscle-biopsy-normal"
      },
      "name" : "Muskelbiopsie - Normalbefund",
      "description" : "Muskelbiopsie ohne Hinweis auf mitochondriale Pathologie",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Encounter-mii-exa-seltene-encounter-screening-001.html"
      }],
      "reference" : {
        "reference" : "Encounter/mii-exa-seltene-encounter-screening-001"
      },
      "name" : "Neugeborenenscreening",
      "description" : "Neugeborenenscreening mit SMA-Verdacht",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-mii-exa-seltene-example-noonan-clinical-diagnosis.html"
      }],
      "reference" : {
        "reference" : "Condition/mii-exa-seltene-example-noonan-clinical-diagnosis"
      },
      "name" : "Noonan-Syndrom - Klinische Diagnose",
      "description" : "Beispiel einer klinischen Diagnose des Noonan-Syndroms",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-seltene-molgen-variant-pah-pku.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-seltene-molgen-variant-pah-pku"
      },
      "name" : "PAH c.1222C>T - MolGen Variante",
      "description" : "Pathogene PAH-Variante p.Arg408Trp bei Phenylketonurie",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-mii-exa-seltene-condition-pku-diagnosis.html"
      }],
      "reference" : {
        "reference" : "Condition/mii-exa-seltene-condition-pku-diagnosis"
      },
      "name" : "Phenylketonurie - Genetische Diagnose",
      "description" : "Genetisch bestätigte Phenylketonurie (PKU)",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-genetic-diagnosis"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-seltene-recurrent-respiratory-infections.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-seltene-recurrent-respiratory-infections"
      },
      "name" : "Rezidivierende Atemwegsinfekte - HPO-kodiert",
      "description" : "Häufige respiratorische Infektionen bei CF",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-mii-exa-seltene-example-sma-excluded-genetic.html"
      }],
      "reference" : {
        "reference" : "Condition/mii-exa-seltene-example-sma-excluded-genetic"
      },
      "name" : "SMA - Genetisch ausgeschlossen",
      "description" : "Spinale Muskelatrophie genetisch ausgeschlossen",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-genetic-diagnosis"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DiagnosticReport"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "DiagnosticReport-mii-exa-seltene-molgen-diagnostic-implication-sma.html"
      }],
      "reference" : {
        "reference" : "DiagnosticReport/mii-exa-seltene-molgen-diagnostic-implication-sma"
      },
      "name" : "SMA Diagnostische Implikation - MolGen",
      "description" : "Diagnostischer Bericht zur SMA-Genetik",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-mii-exa-seltene-bundle-sma-complete.html"
      }],
      "reference" : {
        "reference" : "Bundle/mii-exa-seltene-bundle-sma-complete"
      },
      "name" : "SMA Fallbeispiel - Vollständiges Transaction Bundle",
      "description" : "Transaction Bundle mit allen Ressourcen für den SMA Fall inkl. Diagnoseverlauf",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DiagnosticReport"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "DiagnosticReport-mii-exa-seltene-molgen-sma-negative.html"
      }],
      "reference" : {
        "reference" : "DiagnosticReport/mii-exa-seltene-molgen-sma-negative"
      },
      "name" : "SMA Genetik - Negativbefund",
      "description" : "Genetischer Test schließt SMA aus",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-mii-exa-seltene-condition-sma-genetic.html"
      }],
      "reference" : {
        "reference" : "Condition/mii-exa-seltene-condition-sma-genetic"
      },
      "name" : "SMA Genetische Diagnose",
      "description" : "SMA Typ 1, molekulargenetisch bestätigt durch SMN1-Deletion",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-genetic-diagnosis"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-mii-exa-seltene-condition-sma-clinical.html"
      }],
      "reference" : {
        "reference" : "Condition/mii-exa-seltene-condition-sma-clinical"
      },
      "name" : "SMA Klinische Diagnose",
      "description" : "Klinische Diagnose SMA Typ 1 bei Erstvorstellung",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-seltene-observation-sma-screening.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-seltene-observation-sma-screening"
      },
      "name" : "SMA Neugeborenenscreening Ergebnis",
      "description" : "Positives SMA-Screening beim Neugeborenenscreening",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-mii-exa-seltene-patient-sma-001.html"
      }],
      "reference" : {
        "reference" : "Patient/mii-exa-seltene-patient-sma-001"
      },
      "name" : "SMA Patient - Neugeborenes Mädchen",
      "description" : "Neugeborenes Mädchen mit bestätigter SMA Typ 1",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-mii-exa-seltene-example-sma-genetic-diagnosis.html"
      }],
      "reference" : {
        "reference" : "Condition/mii-exa-seltene-example-sma-genetic-diagnosis"
      },
      "name" : "SMA Typ 1 - Genetisch bestätigte Diagnose",
      "description" : "Beispiel einer genetisch bestätigten Diagnose der spinalen Muskelatrophie Typ 1",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-genetic-diagnosis"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-mii-exa-seltene-condition-sma-suspected.html"
      }],
      "reference" : {
        "reference" : "Condition/mii-exa-seltene-condition-sma-suspected"
      },
      "name" : "SMA Verdacht - Neugeborenenscreening",
      "description" : "Verdacht auf SMA beim Neugeborenenscreening",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-seltene-molgen-smn1-normal-copies.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-seltene-molgen-smn1-normal-copies"
      },
      "name" : "SMN1 - Normale Kopienanzahl",
      "description" : "2 Kopien SMN1 - schließt SMA aus",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-seltene-variant-smn1-001.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-seltene-variant-smn1-001"
      },
      "name" : "SMN1 Gen - Homozygote Deletion",
      "description" : "0 Kopien des SMN1-Gens nachgewiesen",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-seltene-molgen-variant-smn1-deletion.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-seltene-molgen-variant-smn1-deletion"
      },
      "name" : "SMN1 Gen Deletion - MolGen Variante",
      "description" : "Homozygote Deletion des SMN1-Gens bei SMA",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-seltene-variant-smn2-001.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-seltene-variant-smn2-001"
      },
      "name" : "SMN2 Gen - Kopienanzahl",
      "description" : "2 Kopien des SMN2-Gens nachgewiesen",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Encounter-mii-exa-seltene-encounter-stationaer-001.html"
      }],
      "reference" : {
        "reference" : "Encounter/mii-exa-seltene-encounter-stationaer-001"
      },
      "name" : "Stationärer Aufenthalt zur Gentherapie",
      "description" : "Stationäre Aufnahme für Gentherapie",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-mii-exa-seltene-studieneinschluss-anfrage.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/mii-exa-seltene-studieneinschluss-anfrage"
      },
      "name" : "Studieneinschlussempfehlung",
      "description" : "Empfehlung, den Patienten fuer eine Studie zu evaluieren",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-studieneinschluss-anfrage"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-seltene-syndrome-category.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-seltene-syndrome-category"
      },
      "name" : "Syndrome Category Value Set",
      "description" : "Categories for classifying syndrome types in rare diseases",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-seltene-taillenumfang.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-seltene-taillenumfang"
      },
      "name" : "Taillenumfang Beispiel",
      "description" : "Beispiel einer Taillenumfang-Messung bei einem Patienten mit seltener Erkrankung.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-taillenumfang"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CarePlan"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CarePlan-mii-exa-seltene-therapieplan.html"
      }],
      "reference" : {
        "reference" : "CarePlan/mii-exa-seltene-therapieplan"
      },
      "name" : "Therapieplan Example",
      "description" : "Example of a Therapieplan for a patient.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieplan"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-seltene-symptom-chest-pain.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-seltene-symptom-chest-pain"
      },
      "name" : "Thoraxschmerzen",
      "description" : "Akute Thoraxschmerzen als Präsentationssymptom",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-seltene-observation-plt-001.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-seltene-observation-plt-001"
      },
      "name" : "Thrombozytenzahl - Post-therapeutisch",
      "description" : "Thrombozytenzahl nach Gentherapie",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-seltene-observation-troponin-003.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-seltene-observation-troponin-003"
      },
      "name" : "Troponin T hs - 01.08.2024",
      "description" : "Troponin T hochsensitiv nach Therapie",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-seltene-observation-troponin-004.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-seltene-observation-troponin-004"
      },
      "name" : "Troponin T hs - 12.08.2024",
      "description" : "Troponin T hochsensitiv bei Nachsorge",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-seltene-observation-troponin-001.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-seltene-observation-troponin-001"
      },
      "name" : "Troponin T hs - 22.07.2024",
      "description" : "Troponin T hochsensitiv Baseline",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-seltene-observation-troponin-002.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-seltene-observation-troponin-002"
      },
      "name" : "Troponin T hs - 28.07.2024",
      "description" : "Troponin T hochsensitiv vor Therapie",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-seltene-vsd.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-seltene-vsd"
      },
      "name" : "Ventrikelseptumdefekt - HPO-kodiert",
      "description" : "Angeborener Ventrikelseptumdefekt",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-seltene-von-se-betroffen.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-seltene-von-se-betroffen"
      },
      "name" : "Von SE betroffen Value Set",
      "description" : "ValueSet zur Angabe ob ein Familienmitglied an der gleichen SE erkrankt ist. Verwendet SNOMED CT codes für internationale Interoperabilität.",
      "exampleBoolean" : false
    }],
    "page" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
        "valueUrl" : "toc.html"
      }],
      "nameUrl" : "toc.html",
      "title" : "Table of Contents",
      "_title" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Inhaltsverzeichnis"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "generation" : "html",
      "page" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "index.html"
        }],
        "nameUrl" : "index.html",
        "title" : "Home",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Startseite"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "guidance.html"
        }],
        "nameUrl" : "guidance.html",
        "title" : "Guidance",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Anleitung"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown",
        "page" : [{
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "implementer-guidance.html"
          }],
          "nameUrl" : "implementer-guidance.html",
          "title" : "Guidance for Implementers",
          "_title" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "Anleitung für Implementierende"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "uml-diagrams.html"
          }],
          "nameUrl" : "uml-diagrams.html",
          "title" : "UML Diagrams",
          "_title" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "UML-Diagramme"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "clinical-genetic-diagnosis-guide.html"
          }],
          "nameUrl" : "clinical-genetic-diagnosis-guide.html",
          "title" : "Clinical vs. Genetic Diagnosis",
          "_title" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "Klinische vs. genetische Diagnose"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "coding-best-practices.html"
          }],
          "nameUrl" : "coding-best-practices.html",
          "title" : "Coding Best Practices",
          "_title" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "Kodier-Empfehlungen"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "newborn-screening.html"
          }],
          "nameUrl" : "newborn-screening.html",
          "title" : "Newborn Screening",
          "generation" : "markdown"
        }]
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "security-and-privacy.html"
        }],
        "nameUrl" : "security-and-privacy.html",
        "title" : "Security and Privacy",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Sicherheit und Datenschutz"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "profiles.html"
        }],
        "nameUrl" : "profiles.html",
        "title" : "Profiles",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Profile"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "extensions.html"
        }],
        "nameUrl" : "extensions.html",
        "title" : "Extensions",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Extensions"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "capability-statements.html"
        }],
        "nameUrl" : "capability-statements.html",
        "title" : "Capability Statements",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "CapabilityStatements"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "logical-models.html"
        }],
        "nameUrl" : "logical-models.html",
        "title" : "Datasets and Descriptions",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Datensätze und Beschreibungen"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "value-sets.html"
        }],
        "nameUrl" : "value-sets.html",
        "title" : "Value Sets",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "ValueSets"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "code-systems.html"
        }],
        "nameUrl" : "code-systems.html",
        "title" : "Code Systems",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "CodeSystems"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "sma-example-annotations.html"
        }],
        "nameUrl" : "sma-example-annotations.html",
        "title" : "Case Example Spinal Muscular Atrophy (SMA)",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Fallbeispiel Spinale Muskelatrophie (SMA)"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "marfan-example-annotations.html"
        }],
        "nameUrl" : "marfan-example-annotations.html",
        "title" : "Case Example Marfan Syndrome",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Fallbeispiel Marfan-Syndrom"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "downloads.html"
        }],
        "nameUrl" : "downloads.html",
        "title" : "Downloads",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Downloads"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "changes.html"
        }],
        "nameUrl" : "changes.html",
        "title" : "Changelog",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Änderungshistorie"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "metadata.html"
        }],
        "nameUrl" : "metadata.html",
        "title" : "Metadata Overview",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Metadaten-Übersicht"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "version-history.html"
        }],
        "nameUrl" : "version-history.html",
        "title" : "Versioning",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Versionierung"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "ImplementationGuide-mii-ig-seltene.html"
        }],
        "nameUrl" : "ImplementationGuide-mii-ig-seltene.html",
        "title" : "MII ImplementationGuide Resource",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "MII ImplementationGuide Ressource"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "translationinfo.html"
        }],
        "nameUrl" : "translationinfo.html",
        "title" : "Translation Information",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Hinweise zur Übersetzung"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      }]
    },
    "parameter" : [{
      "code" : "path-resource",
      "value" : "input/predefined-resources"
    },
    {
      "code" : "path-pages",
      "value" : "input/intro-notes"
    },
    {
      "code" : "path-resource",
      "value" : "input/capabilities"
    },
    {
      "code" : "path-resource",
      "value" : "input/examples"
    },
    {
      "code" : "path-resource",
      "value" : "input/extensions"
    },
    {
      "code" : "path-resource",
      "value" : "input/models"
    },
    {
      "code" : "path-resource",
      "value" : "input/operations"
    },
    {
      "code" : "path-resource",
      "value" : "input/profiles"
    },
    {
      "code" : "path-resource",
      "value" : "input/resources"
    },
    {
      "code" : "path-resource",
      "value" : "input/vocabulary"
    },
    {
      "code" : "path-resource",
      "value" : "input/testing"
    },
    {
      "code" : "path-resource",
      "value" : "input/history"
    },
    {
      "code" : "path-resource",
      "value" : "fsh-generated/resources"
    },
    {
      "code" : "path-pages",
      "value" : "template/config"
    },
    {
      "code" : "path-pages",
      "value" : "input/images"
    },
    {
      "code" : "path-tx-cache",
      "value" : "input-cache/txcache"
    }]
  }
}

```
