// ─────────────────────────────────────────────────────────────────────────────
// Ported from kerndatensatz-basis (main): input/fsh/rulesets/crmi.fsh
//
// CRMI (Canonical Resource Management Infrastructure) metadata rulesets. The IG
// itself claims the CRMI shareable/publishable/computable ImplementationGuide
// profiles in sushi-config.yaml (`meta.profile`); these rulesets make the
// individual artifacts claim the matching CRMI profiles and carry the same
// metadata. The hl7.fhir.uv.crmi dependency in sushi-config.yaml is what makes
// them resolvable.
//
// Use CARET paths (`^…`) for resources declared with a FSH keyword — Profile,
// Extension, Logical, ValueSet, CodeSystem. Use INSTANCE paths for `InstanceOf:`
// resources such as CapabilityStatement or Parameters; those RuleSets carry the
// `…Instance` suffix.
//
// basis literals replaced by this repository's placeholders:
//   "2019+ Medical Informatics Initiative (MII)" → "2022+ …"
//   the basis artifact-author contact email      → thomas.debertshaeuser@charite.de
// The approval date and the artifact topic stay RuleSet PARAMETERS (as in
// basis); pass 2026-08-28 / C4873 at the call site.
// ─────────────────────────────────────────────────────────────────────────────

// ── Resource-independent version policy ──────────────────────────────────────

RuleSet: CRMIVersionPolicyStrict
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-versionPolicy"
* ^extension[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/artifact-version-policy-codes#package "Package"

RuleSet: CRMIVersionPolicyStrictInstance
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-versionPolicy"
* extension[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/artifact-version-policy-codes#package "Package"

// ── Copyright label ──────────────────────────────────────────────────────────
// basis notes that there is currently no resource type in the module where
// artifact-copyrightLabel is useful (and that the R5 cross-version extension is
// preferable where applicable) — the RuleSets are kept so a module that needs
// them does not re-invent the wording.

RuleSet: CRMICopyrightLabel
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-copyrightLabel"
* ^extension[=].valueString = "2022+ Medical Informatics Initiative (MII)"

RuleSet: CRMICopyrightLabelInstance
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-copyrightLabel"
* extension[=].valueString = "2022+ Medical Informatics Initiative (MII)"

// ── Approval date (StructureDefinition, CapabilityStatement, IG) ─────────────
// Call with the module's approval date, e.g. `insert CRMIApprovalDate(2026-08-28)`.

RuleSet: CRMIApprovalDate(approvalDate)
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/resource-approvalDate"
* ^extension[=].valueDate = "{approvalDate}"

RuleSet: CRMIApprovalDateInstance(approvalDate)
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/resource-approvalDate"
* extension[=].valueDate = "{approvalDate}"

// ── Artifact topic (StructureDefinition, CapabilityStatement, IG, CS, VS) ────
// MII codes module topics with the NCI Thesaurus. Call with the system and the
// module's topic code, e.g.
//   insert CRMIArtifactTopic(http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl, C4873)
// Repeat the insert for each topic of the module.

RuleSet: CRMIArtifactTopic(system, code)
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-topic"
* ^extension[=].valueCodeableConcept.coding[+] = {system}#{code}

RuleSet: CRMIArtifactTopicInstance(system, code)
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-topic"
* extension[=].valueCodeableConcept.coding[+] = {system}#{code}

// ── Artifact contributors ────────────────────────────────────────────────────
// Author = the module author, decided 2026-09-02 and identical to the address
// carried by the ImplementationGuide itself (sushi-config.yaml). Editor / reviewer /
// endorser are the MII-wide governance bodies and apply to every KDS module —
// the same values sushi-config.yaml sets on the IG resource. Adjust only if your
// module's governance differs.

RuleSet: CRMIArtifactContributors
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-author"
* ^extension[=].valueContactDetail.telecom[+].system = #email
* ^extension[=].valueContactDetail.telecom[=].value = "thomas.debertshaeuser@charite.de"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-editor"
* ^extension[=].valueContactDetail.name = "Taskforce Core Data Set"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-reviewer"
* ^extension[=].valueContactDetail.name = "Interoperability Working Group"
* ^extension[=].valueContactDetail.telecom[+].system = #url
* ^extension[=].valueContactDetail.telecom[=].value = "https://www.medizininformatik-initiative.de/en/collaboration/interoperability-working-group"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-reviewer"
* ^extension[=].valueContactDetail.name = "National Steering Committee"
* ^extension[=].valueContactDetail.telecom[+].system = #url
* ^extension[=].valueContactDetail.telecom[=].value = "https://www.medizininformatik-initiative.de/en/collaboration/national-steering-committee"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-endorser"
* ^extension[=].valueContactDetail.name = "Interoperability Working Group"
* ^extension[=].valueContactDetail.telecom[+].system = #url
* ^extension[=].valueContactDetail.telecom[=].value = "https://www.medizininformatik-initiative.de/en/collaboration/interoperability-working-group"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-endorser"
* ^extension[=].valueContactDetail.name = "National Steering Committee"
* ^extension[=].valueContactDetail.telecom[+].system = #url
* ^extension[=].valueContactDetail.telecom[=].value = "https://www.medizininformatik-initiative.de/en/collaboration/national-steering-committee"

RuleSet: CRMIArtifactContributorsInstance
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-author"
* extension[=].valueContactDetail.telecom[+].system = #email
* extension[=].valueContactDetail.telecom[=].value = "thomas.debertshaeuser@charite.de"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-editor"
* extension[=].valueContactDetail.name = "Taskforce Core Data Set"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-reviewer"
* extension[=].valueContactDetail.name = "Interoperability Working Group"
* extension[=].valueContactDetail.telecom[+].system = #url
* extension[=].valueContactDetail.telecom[=].value = "https://www.medizininformatik-initiative.de/en/collaboration/interoperability-working-group"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-reviewer"
* extension[=].valueContactDetail.name = "National Steering Committee"
* extension[=].valueContactDetail.telecom[+].system = #url
* extension[=].valueContactDetail.telecom[=].value = "https://www.medizininformatik-initiative.de/en/collaboration/national-steering-committee"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-endorser"
* extension[=].valueContactDetail.name = "Interoperability Working Group"
* extension[=].valueContactDetail.telecom[+].system = #url
* extension[=].valueContactDetail.telecom[=].value = "https://www.medizininformatik-initiative.de/en/collaboration/interoperability-working-group"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-endorser"
* extension[=].valueContactDetail.name = "National Steering Committee"
* extension[=].valueContactDetail.telecom[+].system = #url
* extension[=].valueContactDetail.telecom[=].value = "https://www.medizininformatik-initiative.de/en/collaboration/national-steering-committee"

// ── StructureDefinition ──────────────────────────────────────────────────────

RuleSet: CRMIShareableStructureDefinition
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablestructuredefinition"

RuleSet: CRMIPublishableStructureDefinition
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablestructuredefinition"

RuleSet: CRMIKnowledgeCapabilitiesStructureDefinition
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* ^extension[=].valueCode = #shareable
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* ^extension[=].valueCode = #publishable

RuleSet: CRMIArtifactUsageLogicalModel
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-usage"
* ^extension[=].valueMarkdown = "Use this logical model as the module-specific information model for the Medical Informatics Initiative core dataset. The model describes clinically or administratively relevant information in a domain-oriented form and provides a bridge between the conceptual content specification and the corresponding technical FHIR profiles. It is a pattern for describing the intended content model and is not intended to be exchanged as a concrete FHIR resource instance. Implementers should use it to understand the scope, semantics, and structure of the module before applying the related FHIR profiles and mappings."

RuleSet: CRMIArtifactUsageProfile
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-usage"
* ^extension[=].valueMarkdown = "Use this profile as the technical FHIR representation of the corresponding Medical Informatics Initiative logical model. The profile constrains a base FHIR resource for the MII module context by specifying how elements are used, which elements are required or not used, which extensions and terminology bindings apply, and how the resource maps to the module-specific content model. Implementers should produce and consume resource instances that conform to this profile when exchanging data for the corresponding MII module."

RuleSet: CRMIArtifactUsageExtension
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-usage"
* ^extension[=].valueMarkdown = "Use this extension to exchange data for content of the corresponding Medical Informatics Initiative logical model that is not represented in the FHIR core resource structure."

// ── CapabilityStatement ──────────────────────────────────────────────────────

RuleSet: CRMIShareableCapabilityStatement
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablecapabilitystatement"

RuleSet: CRMIPublishableCapabilityStatement
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablecapabilitystatement"

RuleSet: CRMIKnowledgeCapabilitiesCapabilityStatement
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* extension[=].valueCode = #shareable
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* extension[=].valueCode = #publishable

RuleSet: CRMIArtifactUsageCapabilityStatement
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-usage"
* extension[=].valueMarkdown = "Use this CapabilityStatement to determine the minimum RESTful server capabilities required for a system that implements the corresponding module of the Medical Informatics Initiative core dataset. It lists the FHIR resource types and MII profiles that SHALL be supported, together with required interactions, supported formats, and search parameters for read and search access. Systems claiming conformance to the module are expected to implement the listed capabilities according to the stated conformance expectations."

// ── CodeSystem ───────────────────────────────────────────────────────────────

RuleSet: CRMIShareableCodeSystem
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablecodesystem"

RuleSet: CRMIPublishableCodeSystem
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablecodesystem"

RuleSet: CRMIKnowledgeCapabilitiesCodeSystem
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* ^extension[=].valueCode = #shareable
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* ^extension[=].valueCode = #publishable

RuleSet: CRMIKnowledgeCapabilitiesCodeSystemPublishable
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* ^extension[=].valueCode = #publishable

// ── ValueSet ─────────────────────────────────────────────────────────────────

RuleSet: CRMIShareableValueSet
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablevalueset"

RuleSet: CRMIPublishableValueSet
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablevalueset"

RuleSet: CRMIComputableValueSet
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-computablevalueset"

RuleSet: CRMIKnowledgeCapabilitiesValueSet
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* ^extension[=].valueCode = #shareable
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* ^extension[=].valueCode = #publishable
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* ^extension[=].valueCode = #computable

// ── Sammel-RuleSets je Artefakttyp ───────────────────────────────────────────
//
// Angelegt 2026-09-11. Bis dahin war crmi.fsh vollstaendig aus base portiert,
// aber NIRGENDS aufgerufen: der ImplementationGuide beanspruchte die drei
// CRMI-IG-Profile (ueber sushi-config.yaml), die 64 eigenen Artefakte keines.
// Gemessen trugen meta 3 von 3 und base 33 von 34 ihrer Artefakte ein
// CRMI-Profil, dieses Modul 0 von 64.
//
// Ein Aufruf je Artefakt statt acht: die Bausteine oben bleiben einzeln
// verfuegbar, der Regelfall ist aber genau eine Zeile. Die Parameter
// (Freigabedatum, NCI-Thema) stehen hier EINMAL und stammen aus
// sushi-config.yaml -- dort sind sie am 2026-09-02 entschieden worden.
//
// experimental steht bewusst NICHT in diesen RuleSets: 18 Artefakte setzen es
// bereits selbst, und eine zweite Zuweisung desselben Wertes waere Rauschen.
// Wo es fehlte, ist es am Artefakt ergaenzt worden.
//
// KEIN Computable-Profil auf ValueSets: crmi-computablevalueset verlangt eine
// compose-Definition, die nicht jedes ValueSet dieses Moduls hat. base setzt es
// ebenfalls nur auf einem von vierzehn. Die knowledgeCapability #computable
// bleibt davon unberuehrt -- sie beschreibt, was der Server kann, nicht was die
// Ressource behauptet.

RuleSet: CRMIProfileMetadata
* insert CRMIShareableStructureDefinition
* insert CRMIPublishableStructureDefinition
* insert CRMIKnowledgeCapabilitiesStructureDefinition
* insert CRMIArtifactUsageProfile
* insert CRMIVersionPolicyStrict
* insert CRMIApprovalDate(2026-09-02)
* insert CRMIArtifactTopic(http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl, C4873)
* insert CRMIArtifactContributors

RuleSet: CRMIExtensionMetadata
* insert CRMIShareableStructureDefinition
* insert CRMIPublishableStructureDefinition
* insert CRMIKnowledgeCapabilitiesStructureDefinition
* insert CRMIArtifactUsageExtension
* insert CRMIVersionPolicyStrict
* insert CRMIApprovalDate(2026-09-02)
* insert CRMIArtifactTopic(http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl, C4873)
* insert CRMIArtifactContributors

RuleSet: CRMILogicalModelMetadata
* insert CRMIShareableStructureDefinition
* insert CRMIPublishableStructureDefinition
* insert CRMIKnowledgeCapabilitiesStructureDefinition
* insert CRMIArtifactUsageLogicalModel
* insert CRMIVersionPolicyStrict
* insert CRMIApprovalDate(2026-09-02)
* insert CRMIArtifactTopic(http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl, C4873)
* insert CRMIArtifactContributors

RuleSet: CRMIValueSetMetadata
* insert CRMIShareableValueSet
* insert CRMIPublishableValueSet
* insert CRMIKnowledgeCapabilitiesValueSet
* insert CRMIVersionPolicyStrict
* insert CRMIApprovalDate(2026-09-02)
* insert CRMIArtifactTopic(http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl, C4873)
* insert CRMIArtifactContributors

RuleSet: CRMICodeSystemMetadata
* insert CRMIShareableCodeSystem
* insert CRMIPublishableCodeSystem
* insert CRMIKnowledgeCapabilitiesCodeSystem
* insert CRMIVersionPolicyStrict
* insert CRMIApprovalDate(2026-09-02)
* insert CRMIArtifactTopic(http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl, C4873)
* insert CRMIArtifactContributors

// ── Profile mit MII-Elternprofil ─────────────────────────────────────────────
//
// Drei Profile leiten nicht von einer nackten FHIR-Ressource ab, sondern von
// einem Profil eines Nachbarmoduls:
//
//   MII_PR_Seltene_ClinicalDiagnosis   → base   .../modul-diagnose/…/Diagnose
//   MII_PR_Seltene_GeneticDiagnosis    → base   .../modul-diagnose/…/Diagnose
//   MII_PR_Seltene_Therapieempfehlung  → medikation .../MedicationRequest
//
// Deren StructureDefinition traegt bereits 14 eigene Metadaten-Extensions, und
// SUSHI setzt die des Kindes AUF DIESE DRAUF: ^extension[+] zaehlt ab dem
// geerbten Bestand, trifft indexweise auf fremde value[x]-Typen und erzeugt
// "multiple choice value assignments for choice element
// StructureDefinition.extension.value[x]" (gemessen 2026-09-11: 7 Fehler).
//
// Deshalb beanspruchen diese drei nur die CRMI-Profile und verzichten auf die
// Metadaten-Extensions — die kommen ohnehin vom Elternprofil.
//
// ACHTUNG, offener Punkt fuer den Ballot: dadurch tragen sie die Metadaten des
// ELTERNMODULS. Die publizierte rc1 nennt bei allen dreien
// artifact-author = julian.sass@charite.de, also den Autor von base, nicht den
// dieses Moduls. Das ist aelter als diese Aenderung und in FSH nicht sauber zu
// ueberschreiben: ein geerbtes valueCoding laesst sich nicht durch ein
// valueCode am selben Index ersetzen, ohne dass beide stehen bleiben. Zu
// klaeren ist, ob ein abgeleitetes Profil die Metadaten seines Elternmoduls
// ueberhaupt erben sollte — die Frage gehoert nach oben, nicht in dieses Modul.

RuleSet: CRMIProfileMetadataInherited
* insert CRMIShareableStructureDefinition
* insert CRMIPublishableStructureDefinition

RuleSet: CRMICapabilityStatementMetadata
* insert CRMIShareableCapabilityStatement
* insert CRMIPublishableCapabilityStatement
* insert CRMIKnowledgeCapabilitiesCapabilityStatement
* insert CRMIArtifactUsageCapabilityStatement
* insert CRMIVersionPolicyStrictInstance
* insert CRMIApprovalDateInstance(2026-09-02)
* insert CRMIArtifactTopicInstance(http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl, C4873)
* insert CRMIArtifactContributorsInstance
