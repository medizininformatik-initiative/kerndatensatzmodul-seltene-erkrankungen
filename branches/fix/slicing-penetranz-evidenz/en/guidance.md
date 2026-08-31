# Guidance - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* **Guidance**

## Guidance

Following the model of the European data set ([CDS-ERDRI.eu](https://eu-rd-platform.jrc.ec.europa.eu/sites/default/files/CDS/JRC-2018-00192-00-00-DE-TRA-00-Final.pdf)) and the French data set ([SDM-MR.fr](https://www.bndmr.fr/les-donnees-collectees/le-set-de-donnees-minimal/)), this IG derives the goal of striving for the documentation of uniform, interoperable minimal base data sets in as many institutions as possible, at as many clinical workstations as possible, for as many people affected by rare diseases as possible, as well as by affected persons themselves.

These minimal base data sets shall be usable both locally and across institutions in a manner compliant with data protection and in as many ways as possible. More specific, more differentiated documentation may build on them, oriented on the structure of the **European Reference Networks for Rare and Complex Diseases (ERN)**. Collection and use shall be designed and tested in selected application scenarios.

> **Written during migration - review before release.** Detailed guidance for this module: [Guide: Clinical vs. Genetic Diagnosis](clinical-genetic-diagnosis-guide.md) · [Coding best practices for rare diseases](coding-best-practices.md)

### Application scenario: treatment of a rare disease, example spinal muscular atrophy (SMA)

**History**

In a newborn girl, newborn screening on 2024-07-18 raises the suspicion of **spinal muscular atrophy (SMA)**. The parents are advised to present at a center specializing in the treatment of SMA; two centers are recommended to them. 
 Apart from an unknown muscle disease of the great-grandmother, the **family history is unremarkable**.

**Therapy and course:**

The parents present their child at one of these centers on 2024-07-22 as outpatients. At the center, a molecular genetics report from EDTA blood is obtained on 2024-07-26. It provides the **molecular genetic confirmation** of SMA and confirms the clinical suspicion of the newborn screening. In detail, the report yields the following result:

1. 0 copies of the SMN1 gene
1. 2 copies of the SMN2 gene

This result is assessed as disease-causing. The admission diagnosis documented on 2024-07-22 as **ICD-10-GM G12.0 "Infantile spinal muscular atrophy type 1"** is thus confirmed. Since the diagnosis is coded in the coding tool of the hospital's clinical workstation system (KAS), the matching **ORPHAcode ORPHA:83330** is documented in addition.

The child's parents are recommended treatment with a gene therapeutic; two further drugs are named as treatment alternatives. After a short period of reflection, the parents decide in favor of **treatment with the gene therapeutic.**

The **gene therapeutic** is administered without complications during an inpatient stay at the center on 2024-07-29, with prior administration of prednisolone. A laboratory examination is performed by default at inpatient admission. The further course in hospital is unremarkable. Post-therapeutically, the laboratory values for ALT and AST as well as the platelet count are within normal limits.

During the inpatient stay the SMA is again documented with **G12.0** according to ICD-10-GM and the ORPHAcode ORPHA:83330. The gene therapy is documented as a **procedure per SOP** with the **code 6-00d.0** in the KAS.

At discharge, the parents are recommended a follow-up presentation at a pediatric practice and continuation of the therapy with **prednisolone**. Human genetic counseling and presentation at the social-pediatric center are arranged. A patient-specific follow-up plan at the center is agreed with the parents.

**Follow-up**

At the first outpatient follow-up appointment at the center on 2024-08-12, the clinical examination including laboratory is performed. The values for ALT and AST as well as the platelet count are normal, but **troponin T hs is elevated at 106 ng/l** — the previous course values were 57 ng/l on 2025-08-01, 58 ng/l on 2025-07-28 and 92 ng/l on 2025-07-22. Thus troponin T was already elevated before the gene therapy.

-------

### Application scenario: treatment of a rare disease, example Marfan syndrome

**History**

A 19-year-old young man presents as an outpatient on 2024-10-15 with suspected **cataract** and **Marfan syndrome** at the eye clinic of a university hospital. The surgical treatment of the cataract by **phacoemulsification** and subsequent **implantation of a posterior chamber lens (PCL)** is discussed with him. The patient consents, and the surgical procedure is performed without complications on 2024-11-12. The postoperative course is also unremarkable. The young man is advised to present at the university hospital's Marfan center for suspected Marfan syndrome.

The patient follows the medical advice and presents there as an outpatient on 2024-12-15. At this visit he reports having coughed up blood about 3 days earlier, has no fever, but sometimes **pain in the area of the heart**. He has a **body height of 2.13 m** and his **right leg is shortened**. Blood pressure has already been controlled with **losartan**. The **echocardiography** performed reveals a **dilated aortic root**, mild **aortic valve regurgitation**, and an anterior and posterior mitral valve prolapse with minor **mitral regurgitation**. The chest X-ray additionally shows a **straightened thoracic spine**.

The Marfan center concludes that the diagnosis is Marfan syndrome, confirmed according to the Ghent nosology. Major criteria from cardiovascular, ophthalmological and clinical-skeletal perspectives are present. The diagnosis of Marfan syndrome is coded with the **ICD-10-GM code Q87.4** and the corresponding **ORPHAcode ORPHA:558**.

The patient is informed about the possibility of entering the data about his rare disease into a central Germany-wide **"National Registry for Rare Diseases" (NARSE)**. The patient consents and signs the consent form, and his attending physician registers the patient with NARSE and enters the patient's disease data into the registry. In addition to the data on his history and diagnosis, his physician enters the symptoms of his disease reported by the patient in the form of [HPO (Human Phenotype Ontology)](https://hpo.jax.org/) terms. For the pain in the area of the heart she codes, among others, the **HPO term HP:0100749** (chest pain).

The Marfan center considers it absolutely vital for the patient that the arterial blood pressure is strictly controlled and kept low. Systolic blood pressure values should not exceed 130 mmHg and diastolic values should be at most between 80–85 mmHg. They have therefore begun to re-adjust the **losartan** medication and advise close blood pressure monitoring as well as a 24-hour blood pressure measurement. Although the Marfan center already sees an indication for surgery at this point, the measured aortic diameter is still in the lower borderline range; it therefore recommends performing regular check-ups first and planning the aortic root surgery accordingly. The patient agrees to this approach.

**Therapy and course**

The planned procedure of a valve-sparing ascending aortic replacement according to David, **OPS: 5-354.0a**, is performed on 2025-03-15.

