# Guidance for Implementers - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Guidance**](guidance.md)
* **Guidance for Implementers**

## Guidance for Implementers

The Rare Diseases module is a KDS module for the base modules of the Medical Informatics Initiative in Germany and is therefore directly related to the base modules Person, Diagnosis, Laboratory, Procedure and Medication as well as to the other KDS modules such as Symptom/Clinical Phenotype or the Molecular Genetics Report — see the figure MII-KDS_2025-06-12_de at [MII KDS](https://www.medizininformatik-initiative.de/de/der-kerndatensatz-der-medizininformatik-initiative).

![](https://www.medizininformatik-initiative.de/sites/default/files/2025-06/2025-06-12_de_KDS-Abb_1.png)

 

As shown on the [UML page](uml-diagrams.md), the module is to be used together with the following other modules:

* Molecular Genetics Report
* Symptom
* Base module Diagnosis
* Laboratory
* Research Study
* and, where needed, the indication-specific KDS modules (Oncology for rare hereditary tumor diseases, Cardiology for relevant phenotypes, etc.)

### Future developments

#### Interoperability with national and European registries

For seamless integration with existing registry systems and target specifications in the field of rare diseases, the following developments are planned:

##### ConceptMaps and StructureMaps

**Technical mappings to:**

* **ERDRI/RD-CODE**: European Rare Disease Registry Infrastructure 
* Mapping between ICD-10-GM and ORPHAcodes
* Mapping of HPO terms to ERDRI phenotype categories
 
* **Model Project Genome Sequencing RD (Modellvorhaben Genomsequenzierung)**: genomic medicine for rare diseases 
* Bidirectional transformation between genome sequencing data and FHIR profiles
* Integration of NGS findings into RD diagnostics
* Preservation of semantic integrity during data transfer
 
* **NARSE**: National Registry for Rare Diseases 
* Harmonization of terminologies between NARSE and MII
* Support for quality assurance metrics
 
* **SDM-MR**: Set de Données Minimal Maladies Rares 
* Harmonization following the French model.
* In France, the **"connected mode / mode connecté"** is the preferred strategy of the Ministry of Health.
 

Implementation is realized via:

* **ConceptMaps** for terminological translations
* **StructureMaps** for structural transformations between data formats
* Automated validation of the mappings

#### Extending "FAIR" RD data collection at the clinical workstation following the French model

One of the four pillars of the FAIR principles is reusability (R), the multiple use of data collected once for various permitted purposes. The core paradigm of the Medical Informatics Initiative in Germany is the multiple use of data collected at clinical workstations. And where gaps are identified in data needed multiple times — as was long the case with ORPHA coding of RD diagnoses in Germany — it may be examined to what extent the (additional) resources for collection can be focused at one place. If the work processes allow it, the clinical workstations or the clinical patient records can be the right places. The data collection for the central registry for rare diseases (Banque Nationale de Données Maladies Rares, BNDMR) in France can serve as a model.

In France, the primary strategy of data collection for multiple local and cross-institutional data use, the so-called connected mode (mode connecté), is based on the interoperability of hospital information systems (HIS) with the central registry BNDMR and its access points, see: [Le mode connecté avec le dossier patient](https://www.bndmr.fr/participer/mode-connecte/). "This connected mode, favored and promoted by the French Ministry of Health, requires that the electronic patient record (DPI/EPA) or the specialist record has previously been adapted by the software manufacturer (or the partner hospital) to the collection of the national minimum data set for rare diseases (SDM-MR.fr), in accordance with the technical specifications published jointly by the Agency for Digital Health and the operational team of the BNDMR (rare diseases component of the national interoperability framework for health information systems). The implementation of this mode takes place in close cooperation with the manufacturers of enterprise software and the information system departments of the partner hospitals (see Publishers' Kit). If the partner institution opts for the connected data collection method (mode connecté), health professionals are obliged to enter the minimum data set SDM-MR.fr directly into their electronic patient record. They have the advantage of not having to re-enter many already existing data, in particular identity data. Within the HIS, the electronic patient record (EMR) is considered the central element of trust with regard to patient identities."

In Germany, the connected mode in clinical workstation systems or specialist records can be designed primarily for the German RD minimal base data set (MBDS-SE.de) in the RD module of the MII KDS in such a way that the intentionally shared data are broadly available via the data integration centers for joint use in the University Medicine Network. This future has already begun for the most important element, ORPHAcode coding, at very many sites, and for further characteristics of the RD module at some sites.

#### FHIR Questionnaires for structured data collection

To simplify data collection, standardized FHIR Questionnaires are under development:

**Planned questionnaires:**

* **Initial registration form**: structured collection of basic information, family history and initial symptoms
* **Course documentation**: standardized recording of symptom courses and therapy response
* **Genetic counseling**: detailed pedigree collection and recording of genetic risk factors

The questionnaires will:

* Implement the SDC (Structured Data Capture) profile
* Support automatic pre-population from existing data
* Offer conditional logic for dynamic forms
* Be validated against terminology servers

#### Participation and feedback

Future developments shall take place in close coordination with the Centers for Rare Diseases (ZSE) and the existing registry operators as well as the NUM-FOSA Rare Diseases. Feedback and suggestions can be contributed to the MII via the Rare Diseases module team.

### Implementation notes

When implementing the KDS module **Rare Diseases**, the following points (in ascending order) are particularly important:

1. Coding according to the**Orphanet Nomenclature of Rare Diseases**of[Orphanet](https://www.orpha.net/de/disease)with disease-specific, unique**ORPHAcodes**,
1. Phenotyping according to the**Human Phenotype Ontology**([HPO](https://hpo.jax.org/)),
1. Representation of the family history of the index patient.

### References

* The basis of the KDS module Rare Diseases is mainly the European base data set for rare diseases of the European Rare Disease Registry Infrastructure — ERDRI ([ERDRI CDS](https://eu-rd-platform.jrc.ec.europa.eu/sites/default/files/CDS/JRC-2018-00192-00-00-DE-TRA-00-Final.pdf)). The goal is the harmonization of the data elements and data structures used in existing and future registries in Europe. The use of the "Set of common data elements for rare diseases registration" by every registry is a first step towards this goal and towards the interoperability of rare disease registries across Europe.
* Another important reference is the data set of the [National Registry for Rare Diseases (NARSE)](https://www.narse.de/), which was initiated by the Eva Luise and Horst Köhler Foundation and is implemented by the Berlin Institute of Health at Charité (BIH@Charité).
* Since the [Model Project Genome Sequencing](https://www.bfarm.de/DE/Das-BfArM/Aufgaben/Modellvorhaben-Genomsequenzierung/Informationen-und-downloads/_node.html) has produced a **data set specification** for the field of oncology **and** for the field of **rare diseases**, it is particularly important to harmonize both data sets.
* The [University Medicine Network (NUM)](https://www.netzwerk-universitaetsmedizin.de/) particularly emphasizes research and the improvement of care for people with RD in its project selection criteria. Since about 80 percent of RD are of genetic origin, according to NAMSE the cross-institutional documentation, aimed at supporting both care and research, must contain — in addition to the precise coding of diagnoses (ICD is not sufficient, ORPHAcodes are required) — information on phenotyping and genotyping.
* Because of the heterogeneity of the diseases with different care, research and documentation needs, the Joint Research Centre (JRC) of the EU Commission has defined 24 disease groups for which Europe-wide cooperation of care institutions and research groups is promoted in 24 [European Reference Networks (ERN)](https://health.ec.europa.eu/rare-diseases-and-european-reference-networks_de), each implementing or aiming at different data collections in registries adapted to the disease patterns. Despite all differences, a common core data set (Common Data Set, CDS) could nevertheless be defined for the various ERN registries — in the image of a comprehensive flower, the common blossom around which the petals of the various specific documentations are arranged. This data set is called the Set of Common Data Elements of the European Rare Disease Registry Infrastructure (ERDRI CDS) and also plays a central role in the derivation of the German core data set for RD.
* The [German National Action League for People with Rare Diseases (NAMSE)](https://www.namse.de/), whose foundation in 2010 followed a recommendation of the EU Commission based on the French model, is an alliance between the Federal Ministry of Health (BMG), the Federal Ministry of Education and Research (BMBF) and the patient organization ACHSE e.V. (Alliance of Chronic Rare Diseases) with 25 alliance partners — all of them umbrella organizations of the key actors in the healthcare system in the field of RD. In its digital strategy, NAMSE emphasizes the necessity of cross-institutional digital cooperation of the actors in the health system, and stresses the need for coordinated, precise, interoperable, findable documentation in the care and research context. The networking of the Centers for Rare Diseases in university medicine with connection to complementary European structures is of particular importance. The Federal Ministry of Education and Research prominently indicated the necessity of IT support for diagnosis and therapy selection in the call for proposals of the Medical Informatics Initiative.

