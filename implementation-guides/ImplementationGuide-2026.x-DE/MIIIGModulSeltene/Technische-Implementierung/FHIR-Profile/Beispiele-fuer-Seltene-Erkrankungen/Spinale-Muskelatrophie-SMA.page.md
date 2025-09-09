
# SMA Fallbeispiel - Semantische Annotationen

## Übersicht
Dieses Dokument enthält die semantischen Annotationen für ein Fallbeispiel einer Spinalen Muskelatrophie (SMA) bei einem Neugeborenen.

## Zeitlicher Verlauf

### 1. Neugeborenenscreening (18.07.2024)
- **Verdachtsdiagnose**: Spinale Muskelatrophie (SMA)
- **Setting**: Screening
- **Status**: Verdacht

### 2. Ambulante Erstvorstellung (22.07.2024)
- **Einweisungsdiagnose**: 
  - ICD-10-GM: G12.0 "Infantile Spinale Muskelatrophie Typ 1"
  - Orpha: 83330
- **Setting**: Ambulant
- **Zentrum**: Spezialisiertes SMA-Zentrum

### 3. Molekulargenetische Diagnostik (26.07.2024)
- **Untersuchungsmaterial**: EDTA-Blut
- **Befund**:
  - SMN1-Gen: 0 Kopien (pathologisch)
  - SMN2-Gen: 2 Kopien
- **Interpretation**: Krankheitsursächlich
- **Bestätigung**: Klinischer Verdacht bestätigt

### 4. Stationäre Therapie (29.07.2024)
- **Behandlung**: Gentherapeutikum
- **Begleitmedikation**: Prednisolon (prätherapeutisch)
- **Prozedurcode**: 6-00d.0
- **Komplikationen**: Keine
- **Laborwerte posttherapeutisch**:
  - ALT: normwertig
  - AST: normwertig
  - Thrombozytenzahl: normwertig

### 5. Nachsorge (12.08.2024)
- **Setting**: Ambulant
- **Laborwerte**:
  - ALT: normwertig
  - AST: normwertig
  - Thrombozytenzahl: normwertig
  - Troponin Ths: 106 ng/l (erhöht)
- **Troponin-Verlauf** (prä-therapeutisch):
  - 22.07.2024: 92 ng/l
  - 28.07.2024: 58 ng/l
  - 01.08.2024: 57 ng/l
  - 12.08.2024: 106 ng/l

## Semantische Annotationen

### Patient
- **Geschlecht**: Weiblich
- **Geburtsdatum**: ~Juli 2024 (Neugeborenes)
- **Relevante Merkmale**: Neugeborenes mit SMA

### Familienanamnese
- **Urgroßmutter**: Unbekannte Muskelerkrankung
- **Sonstige Familie**: Unauffällig

### Diagnosen
1. **Hauptdiagnose**:
   - **Bezeichnung**: Infantile Spinale Muskelatrophie Typ 1
   - **ICD-10-GM**: G12.0
   - **Orpha**: 83330
   - **SNOMED CT**: 80854005 (Werdnig-Hoffmann disease)
   - **Status**: Bestätigt durch Molekulargenetik
   - **Onset**: Neonatal

### Genetische Befunde
1. **SMN1-Gen Deletion**:
   - **Gen**: SMN1 (OMIM: 600354, HGNC: HGNC:11117)
   - **Variante**: Homozygote Deletion
   - **Kopienanzahl**: 0
   - **Interpretation**: Pathologisch, krankheitsursächlich

2. **SMN2-Gen Kopienanzahl**:
   - **Gen**: SMN2 (OMIM: 601627, HGNC: HGNC:11118)
   - **Kopienanzahl**: 2
   - **Interpretation**: Modifikator des Phänotyps

### Prozeduren
1. **Gentherapie**:
   - **OPS-Code**: 6-00d.0
   - **SNOMED CT**: 788110002  (Gene therapy)
   - **Datum**: 29.07.2024
   - **Medikament**: Onasemnogene abeparvovec (Zolgensma)
   - **UNII**: MLU3LU3EVV
   - **Begleitmedikation**: Prednisolon

### Laborwerte
1. **ALT (Alanin-Aminotransferase)**:
   - **LOINC**: 1742-6
   - **Status**: Normwertig (post-therapeutisch)

2. **AST (Aspartat-Aminotransferase)**:
   - **LOINC**: 1920-8
   - **Status**: Normwertig (post-therapeutisch)

3. **Thrombozytenzahl**:
   - **LOINC**: 777-3
   - **Status**: Normwertig (post-therapeutisch)

4. **Troponin T hs**:
   - **LOINC**: 6598-7
   - **Werte**: Prä-therapeutisch erhöht, steigend im Verlauf
   - **Einheit**: ng/l

### Behandlungsplan
- **Gentherapie**: Einmalig verabreicht
- **Prednisolon**: Fortführung nach Entlassung
- **Nachsorge**: 
  - Kinderärztliche Betreuung
  - Humangenetische Beratung
  - Sozialpädiatrisches Zentrum
  - Zentrumsbasierte Nachsorge

## FHIR-Mapping

### Verwendete Profile
- **Patient**: MII KDS Patient
- **Diagnose**: MII PR Seltene Diagnose
- **Molekulargenetik**: MII PR MolGen Variante
- **Familienanamnese**: MII PR Seltene Familienanamnese
- **Laborwerte**: MII PR Labor Observation
- **Prozedur**: MII PR Prozedur
- **Encounter**: MII PR Encounter

### Ressourcen-Übersicht

#### Patient und Familienanamnese
| Ressource ID | Typ | Beschreibung | Datum | Status/Details |
|--------------|-----|--------------|-------|----------------|
| `patient-sma-001` | Patient | Neugeborenes Mädchen | Geburt: ~01.07.2024 | ID: SMA-2024-001 |
| `family-history-001` | FamilyMemberHistory | Urgroßmutter mit Muskelerkrankung | 22.07.2024 | Relation: unsicher |

#### Diagnose-Verlauf
| Ressource ID | Typ | Beschreibung | Feststellungsdatum | Verification Status | Codes |
|--------------|-----|--------------|-------------------|-------------------|--------|
| `condition-sma-suspected` | Condition | Verdacht auf SMA | 18.07.2024 | unconfirmed | SNOMED: 80854005 |
| `condition-sma-clinical` | Condition | Klinische Diagnose SMA Typ 1 | 22.07.2024 | provisional | ICD-10: G12.0, Orpha: 83330 |
| `condition-sma-confirmed` | Condition | Bestätigte SMA Typ 1 | 26.07.2024 | confirmed | ICD-10: G12.0, Orpha: 83330 |

#### Screening und Genetische Befunde
| Ressource ID | Typ | Test/Gen | Befund | Datum | Interpretation |
|--------------|-----|----------|---------|-------|----------------|
| `observation-sma-screening` | Observation | SMA Neugeborenenscreening (LOINC: 92005-8) | SMN1 Exon 7 nicht nachweisbar | 18.07.2024 | Positiv für SMA |
| `variant-smn1-001` | Observation | SMN1 (HGNC:11117) - Konfirmatorisch | 0 Kopien (Deletion) | 26.07.2024 | Pathologisch, krankheitsursächlich |
| `variant-smn2-001` | Observation | SMN2 (HGNC:11118) - Konfirmatorisch | 2 Kopien | 26.07.2024 | Phänotyp-Modifikator |

#### Behandlung
| Ressource ID | Typ | Beschreibung | Datum | Code | Details |
|--------------|-----|--------------|-------|------|---------|
| `procedure-gentherapy-001` | Procedure | Gentherapie (Onasemnogene abeparvovec) | 29.07.2024 | OPS: 6-00d.0, UNII: MLU3LU3EVV | Mit Prednisolon, ohne Komplikationen |

#### Laborwerte
| Ressource ID | Typ | Parameter | Datum | Wert | Interpretation |
|--------------|-----|-----------|-------|------|----------------|
| `observation-troponin-001` | Observation | Troponin T hs | 22.07.2024 | 92 ng/l | Erhöht |
| `observation-troponin-002` | Observation | Troponin T hs | 28.07.2024 | 58 ng/l | Erhöht |
| `observation-troponin-003` | Observation | Troponin T hs | 01.08.2024 | 57 ng/l | Erhöht |
| `observation-troponin-004` | Observation | Troponin T hs | 12.08.2024 | 106 ng/l | Erhöht |
| `observation-alt-001` | Observation | ALT | 29.07.2024 | - | Normwertig |
| `observation-ast-001` | Observation | AST | 29.07.2024 | - | Normwertig |
| `observation-plt-001` | Observation | Thrombozytenzahl | 29.07.2024 | - | Normwertig |

#### Behandlungskontakte
| Ressource ID | Typ | Beschreibung | Datum | Setting | Verknüpfte Diagnose |
|--------------|-----|--------------|-------|---------|-------------------|
| `encounter-screening-001` | Encounter | Neugeborenenscreening | 18.07.2024 | Screening | `condition-sma-suspected` |
| `encounter-ambulant-001` | Encounter | Erstvorstellung SMA-Zentrum | 22.07.2024 | Ambulant | `condition-sma-clinical` |
| `encounter-stationaer-001` | Encounter | Stationäre Gentherapie | 29-30.07.2024 | Stationär | `condition-sma-confirmed` |
| `encounter-nachsorge-001` | Encounter | Nachsorge | 12.08.2024 | Ambulant | `condition-sma-confirmed` |

#### Klinische Beurteilungen
| Ressource ID | Typ | Beschreibung | Datum | Encounter | Wichtige Befunde |
|--------------|-----|--------------|-------|-----------|------------------|
| `clinical-impression-erstvorstellung` | ClinicalImpression | Initiale klinische Beurteilung | 22.07.2024 | `encounter-ambulant-001` | Familienanamnese, Troponin ↑, V.a. SMA Typ 1 |
| `clinical-impression-nachsorge` | ClinicalImpression | Nachsorgebeurteilung nach Gentherapie | 12.08.2024 | `encounter-nachsorge-001` | Troponin weiter ↑ (präexistent), ALT/AST/PLT normal |

### Bundle
| Ressource ID | Typ | Beschreibung | Anzahl Einträge |
|--------------|-----|--------------|-----------------|
| `bundle-sma-complete` | Bundle | Transaction Bundle mit allen Ressourcen | 22 Ressourcen |

## Ressourcen-Diagramme

### Gesamtübersicht aller Ressourcen und Beziehungen


<style>
      img {
      max-width:100%;
      height: auto;
      }
</style>
<img decoding="async" src="https://raw.githubusercontent.com/medizininformatik-initiative/kerndatensatzmodul-seltene-erkrankungen/774135e7901e40d563d56e269ade1c34453045d8/implementation-guides/ImplementationGuide-2026.x-DE/Images/SMA_Case_Resources_Diagram.svg" alt="SMA" title="SMA">

&nbsp;

Das Bild ist <a href="https://raw.githubusercontent.com/medizininformatik-initiative/kerndatensatzmodul-seltene-erkrankungen/774135e7901e40d563d56e269ade1c34453045d8/implementation-guides/ImplementationGuide-2026.x-DE/Images/SMA_Case_Resources_Diagram.svg" target="_blank">hier</a> in zoombarer Form abrufbar.


### Zeitlicher Verlauf

<plantuml>
@startuml
!theme plain
skinparam backgroundColor #ffffff

' Timeline sequence diagram showing progression
title SMA Fall - Zeitlicher Verlauf und Ressourcen-Beziehungen

participant "Patient\n(Neugeborenes)" as Patient #2563eb
participant "Diagnose-\nVerlauf" as Diagnosis #dc2626
participant "Encounters" as Encounters #ea580c
participant "Genetik" as Genetics #059669
participant "Therapie" as Therapy #7c3aed
participant "Labor" as Lab #16a34a
participant "Klinische\nBeurteilung" as ClinImp #facc15

== 18.07.2024 - Neugeborenenscreening ==
Encounters -> Patient: encounter-screening-001
activate Encounters #ea580c
Encounters -> Diagnosis: Verdacht auf SMA
activate Diagnosis #dc2626
note right of Diagnosis
  **condition-sma-suspected**
  verificationStatus: unconfirmed
  Feststellungsdatum: 18.07.2024
end note
deactivate Encounters

== 22.07.2024 - Erstvorstellung im Zentrum ==
Encounters -> Patient: encounter-ambulant-001
activate Encounters #ea580c
Encounters -> Diagnosis: Klinische Diagnose
note right of Diagnosis
  **condition-sma-clinical**
  verificationStatus: provisional
  ICD-10: G12.0
  Orpha: 83330
  Feststellungsdatum: 22.07.2024
  → Replaces: condition-sma-suspected
end note

Lab -> Patient: Troponin T: 92 ng/l ↑
activate Lab #16a34a
note right of Lab: Bereits erhöht!

Patient -> Diagnosis: family-history-001
note left of Patient
  Urgroßmutter:
  Unbekannte Muskelerkrankung
end note

ClinImp -> Patient: clinical-impression-erstvorstellung
activate ClinImp #facc15
note right of ClinImp
  **Klinische Beurteilung:**
  - V.a. SMA Typ 1
  - Troponin erhöht
  - Genetik veranlasst
  - Prognose: guarded
end note
deactivate ClinImp

deactivate Encounters

== 26.07.2024 - Molekulargenetik ==
Genetics -> Patient: Blutentnahme EDTA
activate Genetics #059669
Genetics -> Diagnosis: Genetische Bestätigung
note right of Diagnosis
  **condition-sma-confirmed**
  verificationStatus: confirmed
  Feststellungsdatum: 26.07.2024
  → Replaces: condition-sma-clinical
end note

Genetics --> Diagnosis: variant-smn1-001
note right of Genetics
  **SMN1: 0 Kopien**
  Homozygote Deletion
  Pathologisch
end note

Genetics --> Diagnosis: variant-smn2-001
note right of Genetics
  **SMN2: 2 Kopien**
  Phänotyp-Modifikator
end note
deactivate Genetics

== 28.07.2024 - Vor Therapie ==
Lab -> Patient: Troponin T: 58 ng/l ↑

== 29.07.2024 - Gentherapie ==
Encounters -> Patient: encounter-stationaer-001
activate Encounters #ea580c
Therapy -> Patient: procedure-gentherapy-001
activate Therapy #7c3aed
note right of Therapy
  **Gentherapeutikum**
  + Prednisolon
  OPS: 6-00d.0
  → reasonReference: condition-sma-confirmed
end note

Lab -> Patient: ALT, AST, PLT
note right of Lab: Alle normwertig
deactivate Therapy

== 30.07.2024 ==
Encounters -> Patient: Entlassung
deactivate Encounters

== 01.08.2024 - Post-Therapie ==
Lab -> Patient: Troponin T: 57 ng/l ↑

== 12.08.2024 - Nachsorge ==
Encounters -> Patient: encounter-nachsorge-001
activate Encounters #ea580c
Lab -> Patient: Troponin T: 106 ng/l ↑
note right of Lab
  Weiter ansteigend!
  Prätherapeutisch bereits erhöht
end note

Lab -> Patient: ALT, AST, PLT
note right of Lab: Alle normwertig

ClinImp -> Patient: clinical-impression-nachsorge
activate ClinImp #facc15
note right of ClinImp
  **Nachsorge Beurteilung:**
  - Klinisch stabil
  - Troponin präexistent erhöht
  - Gentherapie gut vertragen
  - Weiter Prednisolon
end note
deactivate ClinImp

deactivate Encounters
deactivate Lab
deactivate Diagnosis

legend bottom
|= Ressourcen-Typen und Beziehungen |
| <back:#2563eb>Patient</back> | Zentrale Patientenressource |
| <back:#dc2626>Condition</back> | Diagnose mit Verlauf (3 Instanzen) |
| <back:#ea580c>Encounter</back> | Behandlungskontakte (4 Instanzen) |
| <back:#059669>Observation</back> | Genetik & Labor (9 Instanzen) |
| <back:#7c3aed>Procedure</back> | Gentherapie (1 Instanz) |
| <back:#facc15>ClinicalImpression</back> | Klinische Beurteilung (2 Instanzen) |
| → | Referenz zwischen Ressourcen |
endlegend

@enduml
</plantuml>

## Implementierung

Die vollständigen FHIR-Ressourcen sind in folgenden Dateien definiert:
- **Einzelressourcen**: [`input/fsh/sma-example-resources.fsh`](../fsh/sma-example-resources.fsh)
- **Transaction Bundle**: [`input/fsh/sma-transaction-bundle.fsh`](../fsh/sma-transaction-bundle.fsh)