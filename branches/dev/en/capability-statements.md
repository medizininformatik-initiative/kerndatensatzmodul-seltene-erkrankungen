# Capability Statements - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **Capability Statements**

## Capability Statements

The CapabilityStatement defines the expected capabilities of a conformant system implementing the Rare Diseases core data set module of the Medical Informatics Initiative.

Canonical: `https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CapabilityStatement/metadata`

It describes the mandatory interactions a conformant system MUST support, including:

### Supported resources

The system MUST support the following resources:

* **Condition** — for clinical and genetic diagnoses as well as symptoms
* **ClinicalImpression** — for clinical assessments
* **Observation** — for HPO-based phenotypic observations and vital parameters
* **ResearchStudy** — for study information
* **ServiceRequest** — for study enrollment requests
* **Task** — for therapy recommendations
* **CarePlan** — for therapy plans
* **FamilyMemberHistory** — for family history

### Supported interactions

For all resources, at least the following interactions MUST be supported:

* `read` — reading individual resources
* `search-type` — searching for resources of a type

### Supported search parameters

The system MUST support the search parameters defined in the CapabilityStatement for each resource, including:

* Basic search parameters (`_id`, `_lastUpdated`, `_profile`)
* Resource-specific search parameters (e.g. `code`, `subject`, `encounter`)
* Composite search parameters for complex queries

### Conformance

Systems claiming conformance to this module MUST:

1. Fulfill all requirements marked "SHALL" in the CapabilityStatement
1. Support the defined profiles for the respective resources
1. Implement the specified search parameters
1. Use FHIR version 4.0.1

### Complete CapabilityStatement

The complete CapabilityStatement is available in the artifact overview (see [Artifacts](artifacts.md)).

