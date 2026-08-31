# Artifacts Summary - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Behavior: Capability Statements 

The following artifacts define the specific capabilities that different types of systems are expected to have in order to comply with this implementation guide. Systems conforming to this implementation guide are expected to declare conformance to one or more of the following capability statements.

| | |
| :--- | :--- |
| [ MII CPS Seltene Erkrankungen CapabilityStatement  ](CapabilityStatement-mii-cps-seltene-capabilitystatement.md) | Das vorliegende CapabilityStatement beschreibt alle verpflichtenden Interaktionen die ein konformes System unterstützen muss, um das Modul Seltene Erkrankungen der Medizininformatik Initiative zu implementieren. |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ Body Mass Index (BMI) of the patient  ](StructureDefinition-mii-pr-seltene-bodymassindex.md) | Describes the Body Mass Index (BMI) of the patient. |
| [ MII PR SE Blutgruppe  ](StructureDefinition-mii-pr-seltene-blutgruppe.md) | Observation-Profil für die Erfassung der Blutgruppe (AB0 und Rhesusfaktor) im Kontext seltener Erkrankungen |
| [ MII PR SE Clinical Diagnosis  ](StructureDefinition-mii-pr-seltene-clinical-diagnosis.md) | Profile for clinical diagnosis of rare diseases with HPO phenotype codes. This profile is used for clinically diagnosed rare diseases based on phenotypic presentation. |
| [ MII PR SE Consanguinity  ](StructureDefinition-mii-pr-seltene-consanguinity.md) | Observation-Profil zur Erfassung der Blutsverwandtschaft der Eltern (Consanguinity) im Kontext seltener Erkrankungen. Insbesondere für autosomal-rezessive genetisch bedingte Erkrankungen ist die Angabe, ob die Eltern blutsverwandt sind, ein relevanter Aspekt der Familienanamnese. Abgeleitet aus RD-CDM v2.0.0 (Element 6.4.4) bzw. dem JARDIN-MDS-Entwurf. |
| [ MII PR SE Familienanamnese  ](StructureDefinition-mii-pr-seltene-familienanamnese.md) | 
| | | |
| :--- | :--- | :--- |
| Dieses Profil beschreibt die Familienanamnese eines Patienten im Kontext von seltenen Erkrankungen, basierend auf dem MolGen Familienanamnese Profil. Für jedes Familienmitglied wird eine separate FamilyMemberHistory-Ressource erstellt. Das Profil unterstützt die Dokumentation von Todesfällen durch seltene Erkrankungen über condition.contributedToDeath. Für den Indexpatienten selbst kann relationship.coding[snomed] = 116154003 | Patient | verwendet werden, um den Tod des Patienten durch eine seltene Erkrankung einheitlich zu dokumentieren. |
 |
| [ MII PR SE Genetic Diagnosis  ](StructureDefinition-mii-pr-seltene-genetic-diagnosis.md) | Profile for genetically confirmed diagnosis of rare diseases with OMIM codes and links to MolGen variant/diagnostic implication resources. This profile is used when a rare disease diagnosis has been confirmed through genetic testing. |
| [ MII PR SE Hüftumfang  ](StructureDefinition-mii-pr-seltene-hueftumfang.md) | Profil zur Dokumentation des Hüftumfangs (maximale Gesäßprotuberanz) eines Patienten. Relevant für seltene Erkrankungen mit Auswirkungen auf die Körperproportionen, metabolische Erkrankungen oder Skelettdysplasien. |
| [ MII PR SE Kopfumfang  ](StructureDefinition-mii-pr-seltene-kopfumfang.md) | Profil zur Dokumentation des Kopfumfangs (okzipital-frontal) eines Patienten. Besonders relevant bei seltenen Erkrankungen mit Auswirkungen auf das Schädelwachstum, z.B. Skelettdysplasien, neurologische Erkrankungen. Erbt vom MII ICU Kopfumfang-Profil. |
| [ MII PR SE Studieneinschluss Anfrage  ](StructureDefinition-mii-pr-seltene-studieneinschluss-anfrage.md) | Anfrage zum Studieneinschluss |
| [ MII PR SE Taillenumfang  ](StructureDefinition-mii-pr-seltene-taillenumfang.md) | Profil zur Dokumentation des Taillenumfangs (Bauchumfang auf Nabelhöhe) eines Patienten. Relevant für seltene Erkrankungen mit metabolischen Komponenten oder Skelettdysplasien. |
| [ MII PR SE Therapieempfehlung Kombinationstherapie  ](StructureDefinition-mii-pr-seltene-therapieempfehlung-kombination.md) | Therapieempfehlung für eine medikamentöse Kombinationstherapie |
| [ MII PR SE Therapieempfehlung Nicht-Medikamentös  ](StructureDefinition-mii-pr-seltene-therapieempfehlung-nicht-medikamentoes.md) | Therapieempfehlung für nicht-medikamentöse Interventionen bei seltenen Erkrankungen (z.B. Ernährungstherapie, Gentherapie, Prophylaxe, Früherkennung) |
| [ MII PR SE Therapieempfehlung Systemische Therapie  ](StructureDefinition-mii-pr-seltene-therapieempfehlung.md) | Therapieempfehlung für eine medikamentöse Systemische Therapie |
| [ MII PR SE Therapieplan  ](StructureDefinition-mii-pr-seltene-therapieplan.md) | Therapieplan |
| [ MII PR Seltene Erkrankungen Therapie Durchgeführt  ](StructureDefinition-mii-pr-seltene-therapie-durchgefuehrt.md) | Minimales Profil zur Dokumentation durchgeführter Therapien bei Seltenen Erkrankungen gemäß NARSE-Klassifikation. Dieses Profil erfasst Therapien unabhängig vom Durchführungsort (ambulant, stationär, außerhalb des Krankenhauses). |
| [ MII Profile SE Clinical Impression  ](StructureDefinition-mii-pr-seltene-clinical-impression.md) | Profile for clinical impressions in the context of rare diseases. This profile captures clinical assessments and suspected diagnoses based on phenotypic findings and symptoms. |
| [ MII Profile SE HPO Assessment  ](StructureDefinition-mii-pr-seltene-hpo-assessment.md) | Profile for HPO-based phenotypic observations in the context of rare diseases. This profile uses the Human Phenotype Ontology (HPO) to describe clinical symptoms and phenotypic abnormalities. |
| [ MII Profile SE Symptom Condition  ](StructureDefinition-mii-pr-seltene-symptom-condition.md) | Profile for symptom-based conditions in the context of rare diseases. This profile captures symptomatic conditions with temporal characteristics, complementing the HPO Assessment Observation profile. |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ MII EX SE Age of Onset  ](StructureDefinition-mii-ex-seltene-age-of-onset.md) | Extension to capture the age of onset of a rare disease using structured HPO age of onset terms |
| [ MII EX SE Empfehlung Priorität  ](StructureDefinition-mii-ex-seltene-empfehlung-prioritaet.md) | Priorität der (einzelnen) Empfehlung |
| [ MII EX SE Empfehlung Publikation  ](StructureDefinition-mii-ex-seltene-empfehlung-publikation.md) | Verweis auf Publikation der (einzelnen) Empfehlung |
| [ MII EX SE Genetic Basis  ](StructureDefinition-mii-ex-seltene-genetic-basis.md) | Extension to describe the genetic basis of a rare disease |
| [ MII EX SE Inheritance Pattern  ](StructureDefinition-mii-ex-seltene-inheritance-pattern.md) | Extension to capture the mode of inheritance of a rare disease |
| [ MII EX SE Penetrance  ](StructureDefinition-mii-ex-seltene-penetrance.md) | Extension to capture the penetrance of genetic variants associated with a rare disease |
| [ Onset Age Extension  ](StructureDefinition-mii-ext-seltene-onset-age.md) | Extension to capture the age at onset of a condition. This backports the onsetAge functionality from FHIR R5 to R4. |
| [ Phenotypic Pattern Extension  ](StructureDefinition-mii-ext-seltene-phenotypic-pattern.md) | Extension to link syndrome diagnoses to characteristic phenotypic patterns or symptom clusters |
| [ Syndrome Category Extension  ](StructureDefinition-mii-ext-seltene-syndrome-category.md) | Extension to categorize syndrome types for rare diseases (genetic, metabolic, developmental, etc.) |
| [ VonSEBetroffen  ](StructureDefinition-von-seltene-betroffen.md) | Wird in der MII Modul SE Familienanamnese genutzt um zu bestimmen ob ein Familienmitglied an der gleichen SE erkrankt ist. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ HPO Phenotype Presence Status  ](ValueSet-mii-vs-seltene-hpo-presence-status.md) | LOINC codes for indicating presence or absence of phenotypic features. Follows HL7 Phenomics IG pattern. |
| [ HPO Phenotypic Observation Codes  ](ValueSet-mii-vs-seltene-hpo-phenotypic-observation-codes.md) | Human Phenotype Ontology codes for phenotypic observations |
| [ HPO Severity  ](ValueSet-mii-vs-seltene-hpo-severity.md) | HPO codes for describing severity of phenotypic abnormalities. Follows HL7 Phenomics IG component pattern. |
| [ MII VS SE Blutgruppe  ](ValueSet-mii-vs-seltene-blutgruppe.md) | ValueSet für Blutgruppen (AB0 und Rhesusfaktor) basierend auf LOINC Answer List für 882-1 |
| [ MII VS SE Clinical Diagnosis Category  ](ValueSet-mii-vs-seltene-clinical-diagnosis-category.md) | Value set for categorizing clinical diagnoses of rare diseases |
| [ MII VS SE Empfehlung Status Begründung  ](ValueSet-mii-vs-seltene-empfehlung-status-begruendung.md) | ValueSet für Begründung bei fehlender Empfehlung |
| [ MII VS SE Genetic Basis  ](ValueSet-mii-vs-seltene-genetic-basis.md) | Value set for types of genetic basis of rare diseases |
| [ MII VS SE HPO Age of Onset  ](ValueSet-mii-vs-seltene-hpo-age-of-onset.md) | Value set containing HPO terms for age of onset of diseases |
| [ MII VS SE HPO Inheritance Pattern  ](ValueSet-mii-vs-seltene-hpo-inheritance-pattern.md) | Value set containing HPO terms for modes of inheritance |
| [ MII VS SE Penetrance  ](ValueSet-mii-vs-seltene-penetrance.md) | Value set for qualitative descriptions of genetic penetrance, drawn from the HPO branch Inheritance qualifier (HP:0034335). Note that the graded terms (high/moderate/low penetrance) are subtypes of incomplete penetrance, not alternatives to complete penetrance. |
| [ MII VS SE Therapieempfehlung Strategie  ](ValueSet-mii-vs-seltene-therapieempfehlung-strategie.md) | ValueSet für Strategietypen von Therapieempfehlungen bei seltenen Erkrankungen (Modellvorhaben GenomSeq) |
| [ MII VS SE Therapieempfehlung Strategie - Medikamentös  ](ValueSet-mii-vs-seltene-therapieempfehlung-strategie-medikamentoes.md) | ValueSet für medikamentöse Therapiestrategien (für MedicationRequest Profile) - Verwendet für MedicationRequest-basierte Therapieempfehlungen im Kontext Modellvorhaben GenomSeq |
| [ MII VS SE Therapieempfehlung Strategie - Nicht-Medikamentös  ](ValueSet-mii-vs-seltene-therapieempfehlung-strategie-nicht-medikamentoes.md) | ValueSet für nicht-medikamentöse Therapiestrategien (für ServiceRequest Profile) - Verwendet für ServiceRequest-basierte Therapieempfehlungen im Kontext Modellvorhaben GenomSeq |
| [ MII VS SE Therapieempfehlung Typ  ](ValueSet-mii-vs-seltene-therapieempfehlung-typ.md) | ValueSet für Therapietypen (kausal/symptomatisch) bei seltenen Erkrankungen (Modellvorhaben GenomSeq) |
| [ MII VS Seltene Erkrankungen Consanguinity  ](ValueSet-mii-vs-seltene-consanguinity.md) | ValueSet zur Angabe der Blutsverwandtschaft der Eltern (Consanguinity): Ja / Nein / Unbekannt / Nicht erfasst (SNOMED CT), entsprechend dem Consanguinity Value Set aus RD-CDM v2.0.0. |
| [ MII VS Seltene Erkrankungen HPO Change Status  ](ValueSet-mii-vs-seltene-hpo-change-status.md) | ValueSet für Änderungsstatus von HPO-Phänotypen gemäß Modellvorhaben Genomsequenzierung |
| [ MII VS Seltene Erkrankungen NARSE Therapietyp  ](ValueSet-mii-vs-seltene-narse-therapietyp.md) | ValueSet für NARSE-spezifische Therapietypen bei Seltenen Erkrankungen |
| [ MII VS Seltene Erkrankungen Symptom Change Status (Combined)  ](ValueSet-mii-vs-seltene-symptom-change-status-combined.md) | ValueSet zur Dokumentation von Änderungen bei Symptomen/Phänotypen über Zeit. Kombiniert MVGenomSeq-spezifische Codes mit SNOMED CT-Codes für internationale Interoperabilität. |
| [ Syndrome Category Value Set  ](ValueSet-mii-vs-seltene-syndrome-category.md) | Categories for classifying syndrome types in rare diseases |
| [ Von SE betroffen Value Set  ](ValueSet-von-seltene-betroffen-vs.md) | ValueSet zur Angabe ob ein Familienmitglied an der gleichen SE erkrankt ist. Verwendet SNOMED CT codes für internationale Interoperabilität. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ MII CS SE Empfehlung Status Begründung  ](CodeSystem-mii-cs-seltene-empfehlung-status-begruendung.md) | Begründung bei fehlender Empfehlung |
| [ MII CS SE Therapieempfehlung Strategie  ](CodeSystem-mii-cs-seltene-therapieempfehlung-strategie.md) | Strategietypen für Therapieempfehlungen bei seltenen Erkrankungen, abgeleitet aus MV GenomSeq |
| [ MII CS SE Therapieempfehlung Typ  ](CodeSystem-mii-cs-seltene-therapieempfehlung-typ.md) | Therapietyp (kausal vs. symptomatisch) für Therapieempfehlungen bei seltenen Erkrankungen, abgeleitet aus MV GenomSeq |
| [ MII CS Seltene Erkrankungen HPO Change Status  ](CodeSystem-mii-cs-seltene-hpo-change-status.md) | CodeSystem zur Dokumentation von Änderungen bei HPO-Phänotypen über Zeit |
| [ MII CS Seltene Erkrankungen NARSE Therapietyp  ](CodeSystem-mii-cs-seltene-narse-therapietyp.md) | CodeSystem für NARSE-spezifische Therapietypen bei Seltenen Erkrankungen |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [ ALT Labor - Post-therapeutisch  ](Observation-observation-alt-001.md) | ALT Wert nach Gentherapie |
| [ AST Labor - Post-therapeutisch  ](Observation-observation-ast-001.md) | AST Wert nach Gentherapie |
| [ Ambulante Erstvorstellung  ](Encounter-encounter-ambulant-001.md) | Erstvorstellung im SMA-Zentrum |
| [ Ambulante Nachsorge  ](Encounter-encounter-nachsorge-001.md) | Erster Nachsorgetermin nach Gentherapie |
| [ Antevertierte Nares - HPO-kodiert  ](Observation-anteverted-nares.md) | Nach oben gerichtete Nasenlöcher |
| [ Aortenklappeninsuffizienz  ](Observation-symptom-aortic-regurg.md) | Moderate Aortenklappeninsuffizienz Grad II |
| [ Aortenwurzel - Normalbefund  ](Observation-aortic-root-normal.md) | Normale Aortenwurzel, schließt Marfan aus |
| [ Aortenwurzeldilatation  ](Observation-symptom-aortic-root.md) | Pathologisch erweiterte Aortenwurzel |
| [ Aortenwurzeldilatation - HPO-kodiert  ](Observation-aortic-root-dilatation.md) | Echokardiographisch nachgewiesene Aortenwurzeldilatation |
| [ Arachnodaktylie - HPO-kodiert  ](Observation-arachnodactyly.md) | Spinnenfingrigkeit bei Marfan-Syndrom |
| [ Augenärztliche Konsultation  ](Encounter-encounter-ophthalmology.md) | Erstvorstellung beim Augenarzt wegen Katarakt |
| [ BRCA1 Pathogene Variante - MolGen  ](Observation-molgen-variant-brca1-pathogenic.md) | Pathogene BRCA1-Variante |
| [ BRCA1/2 Panel - Diagnostische Implikation  ](DiagnosticReport-molgen-brca-panel.md) | Hereditäres Karzinom-Panel |
| [ Beinlängendifferenz  ](Observation-observation-leg-asymmetry.md) | Beinlängendifferenz mit rechts verkürztem Bein |
| [ Beispiel Aortenwurzelersatz bei Marfan-Syndrom  ](ServiceRequest-mii-exa-seltene-therapieempfehlung-aortenwurzelersatz-marfan.md) | Beispiel einer nicht-medikamentösen Therapieempfehlung für Aortenwurzelersatz bei Marfan-Syndrom |
| [ Beispiel Ernährungstherapie-Empfehlung  ](ServiceRequest-example-nutrition-therapy-recommendation.md) | Beispiel einer Ernährungstherapie-Empfehlung bei Phenylketonurie |
| [ Beispiel Früherkennungsprogramm-Empfehlung  ](ServiceRequest-example-early-detection-recommendation.md) | Beispiel einer Empfehlung für regelmäßige Früherkennungsuntersuchungen |
| [ Beispiel Genetische Beratung  ](ServiceRequest-mii-exa-seltene-therapieempfehlung-genetische-beratung.md) | Beispiel einer nicht-medikamentösen Therapieempfehlung für genetische Beratung |
| [ Beispiel Gentherapie bei SMA  ](MedicationRequest-mii-exa-seltene-therapieempfehlung-gentherapie-sma.md) | Beispiel einer medikamentösen Therapieempfehlung für Gentherapie bei Spinaler Muskelatrophie |
| [ Beispiel Losartan bei Marfan-Syndrom  ](MedicationRequest-mii-exa-seltene-therapieempfehlung-losartan-marfan.md) | Beispiel einer medikamentösen Therapieempfehlung für Losartan zur Progressionshemmung bei Marfan-Syndrom |
| [ Beispiel NARSE Gentherapie bei SMA  ](Procedure-mii-exa-seltene-narse-gentherapie-sma.md) | Beispiel einer durchgeführten Gentherapie bei Spinaler Muskelatrophie |
| [ Beispiel NARSE Stoffwechseltherapie bei Morbus Pompe  ](Procedure-mii-exa-seltene-narse-stoffwechseltherapie-pompe.md) | Beispiel einer durchgeführten Enzymersatztherapie bei Morbus Pompe |
| [ Beispiel Physiotherapie bei SMA  ](ServiceRequest-mii-exa-seltene-therapieempfehlung-physiotherapie-sma.md) | Beispiel einer nicht-medikamentösen Therapieempfehlung für Physiotherapie bei Spinaler Muskelatrophie |
| [ Beispielpatient  ](Patient-example.md) | Generischer Beispielpatient für Testzwecke |
| [ Body Mass Index (BMI) Example  ](Observation-mii-exa-seltene-bodymassindex.md) | Example of a Body Mass Index (BMI) observation for a patient. |
| [ CF Diagnostische Implikation - MolGen  ](DiagnosticReport-molgen-cf-diagnostic.md) | Mukoviszidose genetischer Befund |
| [ CFTR F508del Homozygot - MolGen Variante  ](Observation-molgen-variant-cftr-f508del-homozygous.md) | Homozygote F508del Mutation bei Mukoviszidose |
| [ Chronische Diarrhoe - HPO-kodiert  ](Observation-chronic-diarrhea.md) | Chronische Durchfälle bei CF |
| [ Consanguinity - Eltern blutsverwandt  ](Observation-mii-exa-seltene-consanguinity.md) | Beispiel: Bei einem Indexpatienten mit Verdacht auf eine autosomal-rezessive seltene Erkrankung ist dokumentiert, dass die Eltern blutsverwandt sind (Cousins 1. Grades). |
| [ DMD Diagnostische Implikation  ](DiagnosticReport-molgen-diagnostic-dmd.md) | Diagnostischer Bericht Duchenne-Muskeldystrophie |
| [ DMD Exon 45-47 Deletion - MolGen Variante  ](Observation-molgen-variant-dmd-deletion-exon45-47.md) | Out-of-frame Deletion im DMD-Gen |
| [ Duchenne ausgeschlossen - Becker bestätigt  ](Condition-example-dmd-excluded-bmd-confirmed.md) | Duchenne-Muskeldystrophie ausgeschlossen, stattdessen Becker-Muskeldystrophie |
| [ Duchenne-Muskeldystrophie - Genetisch bestätigt  ](Condition-example-dmd-genetic-diagnosis.md) | Beispiel einer genetisch bestätigten Duchenne-Muskeldystrophie |
| [ Echokardiographie - Aortenklappeninsuffizienz  ](Observation-observation-echo-av.md) | Beurteilung der Aortenklappeninsuffizienz |
| [ Echokardiographie - Aortenwurzeldurchmesser  ](Observation-observation-echo-aortic.md) | Aortenwurzeldurchmesser in der Echokardiographie |
| [ Echokardiographie - Mitralklappeninsuffizienz  ](Observation-observation-echo-mv.md) | Beurteilung der Mitralklappeninsuffizienz |
| [ Ehlers-Danlos-Syndrom - Ausgeschlossen  ](Condition-example-eds-excluded-clinical.md) | Differentialdiagnose EDS ausgeschlossen |
| [ FBN1 Gen - Pathogene Mutation  ](Observation-variant-fbn1-001.md) | Pathogene FBN1-Mutation bei Marfan-Syndrom |
| [ Familienanamnese - Urgroßmutter mit Muskelerkrankung  ](FamilyMemberHistory-family-history-001.md) | Urgroßmutter mit unbekannter Muskelerkrankung |
| [ Gedeihstörung - HPO-kodiert  ](Observation-failure-to-thrive.md) | Mangelhafte Gewichtszunahme |
| [ Gentherapie Verabreichung  ](Procedure-procedure-gentherapy-001.md) | Verabreichung des Gentherapeutikums für SMA |
| [ Geplante Aortenwurzelersatz-Operation  ](Procedure-procedure-aortic-planned.md) | Geplante David-Operation (Valve-sparing root replacement) |
| [ Geplante Herzchirurgie  ](Encounter-encounter-surgery-planned.md) | Geplanter stationärer Aufenthalt für Aortenwurzelersatz |
| [ HPO Assessment - Excluded Phenotype  ](Observation-mii-exa-seltene-hpo-assessment-excluded.md) | Example of an explicitly excluded phenotype (arachnodactyly ruled out during Marfan syndrome workup). |
| [ HPO Assessment - Present with Severity  ](Observation-mii-exa-seltene-hpo-assessment-severity.md) | Example of a phenotype with both status (present) and severity grading. Demonstrates HL7 Phenomics IG component pattern. |
| [ HPO Assessment mit Änderungsstatus  ](Observation-mii-exa-seltene-hpo-assessment-change-status.md) | Beispiel einer HPO-Beobachtung mit dokumentiertem Änderungsstatus |
| [ HPO Symptom Observation Example  ](Observation-mii-exa-seltene-hpo-assessment.md) | Example of an HPO-based phenotypic observation for intellectual disability. |
| [ Hereditäres Mamma- und Ovarialkarzinom-Syndrom  ](Condition-example-brca1-genetic-diagnosis.md) | Genetisch bestätigtes BRCA1-assoziiertes Karzinom-Syndrom |
| [ Hochwuchs - HPO-kodiert  ](Observation-tall-stature.md) | Pathologisch erhöhte Körpergröße |
| [ Hypertelorismus - HPO-kodiert  ](Observation-hypertelorism.md) | Vergrößerter Augenabstand |
| [ Hüftumfang Beispiel  ](Observation-mii-exa-seltene-hueftumfang.md) | Beispiel einer Hüftumfang-Messung bei einem Patienten mit seltener Erkrankung. |
| [ Kardiologische Erstvorstellung  ](Encounter-encounter-cardiology.md) | Ambulante kardiologische Erstvorstellung bei Thoraxschmerzen |
| [ Katarakt bilateral  ](Condition-condition-cataract.md) | Beidseitige Katarakt bei Marfan-Syndrom |
| [ Katarakt bilateral  ](Observation-symptom-cataract.md) | Beidseitige Katarakt als ophthalmologische Manifestation |
| [ Katarakt-Operation  ](Procedure-procedure-cataract-surgery.md) | Phakoemulsifikation mit Intraokularlinsenimplantation |
| [ Katarakt-Operation Aufenthalt  ](Encounter-encounter-cataract-surgery.md) | Tagesklinischer Aufenthalt für Katarakt-Operation |
| [ Klinische Beurteilung - Erstvorstellung  ](ClinicalImpression-clinical-impression-erstvorstellung.md) | Initiale klinische Beurteilung bei Erstvorstellung im SMA-Zentrum |
| [ Klinische Beurteilung - Nachsorge  ](ClinicalImpression-clinical-impression-nachsorge.md) | Nachsorgeuntersuchung nach Gentherapie |
| [ Konsultation ZSE bei V.a. Marfan-Syndrom  ](ClinicalImpression-clinical-impression-seltene-assessment.md) | Konsultation im Zentrum für Seltene Erkrankungen mit kardiologischer Mitbeurteilung bei V.a. Marfan-Syndrom |
| [ Kopfumfang Beispiel  ](Observation-mii-exa-seltene-kopfumfang.md) | Beispiel einer Kopfumfang-Messung bei einem Patienten mit seltener Erkrankung. |
| [ Körpergröße - Hochwuchs  ](Observation-observation-height-001.md) | Pathologisch erhöhte Körpergröße bei Marfan-Syndrom |
| [ Linsenluxation - HPO-kodiert  ](Observation-lens-dislocation.md) | Ectopia lentis bei Marfan-Syndrom |
| [ Losartan Therapie  ](MedicationStatement-medication-losartan.md) | Losartan zur Progressionshemmung der Aortenwurzeldilatation |
| [ Lymphödem - HPO-kodiert  ](Observation-lymphedema.md) | Peripheres Lymphödem |
| [ MII Example SE Symptom Condition  ](Condition-mii-exa-seltene-symptom-condition.md) | Example of a symptom condition in the context of rare diseases using HPO codes |
| [ Marfan Patient - 19-jähriger Mann  ](Patient-patient-marfan-001.md) | 19-jähriger männlicher Patient mit bestätigtem Marfan-Syndrom |
| [ Marfan-Syndrom - Genetische Diagnose  ](Condition-condition-marfan-genetic.md) | Genetisch bestätigtes Marfan-Syndrom mit FBN1-Mutation |
| [ Marfan-Syndrom - Klinisch ausgeschlossen  ](Condition-example-marfan-excluded-clinical.md) | Beispiel einer klinisch ausgeschlossenen Marfan-Diagnose |
| [ Marfan-Syndrom - Klinische Diagnose  ](Condition-condition-marfan-clinical.md) | Klinisch bestätigtes Marfan-Syndrom |
| [ Marfan-Syndrom - Klinische Diagnose  ](Condition-example-marfan-clinical-diagnosis.md) | Beispiel einer klinischen Diagnose des Marfan-Syndroms basierend auf phänotypischen Merkmalen |
| [ Marfan-Syndrom - Verdacht  ](Condition-condition-marfan-suspected.md) | Verdacht auf Marfan-Syndrom |
| [ Marfan-Syndrom Fallbeispiel - Vollständiges Transaction Bundle  ](Bundle-bundle-marfan-complete.md) | Transaction Bundle mit allen Ressourcen für den Marfan-Syndrom Fall |
| [ Metabolische Myopathie - Ausgeschlossen  ](Condition-example-metabolic-myopathy-excluded.md) | Metabolische Myopathie als Differentialdiagnose ausgeschlossen |
| [ Mitralklappeninsuffizienz  ](Observation-symptom-mitral-regurg.md) | Milde Mitralklappeninsuffizienz Grad I |
| [ Mukoviszidose - Genetisch bestätigt  ](Condition-example-cf-genetic.md) | Genetisch bestätigte Mukoviszidose |
| [ Mukoviszidose - Klinischer Verdacht  ](Condition-example-cf-clinical.md) | Initiale klinische Verdachtsdiagnose Mukoviszidose |
| [ Mukoviszidose - Nach positivem Screening ausgeschlossen  ](Condition-example-cf-excluded-after-screening.md) | CF nach auffälligem Neugeborenenscreening genetisch ausgeschlossen |
| [ Neugeborenenscreening  ](Encounter-encounter-screening-001.md) | Neugeborenenscreening mit SMA-Verdacht |
| [ Noonan-Syndrom - Klinische Diagnose  ](Condition-example-noonan-clinical-diagnosis.md) | Beispiel einer klinischen Diagnose des Noonan-Syndroms |
| [ Phenylketonurie - Genetische Diagnose  ](Condition-condition-pku-diagnosis.md) | Genetisch bestätigte Phenylketonurie (PKU) |
| [ Rezidivierende Atemwegsinfekte - HPO-kodiert  ](Observation-recurrent-respiratory-infections.md) | Häufige respiratorische Infektionen bei CF |
| [ SMA - Genetisch ausgeschlossen  ](Condition-example-sma-excluded-genetic.md) | Spinale Muskelatrophie genetisch ausgeschlossen |
| [ SMA Diagnostische Implikation - MolGen  ](DiagnosticReport-molgen-diagnostic-implication-sma.md) | Diagnostischer Bericht zur SMA-Genetik |
| [ SMA Fallbeispiel - Vollständiges Transaction Bundle  ](Bundle-bundle-sma-complete.md) | Transaction Bundle mit allen Ressourcen für den SMA Fall inkl. Diagnoseverlauf |
| [ SMA Genetik - Negativbefund  ](DiagnosticReport-molgen-sma-negative.md) | Genetischer Test schließt SMA aus |
| [ SMA Genetische Diagnose  ](Condition-condition-sma-genetic.md) | SMA Typ 1, molekulargenetisch bestätigt durch SMN1-Deletion |
| [ SMA Klinische Diagnose  ](Condition-condition-sma-clinical.md) | Klinische Diagnose SMA Typ 1 bei Erstvorstellung |
| [ SMA Neugeborenenscreening Ergebnis  ](Observation-observation-sma-screening.md) | Positives SMA-Screening beim Neugeborenenscreening |
| [ SMA Patient - Neugeborenes Mädchen  ](Patient-patient-sma-001.md) | Neugeborenes Mädchen mit bestätigter SMA Typ 1 |
| [ SMA Typ 1 - Genetisch bestätigte Diagnose  ](Condition-example-sma-genetic-diagnosis.md) | Beispiel einer genetisch bestätigten Diagnose der spinalen Muskelatrophie Typ 1 |
| [ SMA Verdacht - Neugeborenenscreening  ](Condition-condition-sma-suspected.md) | Verdacht auf SMA beim Neugeborenenscreening |
| [ SMN1 - Normale Kopienanzahl  ](Observation-molgen-smn1-normal-copies.md) | 2 Kopien SMN1 - schließt SMA aus |
| [ SMN1 Gen - Homozygote Deletion  ](Observation-variant-smn1-001.md) | 0 Kopien des SMN1-Gens nachgewiesen |
| [ SMN1 Gen Deletion - MolGen Variante  ](Observation-molgen-variant-smn1-deletion.md) | Homozygote Deletion des SMN1-Gens bei SMA |
| [ SMN2 Gen - Kopienanzahl  ](Observation-variant-smn2-001.md) | 2 Kopien des SMN2-Gens nachgewiesen |
| [ Stationärer Aufenthalt zur Gentherapie  ](Encounter-encounter-stationaer-001.md) | Stationäre Aufnahme für Gentherapie |
| [ Taillenumfang Beispiel  ](Observation-mii-exa-seltene-taillenumfang.md) | Beispiel einer Taillenumfang-Messung bei einem Patienten mit seltener Erkrankung. |
| [ Therapieplan Example  ](CarePlan-mii-exa-seltene-therapieplan.md) | Example of a Therapieplan for a patient. |
| [ Thoraxschmerzen  ](Observation-symptom-chest-pain.md) | Akute Thoraxschmerzen als Präsentationssymptom |
| [ Thrombozytenzahl - Post-therapeutisch  ](Observation-observation-plt-001.md) | Thrombozytenzahl nach Gentherapie |
| [ Troponin T hs - 01.08.2024  ](Observation-observation-troponin-003.md) | Troponin T hochsensitiv nach Therapie |
| [ Troponin T hs - 12.08.2024  ](Observation-observation-troponin-004.md) | Troponin T hochsensitiv bei Nachsorge |
| [ Troponin T hs - 22.07.2024  ](Observation-observation-troponin-001.md) | Troponin T hochsensitiv Baseline |
| [ Troponin T hs - 28.07.2024  ](Observation-observation-troponin-002.md) | Troponin T hochsensitiv vor Therapie |
| [ Ventrikelseptumdefekt - HPO-kodiert  ](Observation-vsd.md) | Angeborener Ventrikelseptumdefekt |
| [ mii-exa-seltene-familienanamnese  ](FamilyMemberHistory-mii-exa-seltene-familienanamnese.md) | Example Patient Family Anamnesis |

### Other 

These are resources that are used within this implementation guide that do not fit into one of the other categories.

| |
| :--- |
| [ mii-param-seltene-manifest  ](Parameters-mii-param-seltene-manifest.md) |

