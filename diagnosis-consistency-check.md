# Diagnosis Consistency Check Report

## Overview
Cross-check of all bundles, images, and markdown tables for consistency regarding diagnoses.

## Key Finding: Profile Usage Inconsistency

### Current State
- **SMA Case Examples**: Use `MII_PR_SE_Diagnose` profile
- **Marfan Case Examples**: Use `MII_PR_SE_Diagnose` profile  
- **New Diagnosis Examples**: Use new `MII_PR_SE_ClinicalDiagnosis` and `MII_PR_SE_GeneticDiagnosis` profiles
- **Excluded Diagnosis Examples**: Use new profiles

### Recommendation
The main case examples (SMA and Marfan) should be updated to use the appropriate new profiles:
- Clinical diagnoses → `MII_PR_SE_ClinicalDiagnosis`
- Genetic diagnoses → `MII_PR_SE_GeneticDiagnosis`

## Detailed Consistency Check

### ✅ SMA Case (sma-example-resources.fsh)

#### Resources Defined
1. `condition-sma-suspected` - Suspected diagnosis (screening)
2. `condition-sma-clinical` - Clinical diagnosis  
3. `condition-sma-confirmed` - Genetically confirmed diagnosis

#### Consistency Status
| Component | Status | Notes |
|-----------|--------|-------|
| **Markdown Tables** | ✅ Consistent | All 3 conditions listed with correct dates and statuses |
| **Bundle Entries** | ✅ Consistent | All 3 conditions included in bundle |
| **PlantUML Diagrams** | ✅ Consistent | Shows progression with replaces relationships |
| **Profile Usage** | ⚠️ Outdated | Uses `MII_PR_SE_Diagnose` instead of new profiles |

#### Recommended Changes for SMA
```fsh
// Current
Instance: condition-sma-suspected
InstanceOf: MII_PR_SE_Diagnose

// Should be
Instance: condition-sma-suspected
InstanceOf: MII_PR_SE_ClinicalDiagnosis

// For genetic confirmation
Instance: condition-sma-confirmed
InstanceOf: MII_PR_SE_GeneticDiagnosis
```

### ✅ Marfan Case (marfan-example-resources.fsh)

#### Resources Defined
1. `condition-marfan-confirmed` - Marfan syndrome diagnosis
2. `condition-cataract` - Bilateral cataract

#### Consistency Status
| Component | Status | Notes |
|-----------|--------|-------|
| **Markdown Tables** | ✅ Consistent | Both conditions listed with correct ICD-10 and Orpha codes |
| **Bundle Entries** | ✅ Consistent | Both conditions included in bundle |
| **PlantUML Diagrams** | ✅ Consistent | Shows relationships to symptoms and procedures |
| **Profile Usage** | ⚠️ Outdated | Uses `MII_PR_SE_Diagnose` instead of new profiles |

#### Recommended Changes for Marfan
```fsh
// Current
Instance: condition-marfan-confirmed
InstanceOf: MII_PR_SE_Diagnose

// Should be (since clinically diagnosed)
Instance: condition-marfan-confirmed
InstanceOf: MII_PR_SE_ClinicalDiagnosis
```

### ✅ Resource Counts

#### SMA Bundle (22 resources total)
- 1 Patient
- 3 Conditions (diagnosis progression)
- 1 FamilyMemberHistory
- 9 Observations (screening, genetics, labs)
- 1 Procedure (gene therapy)
- 4 Encounters
- 2 ClinicalImpressions
- 1 Bundle

#### Marfan Bundle (20 resources total)
- 1 Patient
- 2 Conditions (Marfan + Cataract)
- 13 Observations (symptoms, measurements, echo)
- 2 Procedures (cataract surgery + planned aortic)
- 1 MedicationStatement (Losartan)
- 1 ClinicalImpression
- 4 Encounters
- 1 Bundle

### ✅ Diagnosis Progression Patterns

#### SMA Case - Correct Pattern
```
Suspected (18.07) → Clinical (22.07) → Confirmed (26.07)
    ↓                    ↓                   ↓
unconfirmed         provisional          confirmed
```
Uses `replaces` extension correctly to link progression.

#### Marfan Case - Single Point
```
Confirmed (15.12)
    ↓
confirmed
```
No progression shown (appropriate for this case).

### ✅ Evidence Linking

#### SMA Case
- `condition-sma-suspected` → `observation-sma-screening`
- `condition-sma-confirmed` → `variant-smn1-001`, `variant-smn2-001`

#### Marfan Case  
- `condition-marfan-confirmed` → Multiple symptom observations (aortic root, height, etc.)
- `condition-cataract` → `symptom-cataract`

## Summary of Required Actions

### High Priority
1. **Update SMA diagnoses** to use appropriate new profiles
2. **Update Marfan diagnoses** to use appropriate new profiles

### Medium Priority
3. **Add genetic confirmation** example for Marfan if genetic testing was done
4. **Consider adding progression** for Marfan (suspected → confirmed)

### Low Priority
5. **Standardize naming** - Some use numbers (001), others don't
6. **Add more HPO codes** to clinical observations

## Validation Results

### What's Working Well
- ✅ All resource references are valid
- ✅ Bundle entries match defined resources
- ✅ PlantUML diagrams accurately represent relationships
- ✅ Markdown tables correctly document resources
- ✅ Diagnosis progression uses replaces extension correctly
- ✅ Evidence linking is properly implemented

### What Needs Attention
- ⚠️ Profile usage inconsistency between old and new examples
- ⚠️ Extension definitions referenced but not created
- ⚠️ Category assignments need review for genetic diagnoses

## Conclusion

The overall structure is **consistent and well-organized**. The main issue is that the original case examples (SMA and Marfan) were created before the new specialized diagnosis profiles and should be updated to use them. All cross-references between bundles, diagrams, and documentation are accurate.