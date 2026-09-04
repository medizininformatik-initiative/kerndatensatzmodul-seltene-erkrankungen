<!-- TODO:REVIEW machine translation (en) of intro note; Quelle: MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/Familienanamnese/Familienanamnese-FamilyMemberHistory.page.md (Simplifier-Guide 2026.0.1, migriert 2026-08-28, Direktiven gestript) -->
This profile describes the family history in the context of rare diseases. It enables the structured recording of diseases in family members, with a particular focus on genetic and hereditary components of rare diseases.

**Important:** A **separate FamilyMemberHistory resource** is created for **each family member**. A family member can have several diseases, all of which are documented in the same resource under `condition`. To document the **death of the index patient** due to a rare disease, a FamilyMemberHistory resource with `relationship.coding[snomed] = 116154003 | Patient |` can also be created (see section "For the index patient" below).

### Clinical relevance

The family history is of particular importance in rare diseases, as many of these diseases have a genetic component. Structured recording enables:
- Identification of familial clustering
- Assessment of the inheritance pattern
- Risk stratification for relatives
- Planning of genetic counseling and testing

### Death due to a rare disease

Whether a disease contributed to death is documented via the standard FHIR element `FamilyMemberHistory.condition.contributedToDeath`. This boolean element is MustSupport and enables a clear association between a specific disease and the death.

#### For family members

Document the death of a family member due to a rare disease as follows:
- `relationship`: family relationship (e.g. father, mother, sibling)
- `deceased[x]`: time or age of death
- `condition.code`: the rare disease with ICD-10-GM, ORPHAcodes or SNOMED CT
- `condition.contributedToDeath = true`: indication that this disease contributed to death

#### For the index patient

The FamilyMemberHistory profile can also be used to document the **death of the index patient** due to a rare disease:
- `relationship.coding[snomed]`: set to `116154003 | Patient |` (available in the MolGen ValueSet)
- `patient`: reference to the index patient
- `deceased[x]`: time or age of death of the patient
- `condition.code`: the rare disease that led to death
- `condition.contributedToDeath = true`

This modeling enables uniform documentation of deaths due to rare diseases for family members and the patient, without having to extend the Patient profile.

#### Example

```json
{
  "resourceType": "FamilyMemberHistory",
  "status": "completed",
  "patient": {"reference": "Patient/example"},
  "relationship": {
    "coding": [{
      "system": "http://snomed.info/sct",
      "code": "72705000",
      "display": "Mother"
    }]
  },
  "deceasedAge": {"value": 52, "unit": "a", "system": "http://unitsofmeasure.org"},
  "condition": [{
    "code": {
      "coding": [{
        "system": "http://www.orpha.net",
        "code": "558",
        "display": "Marfan-Syndrom"
      }]
    },
    "contributedToDeath": true
  }]
}
```

### MONDO coding (secondary harmonization ontology)

> **Note:** MONDO is a **secondary harmonization ontology** and not a primary diagnostic target. The primary coding of the family disease uses ICD-10-GM, Alpha-ID, SNOMED CT or ORPHAcodes. MONDO codes can **optionally** be added in `condition.code.coding[mondo]`.

MONDO (Monarch Disease Ontology) harmonizes different classifications and enables integration with international standards such as [Phenopackets](https://phenopacket-schema.readthedocs.io/) and GA4GH. Further information can be found under [Terminologies](code-systems.html).

---

### Mapping of the logical data model to FHIR

The following mapping shows the family history elements from the logical data model for rare diseases:

### Assignment to FHIR elements

The elements of the logical data model are mapped to the FamilyMemberHistory profile as follows:

| Logical data model | FHIR path | Explanation |
|----------------------|-----------|-------------|
| Familienanamnese.Verwandtschaftsverhaeltnis | FamilyMemberHistory.relationship | Biological relationship to the index patient |
| Familienanamnese.Geschlecht | FamilyMemberHistory.sex | Sex of the family member |
| Familienanamnese.GleicheSE | FamilyMemberHistory.condition.code | If the code is identical to the index patient's diagnosis |
| Familienanamnese.AndereSE | FamilyMemberHistory.condition.code | If the code differs from the index patient's diagnosis |
| Familienanamnese.Penetranz | FamilyMemberHistory.condition.extension:penetranz | Extension for missing clinical penetrance despite a genetic diagnosis in family members |
| Familienanamnese.FamilienmitgliedVerstorben | FamilyMemberHistory.deceased[x] | Vital status of the family member |
| Familienanamnese.TodDurchSE | FamilyMemberHistory.condition.contributedToDeath | Indicates whether the disease contributed to death |

---

**Search parameters** are declared module-wide in the [CapabilityStatement](CapabilityStatement-mii-cps-seltene-capabilitystatement.html) &mdash; machine-readable and complete there, rather than repeated by hand per profile.

Example instances are linked in the "Examples" section of the profile page.
