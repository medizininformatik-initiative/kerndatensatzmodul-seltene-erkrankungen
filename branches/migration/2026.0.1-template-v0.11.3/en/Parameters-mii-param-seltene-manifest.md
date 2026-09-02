# mii-param-seltene-manifest - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-param-seltene-manifest**

## Parameters: mii-param-seltene-manifest



## Resource Content

```json
{
  "resourceType" : "Parameters",
  "id" : "mii-param-seltene-manifest",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-manifestparameters"]
  },
  "parameter" : [{
    "name" : "system-version",
    "valueCanonical" : "http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20250701"
  },
  {
    "name" : "system-version",
    "valueCanonical" : "http://terminology.hl7.org/CodeSystem/artifact-version-policy-codes|3.0.0"
  },
  {
    "name" : "system-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-empfehlung-status-begruendung|2027.0.0-ballot"
  },
  {
    "name" : "system-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-hpo-change-status|2027.0.0-ballot"
  },
  {
    "name" : "system-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-icf-beurteilungsmerkmal|2027.0.0-ballot"
  },
  {
    "name" : "system-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-narse-therapietyp|2027.0.0-ballot"
  },
  {
    "name" : "system-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-therapieempfehlung-strategie|2027.0.0-ballot"
  },
  {
    "name" : "system-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-therapieempfehlung-typ|2027.0.0-ballot"
  },
  {
    "name" : "system-version",
    "valueCanonical" : "http://terminology.hl7.org/CodeSystem/v2-0532|3.0.0"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/Condition|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-diagnosis|2027.0.0-ballot"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-genetic-diagnosis|2027.0.0-ballot"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-symptom-condition|2027.0.0-ballot"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/Resource-id|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/Resource-profile|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/clinical-code|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/clinical-patient|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/Condition-encounter|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/Condition-onset-date|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/Condition-recorded-date|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/Condition-category|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/Condition-clinical-status|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/Condition-verification-status|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/ClinicalImpression|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-clinical-impression|2027.0.0-ballot"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/ClinicalImpression-subject|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/ClinicalImpression-encounter|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/ClinicalImpression-status|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/Observation|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hpo-assessment|2027.0.0-ballot"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-bodymassindex|2027.0.0-ballot"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-blutgruppe|2027.0.0-ballot"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/Observation-based-on|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/Observation-category|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/Observation-code-value-concept|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/Observation-code-value-date|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/Observation-code-value-quantity|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/Observation-code-value-string|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/Observation-component-code|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/Observation-component-code-value-concept|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/Observation-component-code-value-quantity|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/Observation-component-data-absent-reason|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/Observation-component-value-concept|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/Observation-component-value-quantity|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/Observation-data-absent-reason|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/clinical-date|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/Observation-derived-from|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/Observation-device|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/clinical-encounter|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/Observation-focus|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/Observation-has-member|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/clinical-identifier|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/Observation-method|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/Observation-part-of|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/Observation-performer|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/Observation-specimen|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/Observation-status|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/Observation-subject|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/Observation-value-concept|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/Observation-value-date|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/Observation-value-quantity|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/Observation-value-string|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/ResearchStudy|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-studie|2027.0.0-ballot.rc1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/ResearchStudy-status|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/ResearchStudy-title|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/ResearchStudy-identifier|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/ServiceRequest|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-studieneinschluss-anfrage|2027.0.0-ballot"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung-nicht-medikamentoes|2027.0.0-ballot"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/ServiceRequest-subject|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/ServiceRequest-status|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/ServiceRequest-authored|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/MedicationRequest|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung|2027.0.0-ballot"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung-kombination|2027.0.0-ballot"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/MedicationRequest-subject|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/medications-status|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/MedicationRequest-intent|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/Task|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/Task-based-on|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/Task-code|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/Task-encounter|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/Task-focus|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/Task-intent|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/Task-patient|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/Task-performer|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/Task-requester|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/Task-status|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/Task-subject|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-task-reasoncode|2027.0.0-ballot.rc3"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-task-reasonreference|2027.0.0-ballot.rc3"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-task-for|2027.0.0-ballot.rc3"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/CarePlan|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieplan|2027.0.0-ballot"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/CarePlan-status|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/FamilyMemberHistory|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-familienanamnese|2027.0.0-ballot"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/FamilyMemberHistory-relationship|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/FamilyMemberHistory-sex|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/SearchParameter/FamilyMemberHistory-status|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-familymemberhistory-reasonreference|2027.0.0-ballot.rc3"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableimplementationguide|2.0.0"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableimplementationguide|2.0.0"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-implementationguide|2.0.0"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-geburtsgewicht|2027.0.0-ballot"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-geburtslaenge|2027.0.0-ballot"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-gestationsalter|2027.0.0-ballot"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapie-durchgefuehrt|2027.0.0-ballot"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-registerteilnahme|2027.0.0-ballot"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-consanguinity|2027.0.0-ballot"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hueftumfang|2027.0.0-ballot"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-icf-assessment|2027.0.0-ballot"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-kopfumfang|2027.0.0-ballot"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-taillenumfang|2027.0.0-ballot"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/Element|4.0.1"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-hpo-age-of-onset|2027.0.0-ballot"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-genetic-basis|2027.0.0-ballot"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-hpo-inheritance-pattern|2027.0.0-ballot"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-penetrance|2027.0.0-ballot"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/Library|4.0.1"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "http://hl7.org/fhir/ValueSet/age-units|4.0.1"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-syndrome-category|2027.0.0-ballot"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/organization-period|5.3.0"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/DomainResource|4.0.1"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "http://hl7.org/fhir/ValueSet/all-languages|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/Patient|4.0.1"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-blutgruppe|2027.0.0-ballot"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose|2027.0.0-ballot.rc1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/condition-related|5.3.0"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/condition-assertedDate|5.3.0"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://fhir.de/StructureDefinition/CodingICD10GM|1.6.0"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/ValueSet/mii-vs-diagnose-icd10gm|2027.0.0-ballot.rc1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://fhir.de/StructureDefinition/icd-10-gm-mehrfachcodierungs-kennzeichen|1.6.0"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "http://fhir.de/ValueSet/icd-10-gm-mehrfachcodierungs-kennzeichen|1.6.0"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://fhir.de/StructureDefinition/seitenlokalisation|1.6.0"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://fhir.de/StructureDefinition/icd-10-gm-diagnosesicherheit|1.6.0"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://fhir.de/StructureDefinition/CodingAlphaID|1.6.0"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/ValueSet/mii-vs-diagnose-alphaid|2027.0.0-ballot.rc1"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/ValueSet/diagnoses-sct|2027.0.0-ballot.rc1"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/ValueSet/mii-vs-diagnose-orphanet|2027.0.0-ballot.rc1"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-hpo-phenotypic-observation-codes|2027.0.0-ballot"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/bodySite|5.3.0"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/ValueSet/mii-vs-diagnose-bodystructure-snomed|2027.0.0-ballot.rc1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://fhir.de/StructureDefinition/lebensphase|1.6.0"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "http://fhir.de/ValueSet/lebensphase-de|1.6.0"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "http://hl7.org/fhir/ValueSet/clinicalimpression-status|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/DiagnosticReport|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/RiskAssessment|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/DocumentReference|4.0.1"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-consanguinity|2027.0.0-ballot"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/familienanamnese|2026.0.4"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "http://hl7.org/fhir/ValueSet/languages|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/von-seltene-betroffen|2027.0.0-ballot"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/PlanDefinition|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/Questionnaire|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/ActivityDefinition|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/Measure|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/OperationDefinition|4.0.1"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "http://hl7.org/fhir/ValueSet/history-absent-reason|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/Reference|4.0.1"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "http://terminology.hl7.org/ValueSet/v3-FamilyMember|3.0.0"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/ValueSet/mii-vs-molgen-family-member-snomed|2026.0.4"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/mii-ex-molgen-verwandtschaftsgrad|2026.0.4"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/mii-ex-molgen-verwandtschaftsverhaeltnis|2026.0.4"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/mii-ex-molgen-familiare-linie|2026.0.4"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "http://terminology.hl7.org/ValueSet/v3-PersonalRelationshipRoleType|3.0.0"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "http://hl7.org/fhir/ValueSet/administrative-gender|4.0.1"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "http://hl7.org/fhir/ValueSet/clinical-findings|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/AllergyIntolerance|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-penetrance|2027.0.0-ballot"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "http://hl7.org/fhir/ValueSet/condition-code|4.0.1"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "http://hl7.org/fhir/ValueSet/condition-outcome|4.0.1"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "http://hl7.org/fhir/ValueSet/body-site|4.0.1"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "http://hl7.org/fhir/ValueSet/observation-methods|4.0.1"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-hpo-presence-status|2027.0.0-ballot"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-symptom-change-status-combined|2027.0.0-ballot"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-hpo-severity|2027.0.0-ballot"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-icf|2027.0.0-ballot"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mii-pr-icu-muv-kopfumfang|2026.0.3"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://fhir.de/StructureDefinition/observation-de-vitalsign|1.6.0"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/DeviceRequest|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/ImmunizationRecommendation|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/NutritionOrder|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/MedicationAdministration|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/MedicationDispense|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/MedicationStatement|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/Procedure|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/Immunization|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/ImagingStudy|4.0.1"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "http://hl7.org/fhir/ValueSet/observation-category|4.0.1"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "http://hl7.org/fhir/ValueSet/observation-codes|4.0.1"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "http://fhir.de/ValueSet/VitalSignDE-Kopfumfang-SNOMED-CT|1.6.0"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/Resource|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/Encounter|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/Practitioner|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/PractitionerRole|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/Organization|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/CareTeam|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/RelatedPerson|4.0.1"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "http://fhir.de/ValueSet/VitalSignDE_Body_Length_UCUM|1.6.0"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "http://fhir.de/ValueSet/UcumVitalsCommonDE|1.6.0"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "http://hl7.org/fhir/ValueSet/data-absent-reason|4.0.1"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "http://hl7.org/fhir/ValueSet/observation-interpretation|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/Specimen|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/Device|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/DeviceMetric|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/SimpleQuantity|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/Quantity|4.0.1"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "http://hl7.org/fhir/ValueSet/referencerange-meaning|4.0.1"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "http://hl7.org/fhir/ValueSet/referencerange-appliesto|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/Range|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/MolecularSequence|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/Media|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/ResearchSubject|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-register|2027.0.0-ballot"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/request-statusReason|5.3.0"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-prioritaet|2027.0.0-ballot"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-publikation|2027.0.0-ballot"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "http://terminology.hl7.org/ValueSet/v3-ServiceDeliveryLocationRoleType|3.0.0"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "http://hl7.org/fhir/ValueSet/condition-clinical|4.0.1"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "http://hl7.org/fhir/ValueSet/condition-ver-status|4.0.1"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-narse-therapietyp|2027.0.0-ballot"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/RequestGroup|4.0.1"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-therapieempfehlung-strategie-nicht-medikamentoes|2027.0.0-ballot"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-therapieempfehlung-typ|2027.0.0-ballot"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "http://hl7.org/fhir/ValueSet/procedure-code|4.0.1"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "http://fhir.de/ValueSet/bfarm/ops|1.5.4"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest|2026.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/StructureDefinition|4.0.1"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "http://hl7.org/fhir/ValueSet/security-labels|4.0.1"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "http://hl7.org/fhir/ValueSet/common-tags|4.0.1"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "http://hl7.org/fhir/ValueSet/medicationrequest-status-reason|4.0.1"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "http://hl7.org/fhir/ValueSet/medicationrequest-category|4.0.1"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-therapieempfehlung-strategie-medikamentoes|2027.0.0-ballot"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/Medication|4.0.1"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "http://hl7.org/fhir/ValueSet/medication-codes|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication|2026.0.1"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/ValueSet/mii-vs-medikation-atc|2026.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/Group|4.0.1"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "http://hl7.org/fhir/ValueSet/performer-role|4.0.1"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "http://hl7.org/fhir/ValueSet/medicationrequest-course-of-therapy|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/Coverage|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/ClaimResponse|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://ig.fhir.de/igs/medication/StructureDefinition/DosageDE|1.0.0"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "http://hl7.org/fhir/ValueSet/additional-instruction-codes|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://ig.fhir.de/igs/medication/StructureDefinition/TimingDE|1.0.0"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/Timing|4.0.1"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "http://hl7.org/fhir/ValueSet/timing-abbreviation|4.0.1"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "http://hl7.org/fhir/ValueSet/medication-as-needed-reason|4.0.1"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "http://hl7.org/fhir/ValueSet/approach-site-codes|4.0.1"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "http://hl7.org/fhir/ValueSet/route-codes|4.0.1"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "http://hl7.org/fhir/uv/ips/ValueSet/medicine-route-of-administration|2.0.0"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "http://hl7.org/fhir/ValueSet/administration-method-codes|4.0.1"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "http://hl7.org/fhir/ValueSet/dose-rate-type|4.0.1"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "http://ig.fhir.de/igs/medication/ValueSet/DosageDoseQuantityDE|1.0.0"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/Ratio|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/Duration|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/Period|4.0.1"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "http://terminology.hl7.org/ValueSet/v3-ActSubstanceAdminSubstitutionCode|3.0.0"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "http://terminology.hl7.org/ValueSet/v3-SubstanceAdminSubstitutionReason|3.0.0"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/DetectedIssue|4.0.1"
  },
  {
    "name" : "default-canonical-version",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/Provenance|4.0.1"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/mii-vs-seltene-empfehlung-status-begruendung|2027.0.0-ballot"
  },
  {
    "name" : "default-valueset-version",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ValueSet/von-seltene-betroffen-vs|2027.0.0-ballot"
  }]
}

```
