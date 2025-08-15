## {{page-title}}
# Marfan-Syndrom Fallbeispiel - Semantische Annotationen

## Übersicht
Dieses Dokument enthält die semantischen Annotationen für ein Fallbeispiel eines Marfan-Syndroms bei einem 19-jährigen männlichen Patienten.

## Zeitlicher Verlauf

### 1. Augenärztliche Vorstellung (15.10.2024)
- **Anlass**: Katarakt-Konsultation
- **Befund**: Katarakt beidseits
- **Setting**: Ambulant
- **Weiteres Vorgehen**: OP-Planung

### 2. Katarakt-Operation (12.11.2024)
- **Prozedur**: Phakoemulsifikation mit Linsenimplantation
- **Setting**: Ambulant/Tagesklinik
- **Komplikationen**: Keine
- **Befund**: Erfolgreiche Linsenimplantation

### 3. Kardiologische Erstvorstellung (15.12.2024)
- **Einweisungsgrund**: Thoraxschmerzen, Verdacht auf Marfan-Syndrom
- **Diagnose**: Marfan-Syndrom bestätigt
- **Befunde**: 
  - Aortenwurzeldilatation (48mm)
  - Aortenklappeninsuffizienz Grad II
  - Mitralklappeninsuffizienz Grad I
- **Therapie**: Losartan 50mg 1x täglich initiiert

### 4. Geplante Aortenwurzelersatz-OP (15.03.2025)
- **Prozedur**: Composite-Graft-Implantation (David-OP)
- **Setting**: Stationär geplant
- **Indikation**: Progrediente Aortenwurzeldilatation bei Marfan-Syndrom

## Semantische Annotationen

### Patient
- **Geschlecht**: Männlich
- **Geburtsdatum**: ~2005 (19 Jahre alt)
- **Körpergröße**: 2,13 m (pathologisch erhöht)
- **Besonderheiten**: 
  - Beinlängendifferenz (rechts verkürzt)
  - Marfanoider Habitus

### Phänotypische Merkmale

#### Skelettale Manifestationen
1. **Hochwuchs**:
   - **HPO**: HP:0000098 "Tall stature"
   - **Wert**: 2,13 m
   - **Perzentile**: >99. Perzentile

2. **Beinlängendifferenz**:
   - **HPO**: HP:0100559 "Lower limb asymmetry"
   - **Beschreibung**: Rechtes Bein verkürzt
   - **SNOMED CT**: 271902003 "Leg length discrepancy"

#### Kardiovaskuläre Manifestationen
1. **Thoraxschmerzen**:
   - **HPO**: HP:0100749 "Chest pain"
   - **SNOMED CT**: 29857009 "Chest pain"
   - **Onset**: Akut

2. **Aortenwurzeldilatation**:
   - **HPO**: HP:0002616 "Aortic root aneurysm"
   - **SNOMED CT**: 60234000 "Aortic root dilatation"
   - **Messwert**: 48 mm (pathologisch erweitert)

3. **Aortenklappeninsuffizienz**:
   - **HPO**: HP:0001659 "Aortic regurgitation"
   - **SNOMED CT**: 60573004 "Aortic valve regurgitation"
   - **Schweregrad**: Grad II (moderat)

4. **Mitralklappeninsuffizienz**:
   - **HPO**: HP:0001653 "Mitral regurgitation"
   - **SNOMED CT**: 48724000 "Mitral valve regurgitation"
   - **Schweregrad**: Grad I (mild)

#### Ophthalmologische Manifestationen
1. **Katarakt**:
   - **HPO**: HP:0000518 "Cataract"
   - **ICD-10-GM**: H26.9 "Katarakt, nicht näher bezeichnet"
   - **SNOMED CT**: 193570009 "Cataract"
   - **Lokalisation**: Bilateral

### Diagnosen
1. **Hauptdiagnose**:
   - **Bezeichnung**: Marfan-Syndrom
   - **ICD-10-GM**: Q87.4 "Marfan-Syndrom"
   - **Orpha**: 558 "Marfan syndrome"
   - **SNOMED CT**: 19346006 "Marfan syndrome"
   - **OMIM**: 154700
   - **Status**: Klinisch bestätigt
   - **Feststellungsdatum**: 15.12.2024

2. **Nebendiagnose**:
   - **Bezeichnung**: Katarakt
   - **ICD-10-GM**: H26.9 "Katarakt, nicht näher bezeichnet"
   - **Status**: Operativ behandelt

### Prozeduren
1. **Katarakt-Operation**:
   - **OPS-Code**: 5-144.5a "Extrakapsuläre Extraktion der Linse [ECCE]: Phakoemulsifikation: Mit Einführung einer kapselfixierten Hinterkammerlinse, monofokale Intraokularlinse"
   - **SNOMED CT**: 54885007 "Phacoemulsification of cataract with intraocular lens implantation"
   - **Datum**: 12.11.2024
   - **Status**: Abgeschlossen

2. **Geplante Aortenwurzelersatz-OP**:
   - **OPS-Code**: 5-354.0a "Andere Operationen an Herzklappen: Aortenklappe: Klappenrekonstruktion"
   - **SNOMED CT**: 119564002 "Aortic root replacement"
   - **Geplantes Datum**: 15.03.2025
   - **Status**: Geplant
   - **Technik**: David-Operation (Valve-sparing root replacement)

### Medikation
1. **Losartan**:
   - **ATC-Code**: C09CA01
   - **Dosierung**: 50 mg
   - **Frequenz**: 1x täglich
   - **Indikation**: Progressionshemmung der Aortenwurzeldilatation
   - **Startdatum**: 15.12.2024
   - **SNOMED CT**: 387069000 "Losartan"

### Diagnostische Untersuchungen

#### Echokardiographie (15.12.2024)
1. **Aortenwurzeldurchmesser**:
   - **LOINC**: 79992-2 "Aortic root diameter by US"
   - **Wert**: 48 mm
   - **Interpretation**: Pathologisch erweitert

2. **Aortenklappeninsuffizienz-Grad**:
   - **LOINC**: 80140-5 "Aortic valve regurgitation severity by US"
   - **Wert**: Grad II
   - **Interpretation**: Moderat

3. **Mitralklappeninsuffizienz-Grad**:
   - **LOINC**: 80186-8 "Mitral valve regurgitation severity by US"
   - **Wert**: Grad I
   - **Interpretation**: Mild

### Behandlungsplan
- **Kardiologische Überwachung**: Alle 6 Monate Echokardiographie
- **Medikamentöse Therapie**: Fortführung Losartan
- **Operative Therapie**: Elektive Aortenwurzelersatz-OP am 15.03.2025
- **Genetische Beratung**: Empfohlen für Familienplanung
- **Ophthalmologische Nachsorge**: Post-operative Kontrollen

## FHIR-Mapping

### Verwendete Profile
- **Patient**: MII KDS Patient
- **Diagnose**: MII PR SE Diagnose
- **Symptom/Phänotyp**: MII PR SE Symptom
- **Prozedur**: MII PR Prozedur
- **MedicationStatement**: MII PR Medikation MedicationStatement
- **Observation**: MII PR Labor Observation
- **Encounter**: MII PR Encounter
- **ClinicalImpression**: MII PR SE ClinicalImpression

### Ressourcen-Übersicht

#### Patient und Phänotyp
| Ressource ID | Typ | Beschreibung | Datum | Status/Details |
|--------------|-----|--------------|-------|----------------|
| `patient-marfan-001` | Patient | 19-jähriger Mann | Geburt: ~2005 | ID: MRF-2024-001 |
| `observation-height-001` | Observation | Körpergröße | 15.12.2024 | 2,13 m (HPO:0000098) |
| `observation-leg-asymmetry` | Observation | Beinlängendifferenz | 15.12.2024 | Rechts verkürzt (HPO:0100559) |

#### Symptome und Befunde
| Ressource ID | Typ | Beschreibung | Datum | HPO Code | Schweregrad |
|--------------|-----|--------------|-------|----------|-------------|
| `symptom-chest-pain` | Observation | Thoraxschmerzen | 15.12.2024 | HP:0100749 | Akut |
| `symptom-aortic-root` | Observation | Aortenwurzeldilatation | 15.12.2024 | HP:0002616 | 48mm |
| `symptom-aortic-regurg` | Observation | Aortenklappeninsuffizienz | 15.12.2024 | HP:0001659 | Grad II |
| `symptom-mitral-regurg` | Observation | Mitralklappeninsuffizienz | 15.12.2024 | HP:0001653 | Grad I |
| `symptom-cataract` | Observation | Katarakt bilateral | 15.10.2024 | HP:0000518 | Bilateral |

#### Diagnosen
| Ressource ID | Typ | Beschreibung | Feststellungsdatum | ICD-10 | Orpha |
|--------------|-----|--------------|-------------------|---------|-------|
| `condition-marfan-confirmed` | Condition | Marfan-Syndrom | 15.12.2024 | Q87.4 | 558 |
| `condition-cataract` | Condition | Katarakt bilateral | 15.10.2024 | H26.9 | - |

#### Prozeduren
| Ressource ID | Typ | Beschreibung | Datum | OPS Code | Status |
|--------------|-----|--------------|-------|----------|---------|
| `procedure-cataract-surgery` | Procedure | Phakoemulsifikation mit IOL | 12.11.2024 | 5-144.5a | Abgeschlossen |
| `procedure-aortic-planned` | Procedure | Aortenwurzelersatz (David-OP) | 15.03.2025 | 5-354.0a | Geplant |

#### Medikation
| Ressource ID | Typ | Medikament | Dosierung | Start | Indikation |
|--------------|-----|------------|-----------|-------|------------|
| `medication-losartan` | MedicationStatement | Losartan | 50mg 1x täglich | 15.12.2024 | Aortenprotektion |

#### Diagnostik
| Ressource ID | Typ | Untersuchung | Datum | Wichtige Befunde |
|--------------|-----|--------------|-------|------------------|
| `observation-echo-aortic` | Observation | Aortenwurzel-Echo | 15.12.2024 | 48mm (pathologisch) |
| `observation-echo-av` | Observation | AK-Insuffizienz Echo | 15.12.2024 | Grad II |
| `observation-echo-mv` | Observation | MK-Insuffizienz Echo | 15.12.2024 | Grad I |

#### Behandlungskontakte
| Ressource ID | Typ | Beschreibung | Datum | Setting | Fachbereich |
|--------------|-----|--------------|-------|---------|-------------|
| `encounter-ophthalmology` | Encounter | Augenärztliche Konsultation | 15.10.2024 | Ambulant | Ophthalmologie |
| `encounter-cataract-surgery` | Encounter | Katarakt-OP | 12.11.2024 | Tagesklinik | Ophthalmologie |
| `encounter-cardiology` | Encounter | Kardiologische Erstvorstellung | 15.12.2024 | Ambulant | Kardiologie |
| `encounter-surgery-planned` | Encounter | Geplante Herzchirurgie | 15.03.2025 | Stationär | Herzchirurgie |

#### Klinische Beurteilungen
| Ressource ID | Typ | Beschreibung | Datum | Wichtige Aspekte |
|--------------|-----|--------------|-------|------------------|
| `clinical-impression-cardiology` | ClinicalImpression | Kardiologische Beurteilung | 15.12.2024 | Marfan bestätigt, OP-Indikation |

### Bundle
| Ressource ID | Typ | Beschreibung | Anzahl Einträge |
|--------------|-----|--------------|-----------------|
| `bundle-marfan-complete` | Bundle | Transaction Bundle mit allen Ressourcen | 20 Ressourcen |

## Ressourcen-Diagramme

### Gesamtübersicht aller Ressourcen und Beziehungen

<plantuml>
@startuml
!define DARKBLUE #1e3a5f
!define LIGHTBLUE #4a86e8
!define GREEN #0d9488
!define ORANGE #ea580c
!define PURPLE #7c3aed
!define RED #dc2626
!define YELLOW #facc15
!define PINK #ec4899

skinparam backgroundColor #f8f9fa
skinparam roundcorner 10
skinparam shadowing true
skinparam ArrowColor #666666
skinparam ArrowThickness 2

skinparam class {
    BackgroundColor<<Patient>> DARKBLUE
    BorderColor<<Patient>> DARKBLUE
    FontColor<<Patient>> white
    
    BackgroundColor<<Condition>> RED
    BorderColor<<Condition>> RED
    FontColor<<Condition>> white
    
    BackgroundColor<<Observation>> GREEN
    BorderColor<<Observation>> GREEN
    FontColor<<Observation>> white
    
    BackgroundColor<<Procedure>> PURPLE
    BorderColor<<Procedure>> PURPLE
    FontColor<<Procedure>> white
    
    BackgroundColor<<Encounter>> ORANGE
    BorderColor<<Encounter>> ORANGE
    FontColor<<Encounter>> white
    
    BackgroundColor<<Medication>> PINK
    BorderColor<<Medication>> PINK
    FontColor<<Medication>> white
    
    BackgroundColor<<ClinicalImpression>> YELLOW
    BorderColor<<ClinicalImpression>> YELLOW
    FontColor<<ClinicalImpression>> black
}

' Patient at the center
class "patient-marfan-001" <<Patient>> {
    19-jähriger Mann
    Geburt: ~2005
    ID: MRF-2024-001
    Größe: 2,13m
}

' Main diagnosis
class "condition-marfan-confirmed" <<Condition>> {
    **Marfan-Syndrom**
    Status: confirmed
    ICD-10: Q87.4
    Orpha: 558
    Feststellung: 15.12.2024
}

class "condition-cataract" <<Condition>> {
    **Katarakt bilateral**
    Status: resolved
    ICD-10: H26.9
    Feststellung: 15.10.2024
}

' Phenotypic observations (left side)
class "observation-height-001" <<Observation>> {
    **Körpergröße**
    HPO: HP:0000098
    Wert: 2,13 m
    Datum: 15.12.2024
}

class "observation-leg-asymmetry" <<Observation>> {
    **Beinlängendifferenz**
    HPO: HP:0100559
    Rechts verkürzt
    Datum: 15.12.2024
}

' Symptoms (top)
class "symptom-chest-pain" <<Observation>> {
    **Thoraxschmerzen**
    HPO: HP:0100749
    Akut
    Datum: 15.12.2024
}

class "symptom-cataract" <<Observation>> {
    **Katarakt**
    HPO: HP:0000518
    Bilateral
    Datum: 15.10.2024
}

' Cardiac findings (right side)
class "symptom-aortic-root" <<Observation>> {
    **Aortenwurzeldilatation**
    HPO: HP:0002616
    48 mm
    Datum: 15.12.2024
}

class "symptom-aortic-regurg" <<Observation>> {
    **Aortenklappeninsuffizienz**
    HPO: HP:0001659
    Grad II
    Datum: 15.12.2024
}

class "symptom-mitral-regurg" <<Observation>> {
    **Mitralklappeninsuffizienz**
    HPO: HP:0001653
    Grad I
    Datum: 15.12.2024
}

' Echocardiography observations
class "observation-echo-series" <<Observation>> {
    **Echokardiographie**
    Aortenwurzel: 48mm
    AKI: Grad II
    MKI: Grad I
    Datum: 15.12.2024
}

' Procedures
class "procedure-cataract-surgery" <<Procedure>> {
    **Katarakt-OP**
    OPS: 5-144.5a
    Datum: 12.11.2024
    Status: completed
}

class "procedure-aortic-planned" <<Procedure>> {
    **Aortenwurzelersatz**
    OPS: 5-354.0a
    David-OP
    Geplant: 15.03.2025
    Status: planned
}

' Medication
class "medication-losartan" <<Medication>> {
    **Losartan**
    50mg 1x täglich
    Start: 15.12.2024
    Indikation: Aortenprotektion
}

' Encounters
class "encounter-ophthalmology" <<Encounter>> {
    **Augenärztliche Konsultation**
    Datum: 15.10.2024
    Typ: Ambulant
}

class "encounter-cataract-surgery" <<Encounter>> {
    **Katarakt-OP**
    Datum: 12.11.2024
    Typ: Tagesklinik
}

class "encounter-cardiology" <<Encounter>> {
    **Kardiologische Erstvorstellung**
    Datum: 15.12.2024
    Typ: Ambulant
}

class "encounter-surgery-planned" <<Encounter>> {
    **Geplante Herzchirurgie**
    Datum: 15.03.2025
    Typ: Stationär geplant
}

' Clinical Impression
class "clinical-impression-cardiology" <<ClinicalImpression>> {
    **Kardiologische Beurteilung**
    Datum: 15.12.2024
    Marfan-Syndrom bestätigt
    OP-Indikation gestellt
}

' Relationships - Patient at center
"patient-marfan-001" <-- "condition-marfan-confirmed" : subject
"patient-marfan-001" <-- "condition-cataract" : subject
"patient-marfan-001" <-- "observation-height-001" : subject
"patient-marfan-001" <-- "observation-leg-asymmetry" : subject
"patient-marfan-001" <-- "symptom-chest-pain" : subject
"patient-marfan-001" <-- "symptom-cataract" : subject
"patient-marfan-001" <-- "symptom-aortic-root" : subject
"patient-marfan-001" <-- "symptom-aortic-regurg" : subject
"patient-marfan-001" <-- "symptom-mitral-regurg" : subject
"patient-marfan-001" <-- "observation-echo-series" : subject
"patient-marfan-001" <-- "procedure-cataract-surgery" : subject
"patient-marfan-001" <-- "procedure-aortic-planned" : subject
"patient-marfan-001" <-- "medication-losartan" : subject

' Evidence links
"condition-marfan-confirmed" --> "symptom-aortic-root" : evidence
"condition-marfan-confirmed" --> "symptom-aortic-regurg" : evidence
"condition-marfan-confirmed" --> "symptom-mitral-regurg" : evidence
"condition-marfan-confirmed" --> "observation-height-001" : evidence
"condition-marfan-confirmed" --> "observation-leg-asymmetry" : evidence
"condition-marfan-confirmed" --> "symptom-chest-pain" : evidence

"condition-cataract" --> "symptom-cataract" : evidence

' Procedure reasons
"procedure-cataract-surgery" --> "condition-cataract" : reasonReference
"procedure-aortic-planned" --> "condition-marfan-confirmed" : reasonReference

' Encounter relationships
"encounter-ophthalmology" --> "condition-cataract" : diagnosis
"encounter-cataract-surgery" ..> "procedure-cataract-surgery" : serviceProvider
"encounter-cardiology" --> "condition-marfan-confirmed" : diagnosis
"encounter-surgery-planned" ..> "procedure-aortic-planned" : scheduled

"patient-marfan-001" <-- "encounter-ophthalmology" : subject
"patient-marfan-001" <-- "encounter-cataract-surgery" : subject
"patient-marfan-001" <-- "encounter-cardiology" : subject
"patient-marfan-001" <-- "encounter-surgery-planned" : subject

' Clinical Impression relationships
"clinical-impression-cardiology" --> "encounter-cardiology" : encounter
"clinical-impression-cardiology" --> "condition-marfan-confirmed" : problem
"clinical-impression-cardiology" --> "symptom-aortic-root" : finding
"clinical-impression-cardiology" --> "symptom-aortic-regurg" : finding
"clinical-impression-cardiology" --> "symptom-mitral-regurg" : finding
"clinical-impression-cardiology" --> "observation-echo-series" : investigation
"clinical-impression-cardiology" --> "procedure-aortic-planned" : plan
"patient-marfan-001" <-- "clinical-impression-cardiology" : subject

' Medication reason
"medication-losartan" --> "condition-marfan-confirmed" : reasonReference

' Timeline annotation
note right of "condition-marfan-confirmed"
  **Diagnose-Zeitpunkt:**
  15.12.2024
  Klinisch bestätigt
end note

note left of "procedure-aortic-planned"
  **Geplante OP:**
  15.03.2025
  David-Operation
end note

legend bottom center
|= Legende |
| <color:white,back:DARKBLUE>Patient</color> | Zentrale Patientenressource |
| <color:white,back:RED>Condition</color> | Diagnosen |
| <color:white,back:GREEN>Observation</color> | Befunde & Messungen |
| <color:white,back:PURPLE>Procedure</color> | Prozeduren |
| <color:white,back:ORANGE>Encounter</color> | Kontakte |
| <color:white,back:PINK>Medication</color> | Medikation |
| <color:black,back:YELLOW>ClinicalImpression</color> | Klinische Beurteilung |
| → | Referenz |
| ⋯> | Assoziation |
endlegend

@enduml
</plantuml>

### Zeitlicher Verlauf

<plantuml>
@startuml
!theme plain
skinparam backgroundColor #ffffff

' Timeline sequence diagram showing progression
title Marfan-Syndrom Fall - Zeitlicher Verlauf und Ressourcen-Beziehungen

participant "Patient\n(19-jähriger Mann)" as Patient #2563eb
participant "Diagnosen" as Diagnosis #dc2626
participant "Encounters" as Encounters #ea580c
participant "Symptome/\nPhänotyp" as Symptoms #059669
participant "Prozeduren" as Procedures #7c3aed
participant "Medikation" as Medication #ec4899
participant "Diagnostik" as Diagnostics #16a34a
participant "Klinische\nBeurteilung" as ClinImp #facc15

== 15.10.2024 - Augenärztliche Konsultation ==
Encounters -> Patient: encounter-ophthalmology
activate Encounters #ea580c
Symptoms -> Patient: symptom-cataract
activate Symptoms #059669
note right of Symptoms
  **Katarakt bilateral**
  HPO: HP:0000518
end note

Encounters -> Diagnosis: Katarakt-Diagnose
activate Diagnosis #dc2626
note right of Diagnosis
  **condition-cataract**
  ICD-10: H26.9
  Status: active
end note
deactivate Encounters

== 12.11.2024 - Katarakt-Operation ==
Encounters -> Patient: encounter-cataract-surgery
activate Encounters #ea580c
Procedures -> Patient: procedure-cataract-surgery
activate Procedures #7c3aed
note right of Procedures
  **Phakoemulsifikation**
  OPS: 5-144.5a
  Mit IOL-Implantation
  Status: completed
end note
deactivate Procedures

Diagnosis -> Diagnosis: Katarakt resolved
note right of Diagnosis
  Status: resolved
end note
deactivate Encounters
deactivate Symptoms

== 15.12.2024 - Kardiologische Erstvorstellung ==
Encounters -> Patient: encounter-cardiology
activate Encounters #ea580c

Patient -> Symptoms: Phänotypische Befunde
activate Symptoms #059669
note left of Patient
  **Körperliche Untersuchung:**
  - Größe: 2,13m
  - Beinlängendifferenz
  - Marfanoider Habitus
end note

Symptoms -> Patient: symptom-chest-pain
note right of Symptoms
  **Thoraxschmerzen**
  HPO: HP:0100749
  Akut
end note

Symptoms -> Patient: observation-height-001
note right of Symptoms
  **Hochwuchs**
  HPO: HP:0000098
  2,13 m
end note

Symptoms -> Patient: observation-leg-asymmetry
note right of Symptoms
  **Beinlängendifferenz**
  HPO: HP:0100559
  Rechts verkürzt
end note

Diagnostics -> Patient: Echokardiographie
activate Diagnostics #16a34a
note right of Diagnostics
  **Echo-Befunde:**
  - Aortenwurzel: 48mm ↑
  - AKI: Grad II
  - MKI: Grad I
end note

Diagnostics -> Symptoms: Kardiale Befunde
Symptoms -> Patient: symptom-aortic-root
note right of Symptoms
  **Aortenwurzeldilatation**
  HPO: HP:0002616
  48 mm (pathologisch)
end note

Symptoms -> Patient: symptom-aortic-regurg
note right of Symptoms
  **Aortenklappeninsuffizienz**
  HPO: HP:0001659
  Grad II
end note

Symptoms -> Patient: symptom-mitral-regurg
note right of Symptoms
  **Mitralklappeninsuffizienz**
  HPO: HP:0001653
  Grad I
end note
deactivate Diagnostics

Encounters -> Diagnosis: Marfan-Syndrom bestätigt
note right of Diagnosis
  **condition-marfan-confirmed**
  ICD-10: Q87.4
  Orpha: 558
  Status: confirmed
  Feststellungsdatum: 15.12.2024
end note

ClinImp -> Patient: clinical-impression-cardiology
activate ClinImp #facc15
note right of ClinImp
  **Kardiologische Beurteilung:**
  - Marfan-Syndrom bestätigt
  - Aortenwurzel 48mm
  - OP-Indikation gestellt
  - Medikation eingeleitet
end note

Medication -> Patient: medication-losartan
activate Medication #ec4899
note right of Medication
  **Losartan 50mg**
  1x täglich
  Indikation: Aortenprotektion
  Start: 15.12.2024
end note

ClinImp -> Procedures: OP-Planung
note right of ClinImp
  David-OP geplant
  für 15.03.2025
end note
deactivate ClinImp

deactivate Encounters
deactivate Symptoms

== 15.03.2025 - Geplante Aortenwurzelersatz-OP ==
Encounters -> Patient: encounter-surgery-planned
activate Encounters #ea580c
Procedures -> Patient: procedure-aortic-planned
activate Procedures #7c3aed
note right of Procedures
  **Aortenwurzelersatz**
  OPS: 5-354.0a
  David-Operation
  Status: planned
  → reasonReference: condition-marfan-confirmed
end note
deactivate Procedures
deactivate Encounters

deactivate Diagnosis
deactivate Medication

legend bottom
|= Ressourcen-Typen und Beziehungen |
| <back:#2563eb>Patient</back> | Zentrale Patientenressource |
| <back:#dc2626>Condition</back> | Diagnosen (2 Instanzen) |
| <back:#ea580c>Encounter</back> | Behandlungskontakte (4 Instanzen) |
| <back:#059669>Observation</back> | Symptome & Befunde (8 Instanzen) |
| <back:#7c3aed>Procedure</back> | Prozeduren (2 Instanzen) |
| <back:#ec4899>MedicationStatement</back> | Medikation (1 Instanz) |
| <back:#16a34a>Diagnostic</back> | Echo-Untersuchung (3 Instanzen) |
| <back:#facc15>ClinicalImpression</back> | Klinische Beurteilung (1 Instanz) |
| → | Referenz zwischen Ressourcen |
endlegend

@enduml
</plantuml>

## Implementierung

Die vollständigen FHIR-Ressourcen sind in folgenden Dateien definiert:
- **Einzelressourcen**: [`input/fsh/marfan-example-resources.fsh`](../fsh/marfan-example-resources.fsh)
- **Transaction Bundle**: [`input/fsh/marfan-transaction-bundle.fsh`](../fsh/marfan-transaction-bundle.fsh)