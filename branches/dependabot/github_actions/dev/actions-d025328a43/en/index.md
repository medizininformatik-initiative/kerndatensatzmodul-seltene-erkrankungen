# Home - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **Home**

## Home

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ImplementationGuide/mii-ig-seltene | *Version*:2027.0.0-ballot.rc1 |
| Active as of 2026-09-02 | *Computable Name*:MII_IG_Seltene_Erkrankungen |

This specification describes the FHIR representation of the Core Data Set (KDS) module Rare Diseases (Seltene Erkrankungen) of the German Medical Informatics Initiative (MII). The following pages describe the module's use cases as well as the associated FHIR profiles and terminology resources in their binding form.

| | |
| :--- | :--- |
| Status | Active |
| Realm | DE |

### Imprint

This guide has been created within the framework of the Medical Informatics Initiative and is subject, per governance process, to the consultation procedure of the Interoperability Forum and the Technical Committees of HL7 Germany.

### Contacts

* Josef Schepers, Berlin Institute of Health (Charité) — module speaker
* Michéle Zoch, Uniklinik Dresden — module speaker
* Martin Bartos, Klinikum Chemnitz — module speaker
* Thomas Debertshäuser, Berlin Institute of Health (Charité)
* Miriam Hübner, Berlin Institute of Health (Charité)
* Steffen Sander, Berlin Institute of Health (Charité)
* Marco Scharschmidt, Berlin Institute of Health (Charité)
* Claudia Finis, Berlin Institute of Health (Charité)
* Stefanie Rudolph, Berlin Institute of Health (Charité)
* Christine Mundlos, ACHSE e.V.
* Clemens Hentrich, Uniklinik Dresden
* Jessica Vasseur, Uniklinik Frankfurt am Main
* Susanne Vorhagen, Uniklinik Köln
* Romina Blasini, Uniklinik Gießen
* Patrik Bovio, Uniklinik Freiburg
* Karoline Buckow, TMF – Technologie- und Methodenplattform für die vernetzte medizinische Forschung e.V.
* Franziska Klepka, TMF – Technologie- und Methodenplattform für die vernetzte medizinische Forschung e.V.

Questions about this publication can be asked at any time at [chat.fhir.org](https://chat.fhir.org) in the stream 'german/mi-initiative'.

Comments and criticism are always welcome as issues in the [GitHub project](https://github.com/medizininformatik-initiative/kerndatensatzmodul-seltene-erkrankungen/issues).

### Authors (in alphabetical order)

* Thomas Debertshäuser, Berlin Institute of Health (Charité)
* Miriam Hübner, Berlin Institute of Health (Charité)
* Steffen Sander, Berlin Institute of Health (Charité)
* Marco Scharschmidt, Berlin Institute of Health (Charité)
* Josef Schepers, Berlin Institute of Health (Charité)

### Copyright and terms of use

Copyright © 2019+: TMF e. V., Charlottenstraße 42, 10117 Berlin

The content of this specification is public. Rights of re-use and publication are not restricted.

For the usage rights of the underlying FHIR technology, see the FHIR base specification.

Some of the code systems used are published and maintained by other organizations. The copyright of the respective publishers listed there applies.

### Disclaimer

The content of this document is public. Note that parts of this document are based on FHIR version R4, for which the copyright of HL7 International applies.

## Module description

### Introduction

Although it is estimated that around 4 million people in Germany (5% of the population) are affected by **rare diseases (RD)**, those affected are considered the orphans of medicine and of the MII. The German National Action League for People with Rare Diseases (NAMSE) therefore demands that the digitalization of the healthcare system must benefit this large population group to a particular degree.

The major challenge with rare diseases arises from the multitude of very different **"disorders"** and **"subtypes of disorders"** (up to 10,000 are mentioned), each with only small case numbers per **"disorder"**.

* In the European Union a disease is considered **"rare"** if fewer than **5 in 10,000** inhabitants are affected — i.e. at most 40,000 persons in Germany.
* Diseases are considered **"ultra-rare"** if fewer than 1 in 50,000 persons are affected, although no official EU definition currently exists.

With rare diseases — especially ultra-rare ones — years of diagnostic uncertainty regularly precede the actual diagnosis, which can also entail mistreatment. Even after the diagnosis has been established, a targeted therapy can be offered to only about 5% of patients, which is why further coordinated research for the small, scattered groups is particularly important.

Making persons with rare diseases visible through exact coding of RD diagnoses with ORPHAcodes from the Orphanet Nomenclature of Rare Diseases can be regarded as the starting point of the improvement processes. This complements the coarser ICD classification and coding of diagnoses for the RD segment. According to the Robert Koch Institute (RKI) and the Federal Institute for Drugs and Medical Devices (BfArM), making RD visible strengthens the possibilities of diagnostics and therapy development as well as IT support for diagnosis and therapy selection.

ORPHAcode coding has already been established in the **DIAGNOSIS** module as a possible complement to ICD coding. Its inclusion in the RD module underlines the importance of exact coding as the linchpin of the further RD elements in the MII KDS in general and in the RD module in particular.

-------

Like the other implementation guides (IG) of the MII KDS modules, the **Rare Diseases module** is intended to support the data integration centers in preparing existing patient data from the care context. The KDS module deliberately builds on existing modules of the MII KDS. Data elements and structures that have already been modeled are reused where possible instead of duplicating them. The RD KDS module is essentially a topic-specific "composite" that integrates various relevant data elements from different modules with small additions, without fully adopting or replacing the underlying modules. Due to overlapping content, a noticeable overlap with implementation rules of the modules **DIAGNOSIS, SYMPTOM/PHENOTYPE** and **MOLECULAR GENETICS** has been realized.

For a comprehensive description of rare diseases, further MII KDS modules are relevant in addition to the content addressed in the RD module, including **Laboratory**, **Molecular Genetics Report** and **PROMs**. In the longer term, further KDS modules (e.g. **case conference at a Center for Rare Diseases (ZSE), newborn screening**) would also be useful. The present RD module, however, is deliberately kept lean and focuses on the reusable integration of already modeled data elements in order to facilitate implementability and interoperability.

At the same time, the RD module is intended to serve as a guide to a uniform, semantically interoperable, standardized **EU-compliant RD documentation** at clinical workstations, which is also expressed in the synonym **"German minimal base data set for rare diseases (MBDS-SE.de)"**, indicating the semantic proximity to the French "Set de données minimal national maladies rares **(SDM-MR.fr)**" and to the Set of Common Data Elements of the European ERN registries **(ERDRI CDS.eu)**.

> **Note on data completeness:** The Rare Diseases module primarily models those data elements that are **specific to rare diseases**. Some data elements appear additionally because they had not yet been specified in other MII modules (e.g. BMI, blood group). All data from other modules (Person, Laboratory, Pathology, Molecular Genetics Report, etc.) can be used freely by derived research projects. The MII modules are conceptual constructs for data preparation and have no inherent meaning regarding completeness — a research project on rare diseases will typically combine data from several modules.

-------

The data collected at clinical workstations according to the RD module and prepared in data integration centers shall:

* Be available at the **clinical workstations**, where they are collected as part of the **care documentation**, for local support of care,
* Be available as KDS module "Rare Diseases" of the [MII KDS](https://www.medizininformatik-initiative.de/de/der-kerndatensatz-der-medizininformatik-initiative) via the **data integration centers** in the MII and in the NUM for **distributed and central analyses**,
* Be transmitted as [ERDRI CDS](https://eu-rd-platform.jrc.ec.europa.eu/sites/default/files/CDS/JRC-2018-00192-00-00-DE-TRA-00-Final.pdf) (with the consent of those affected) to the relevant **registries** of the European Reference Networks,
* Be transmitted as [NARSE data set](https://www.narse.de/fileadmin/narse/2025-01-30_NARSE_Datenelemente_DE_V1.2.pdf) (with the consent of those affected) to the **central NARSE** for its application scenarios,
* Form, as **MBDS-SE.de** following the European and French model, the initial core for the design of disease-group- and disease-specific documentation in the sense of a **federated NARSE network of a national health data space** for rare diseases (including the DIC of the university hospitals),
* Be included as MBDS-SE.de in **patient-led documentation** in order to be able to link it with other documentation in the health data space for RD in the federated NARSE network,
* Promote the **networking of affected persons** via the [Research Data Portal for Health (FDPG)](https://forschen-fuer-gesundheit.de/) of MII/NUM, the [Virtual Platform of the European Rare Disease Research Alliance (ERDERA)](https://vp.ejprarediseases.org/) and further platforms accredited by the data holders, support **finding patients for research projects**, and advance the **consideration** of rare diseases in German and European **health reporting**.

