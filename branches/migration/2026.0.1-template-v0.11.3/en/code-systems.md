# Code Systems - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **Code Systems**

## Code Systems

> **Note on the BfArM terminology server:** The code systems ICD-10-GM and ORPHAcodes described below can be retrieved via the [BfArM terminology server](https://www.bfarm.de/DE/Kodiersysteme/Terminologieserver/_node.html) and used in FHIR-based systems. The server provides these terminologies as FHIR-conformant CodeSystem and ValueSet resources.

### ICD-10-GM (International Statistical Classification of Diseases, German Modification)

**ICD-10-GM** is the German modification of the WHO's international diagnosis classification ICD-10. It serves as the legally mandated classification for coding diagnoses in outpatient and inpatient care in Germany. ICD-10-GM is updated annually by the BfArM (Federal Institute for Drugs and Medical Devices) and adapted to the needs of the German healthcare system. For rare diseases, ICD-10-GM contains only a few specific codes (e.g. Q87.4 for Marfan syndrome). Most rare diseases are grouped under collective codes (so-called residual classes, e.g. Q87.8 for other specified congenital malformation syndromes).

**BfArM resources:**

* [ICD-10-GM overview](https://www.bfarm.de/DE/Kodiersysteme/Klassifikationen/ICD/ICD-10-GM/_node.html)
* [ICD-10-GM download](https://www.bfarm.de/DE/Kodiersysteme/Klassifikationen/ICD/ICD-10-GM/Download/_node.html)

### ORPHAcodes (Orphanet Nomenclature of Rare Diseases)

**ORPHAcodes** are unique numeric identifiers for rare diseases from the Orphanet database. Orphanet is the European reference portal for information on rare diseases and orphan drugs. The Orphanet nomenclature offers a more precise classification of rare diseases than ICD-10 and enables the unique identification of more than 6,000 rare diseases. The codes are used internationally for research, diagnostics and epidemiological purposes. In Germany, coding with ORPHAcodes is of particular importance for documentation in Centers for Rare Diseases and for data collection within the Medical Informatics Initiative.

Examples:

* ORPHA:558 — Marfan syndrome
* ORPHA:83330 — spinal muscular atrophy type 1

**BfArM resources:**

* [ORPHAcodes on the BfArM terminology server](https://terminologien.bfarm.de/CodeSystem-orphacodes-2025.html)
* [ORPHAcodes on Orphadata](https://www.orphacode.org/)
* [Orphanet Germany](https://www.orpha.net/consor/cgi-bin/index.php?lng=DE)

### Alpha-ID-SE file (mapping file for rare diseases)

> **Note:** The **Alpha-ID-SE file** is a **mapping file**, not a stand-alone coding system. It serves to link ORPHAcodes with ICD-10-GM codes and German designations.

The **Alpha-ID-SE file** was developed by the BfArM in cooperation with Orphanet and links ORPHAcodes with German designations and ICD-10-GM codes. It enables standardized documentation of rare diseases in the German healthcare system and serves as a bridge between the international Orphanet classification and the nationally used ICD-10-GM.

The Alpha-ID-SE file is used in particular in the following areas:

* Centers for Rare Diseases
* Registries for rare diseases
* Medical Informatics Initiative
* Health services research

According to the Digital Care and Nursing Modernization Act (DVPMG), the use of the Alpha-ID-SE file is mandatory in all German inpatient institutions in the case of primary or secondary diagnoses of rare diseases.

**BfArM resources:**

* [Alpha-ID-SE file overview](https://www.bfarm.de/DE/Kodiersysteme/Terminologien/Alpha-ID-SE/_node.html)
* [Alpha-ID-SE file download](https://www.bfarm.de/DE/Kodiersysteme/Terminologien/Alpha-ID-SE/Download/_node.html)
* [Alpha-ID terminology](https://www.bfarm.de/DE/Kodiersysteme/Terminologien/Alpha-ID/_node.html)

### HPO (Human Phenotype Ontology)

**HPO** is used for the precise and hierarchical **description of clinical phenotypes and symptoms** in humans. The ontology comprises structured terms for phenotypic features and enables computer-assisted analysis as well as comparison of patient or disease data. HPO is used in particular in the diagnostics of rare diseases, in research and in the exchange between medical databases.

Besides **HPO**, further international standards are used, e.g. SNOMED CT for conditions. Recording is also possible using the legally mandated classification ICD-10-GM.

**FHIR** (Fast Healthcare Interoperability Resources) also integrates HPO to transfer clinical phenotypes between software systems in a standardized and interoperable way. Details on the use of the HPO terminology within FHIR can be found e.g. at HL7, including examples and specifications:

* FHIR HPO terminology: [HL7 HPO NamingSystem](https://terminology.hl7.org/5.2.0/NamingSystem-HPO.html)
* FHIR HPO code system: [HL7 FHIR HPO CodeSystem](https://build.fhir.org/ig/HL7/UTG/CodeSystem-HPO.html)

### OMIM (Online Mendelian Inheritance in Man)

**OMIM** is a freely accessible medical online database cataloguing human genes and the genetically determined diseases associated with them. It contains detailed information on genes, mutations, clinical symptoms, modes of inheritance and molecular genetic foundations. OMIM serves as a central resource for genetic research and diagnostics by showing genotype–phenotype relationships and being updated regularly.

### MONDO (Monarch Disease Ontology) — secondary harmonization ontology

> **Note:** In this implementation guide, MONDO is a **secondary harmonization ontology** and **not a primary diagnostic target**. The primary documentation of diagnoses continues to use the established coding systems ICD-10-GM and ORPHAcodes. MONDO codes can optionally be added to improve international interoperability.

**MONDO** (Monarch Disease Ontology) is an integrated ontology that harmonizes and merges different disease classifications. MONDO was developed by the Monarch Initiative consortium to make disease data from different sources interoperable.

#### Purpose of the MONDO integration

MONDO is used in this module as **secondary coding for international interoperability**:

1. **Harmonization of existing coding systems:**MONDO automatically integrates mappings to SNOMED CT, ORPHAcodes, OMIM, ICD and other classifications
1. **Integration with international projects:**MONDO is the recommended disease coding system for:
* [Phenopackets](https://phenopacket-schema.readthedocs.io/) (GA4GH standard for phenotypic data)
* Global Alliance for Genomics and Health (GA4GH) standards
* International research registries and databases

1. **Semantic interoperability:**MONDO enables the linking of data coded with different national classifications

#### Use in FHIR profiles

In the FHIR profiles of this module, MONDO is provided as an **optional** coding slice:

* The MONDO code system uses the URI `http://purl.obolibrary.org/obo/mondo.owl`
* MONDO codes have the prefix "MONDO:" followed by a seven-digit number (e.g. MONDO:0007947 for Marfan syndrome)
* Specifying MONDO codes is **not mandatory** but can improve international data exchangeability

#### Examples of MONDO codes

| | | |
| :--- | :--- | :--- |
| Marfan syndrome | MONDO:0007947 | ORPHA:558, OMIM:154700 |
| Spinal muscular atrophy | MONDO:0001516 | ORPHA:70 |
| Cystic fibrosis | MONDO:0009061 | ORPHA:586, OMIM:219700 |

**Resources:**

* [MONDO website](https://mondo.monarchinitiative.org)
* [MONDO on OBO Foundry](http://obofoundry.org/ontology/mondo.html)
* [Monarch Initiative](https://monarchinitiative.org)

