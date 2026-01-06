# Refactoring Overview: -se- to -seltene-

## Summary
All identifiers, canonicals, and URLs containing `-se-` need to be refactored to `-seltene-` for consistency with German MII naming conventions.

## Affected Files (35 total)
All files in `input/fsh/` directory containing `-se-` references.

## Refactoring Categories

### 1. Profile Definitions (14 profiles)
| Current ID | New ID | File |
|------------|--------|------|
| MII_PR_SE_GeneticDiagnosis | MII_PR_Seltene_GeneticDiagnosis | mii-pr-se-genetic-diagnosis.fsh |
| MII_PR_SE_ClinicalDiagnosis | MII_PR_Seltene_ClinicalDiagnosis | mii-pr-se-clinical-diagnosis.fsh |
| MII_PR_SE_Familienanamnese | MII_PR_Seltene_Familienanamnese | mii-pr-se-familienanamnese.fsh |
| MII_PR_SE_Symptom_Condition | MII_PR_Seltene_Symptom_Condition | mii-pr-se-symptom-condition.fsh |
| MII_PR_SE_ClinicalImpression | MII_PR_Seltene_ClinicalImpression | mii-pr-se-clinical-impression.fsh |
| MII_PR_SE_Blutgruppe | MII_PR_Seltene_Blutgruppe | mii-pr-se-blutgruppe.fsh |
| MII_PR_SE_Bodymassindex | MII_PR_Seltene_Bodymassindex | mii-pr-se-bodymassindex.fsh |
| MII_PR_SE_HPO_Assessment | MII_PR_Seltene_HPO_Assessment | mii-pr-se-hpo-assessment.fsh |
| MII_PR_SE_Studie | MII_PR_Seltene_Studie | mii-pr-se-studie.fsh |
| MII_PR_SE_Therapieempfehlung_Kombination | MII_PR_Seltene_Therapieempfehlung_Kombination | mii-pr-se-therapieempfehlung-kombination.fsh |
| MII_PR_SE_Studieneinschluss_Anfrage | MII_PR_Seltene_Studieneinschluss_Anfrage | mii-pr-se-studieneinschluss-anfrage.fsh |
| MII_PR_SE_TherapieempfehlungNichtMedikamentoes | MII_PR_Seltene_TherapieempfehlungNichtMedikamentoes | mii-pr-se-therapieempfehlung-nicht-medikamentoes.fsh |
| MII_PR_SE_Therapieplan | MII_PR_Seltene_Therapieplan | mii-pr-se-therapieplan.fsh |
| MII_PR_SE_Therapieempfehlung | MII_PR_Seltene_Therapieempfehlung | mii-pr-se-therapieempfehlung.fsh |

### 2. Extension Definitions (9 extensions)
| Current ID | New ID | File |
|------------|--------|------|
| mii-ext-se-onset-age | mii-ext-seltene-onset-age | ext-onset-age.fsh |
| mii-ext-se-phenotypic-pattern | mii-ext-seltene-phenotypic-pattern | ext-phenotypic-pattern.fsh |
| mii-ext-se-syndrome-category | mii-ext-seltene-syndrome-category | ext-syndrome-category.fsh |
| mii-ex-se-age-of-onset | mii-ex-seltene-age-of-onset | mii-ex-se-diagnosis-extensions.fsh |
| mii-ex-se-inheritance-pattern | mii-ex-seltene-inheritance-pattern | mii-ex-se-diagnosis-extensions.fsh |
| mii-ex-se-genetic-basis | mii-ex-seltene-genetic-basis | mii-ex-se-diagnosis-extensions.fsh |
| mii-ex-se-penetrance | mii-ex-seltene-penetrance | mii-ex-se-diagnosis-extensions.fsh |
| MII_EX_SE_Empfehlung_Publikation | MII_EX_Seltene_Empfehlung_Publikation | mii-ex-se-empfehlung-publikation.fsh |
| MII_EX_SE_Empfehlung_Evidenzgraduierung | MII_EX_Seltene_Empfehlung_Evidenzgraduierung | mii-ex-se-empfehlung-evidenzgraduierung.fsh |
| MII_EX_SE_Empfehlung_Prioritaet | MII_EX_Seltene_Empfehlung_Prioritaet | mii-ex-se-empfehlung-prioritaet.fsh |

### 3. ValueSet Definitions (13 value sets)
| Current ID | New ID | File |
|------------|--------|------|
| von-se-betroffen-vs | von-seltene-betroffen-vs | von-se-betroffen-valueset.fsh |
| mii-vs-se-syndrome-category | mii-vs-seltene-syndrome-category | ext-syndrome-category.fsh |
| mii-vs-se-hpo-phenotypic-observation-codes | mii-vs-seltene-hpo-phenotypic-observation-codes | mii-pr-se-hpo-assessment.fsh |
| mii-vs-se-hpo-severity-values | mii-vs-seltene-hpo-severity-values | mii-pr-se-hpo-assessment.fsh |
| mii-vs-se-clinical-diagnosis-category | mii-vs-seltene-clinical-diagnosis-category | mii-vs-se-diagnosis-valuesets.fsh |
| mii-vs-se-hpo-age-of-onset | mii-vs-seltene-hpo-age-of-onset | mii-vs-se-diagnosis-valuesets.fsh |
| mii-vs-se-hpo-inheritance-pattern | mii-vs-seltene-hpo-inheritance-pattern | mii-vs-se-diagnosis-valuesets.fsh |
| mii-vs-se-genetic-basis | mii-vs-seltene-genetic-basis | mii-vs-se-diagnosis-valuesets.fsh |
| mii-vs-se-penetrance | mii-vs-seltene-penetrance | mii-vs-se-diagnosis-valuesets.fsh |
| MII_VS_SE_Blutgruppe | MII_VS_Seltene_Blutgruppe | mii-vs-se-blutgruppe.fsh |
| MII_VS_SE_Empfehlung_StatusBegruendung | MII_VS_Seltene_Empfehlung_StatusBegruendung | mii-vs-se-empfehlung-status-begruendung.fsh |
| MII_VS_SE_TherapieempfehlungStrategie | MII_VS_Seltene_TherapieempfehlungStrategie | mii-cs-se-therapieempfehlung-strategie.fsh |
| MII_VS_SE_TherapieempfehlungStrategieMedikamentoes | MII_VS_Seltene_TherapieempfehlungStrategieMedikamentoes | mii-cs-se-therapieempfehlung-strategie.fsh |
| MII_VS_SE_TherapieempfehlungStrategieNichtMedikamentoes | MII_VS_Seltene_TherapieempfehlungStrategieNichtMedikamentoes | mii-cs-se-therapieempfehlung-strategie.fsh |

### 4. CodeSystem Definitions (2 code systems)
| Current ID | New ID | File |
|------------|--------|------|
| MII_CS_SE_Empfehlung_StatusBegruendung | MII_CS_Seltene_Empfehlung_StatusBegruendung | mii-cs-se-empfehlung-status-begruendung.fsh |
| MII_CS_SE_TherapieempfehlungStrategie | MII_CS_Seltene_TherapieempfehlungStrategie | mii-cs-se-therapieempfehlung-strategie.fsh |

### 5. Other IDs
| Current ID | New ID | File |
|------------|--------|------|
| von-se-betroffen | von-seltene-betroffen | von-se-betroffen.fsh |

### 6. Instance Examples (8 instances)
| Current ID | New ID | File |
|------------|--------|------|
| mii-cps-se-capabilitystatement | mii-cps-seltene-capabilitystatement | capabilitystatement.fsh |
| clinical-impression-se-assessment | clinical-impression-seltene-assessment | marfan-example-resources.fsh |
| mii-exa-se-hpo-assessment | mii-exa-seltene-hpo-assessment | mii-pr-se-hpo-assessment.fsh |
| mii-exa-se-therapieplan | mii-exa-seltene-therapieplan | mii-pr-se-therapieplan.fsh |
| mii-exa-se-waist-to-hip-ratio | mii-exa-seltene-waist-to-hip-ratio | mii-pr-se-waist-to-hip-ratio.fsh |
| mii-exa-se-symptom-condition | mii-exa-seltene-symptom-condition | mii-exa-se-symptom-condition.fsh |
| mii-exa-se-bodymassindex | mii-exa-seltene-bodymassindex | mii-pr-se-bodymassindex.fsh |
| mii-exa-se-familienanamnese | mii-exa-seltene-familienanamnese | mii-exa-se-familienanamnese.fsh |

### 7. URL Patterns to Replace
All URLs must be updated from:
- `https://www.medizininformatik-initiative.de/fhir/ext/modul-se/`

To:
- `https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/`

### 8. File Renaming Required
All files with `-se-` in their names should be renamed to use `-seltene-`:
- `mii-pr-se-*.fsh` → `mii-pr-seltene-*.fsh`
- `mii-ex-se-*.fsh` → `mii-ex-seltene-*.fsh`
- `mii-exa-se-*.fsh` → `mii-exa-seltene-*.fsh`
- `mii-vs-se-*.fsh` → `mii-vs-seltene-*.fsh`
- `mii-cs-se-*.fsh` → `mii-cs-seltene-*.fsh`
- `mii-ext-se-*.fsh` → `mii-ext-seltene-*.fsh`
- `von-se-*.fsh` → `von-seltene-*.fsh`

### 9. Logical Model Update
The logical model in `mii-lm-se.fsh` needs to be updated:
- URL: `LogicalModel/SE` → `LogicalModel/Seltene`
- All extension references in mappings

## Refactoring Steps

1. **Update all file names** containing `-se-` to `-seltene-`
2. **Update all Profile/Extension/ValueSet/CodeSystem IDs** 
3. **Update all canonical URLs** in the resources
4. **Update all references** to these resources in examples and other profiles
5. **Update the logical model** mappings
6. **Update sushi-config.yaml** if it contains any `-se-` references
7. **Run SUSHI compiler** to regenerate FHIR resources
8. **Test all examples** to ensure they still validate

## Impact Analysis
- **High Impact**: All generated FHIR resources will need regeneration
- **Breaking Change**: All external systems referencing these canonicals will need updates
- **Documentation**: All documentation referencing `-se-` needs updating

## Automation Potential
This refactoring can be partially automated using:
1. Batch file renaming scripts
2. Find-and-replace operations with regex patterns
3. Validation scripts to ensure no `-se-` references remain

## Validation Checklist
- [ ] All file names updated
- [ ] All resource IDs updated
- [ ] All canonical URLs updated
- [ ] All references updated
- [ ] SUSHI compilation successful
- [ ] All examples validate
- [ ] No remaining `-se-` references in codebase