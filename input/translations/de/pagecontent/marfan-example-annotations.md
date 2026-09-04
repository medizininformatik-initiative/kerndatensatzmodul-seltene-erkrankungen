<!-- DE-Uebersetzungsseite; Quelle(n): marfan-example-annotations.md + Marfan_Case_Resources_Diagram.svg (restauriert) — Migration 2026-08-28, page-map.tsv -->
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
   - **SNOMED CT**: 707738004 "Leg length discrepancy"

#### Kardiovaskuläre Manifestationen
1. **Thoraxschmerzen**:
   - **HPO**: HP:0100749 "Chest pain"
   - **SNOMED CT**: 29857009 "Chest pain"
   - **Onset**: Akut

2. **Aortenwurzeldilatation**:
   - **HPO**: HP:0002616 "Aortic root aneurysm"
   - **SNOMED CT**: 251036003 "Aortic root dilatation"
   - **Messwert**: 48 mm (pathologisch erweitert)

3. **Aortenklappeninsuffizienz**:
   - **HPO**: HP:0001659 "Aortic regurgitation"
   - **SNOMED CT**: 60234000 "Aortic valve regurgitation"
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
| `mii-exa-seltene-patient-marfan-001` | Patient | 19-jähriger Mann | Geburt: ~2005 | ID: MRF-2024-001 |
| `mii-exa-seltene-observation-height-001` | Observation | Körpergröße | 15.12.2024 | 2,13 m (HPO:0000098) |
| `mii-exa-seltene-observation-leg-asymmetry` | Observation | Beinlängendifferenz | 15.12.2024 | Rechts verkürzt (HPO:0100559) |

#### Symptome und Befunde

| Ressource ID | Typ | Beschreibung | Datum | HPO Code | Schweregrad |
|--------------|-----|--------------|-------|----------|-------------|
| `mii-exa-seltene-symptom-chest-pain` | Observation | Thoraxschmerzen | 15.12.2024 | HP:0100749 | Akut |
| `mii-exa-seltene-symptom-aortic-root` | Observation | Aortenwurzeldilatation | 15.12.2024 | HP:0002616 | 48mm |
| `mii-exa-seltene-symptom-aortic-regurg` | Observation | Aortenklappeninsuffizienz | 15.12.2024 | HP:0001659 | Grad II |
| `mii-exa-seltene-symptom-mitral-regurg` | Observation | Mitralklappeninsuffizienz | 15.12.2024 | HP:0001653 | Grad I |
| `mii-exa-seltene-symptom-cataract` | Observation | Katarakt bilateral | 15.10.2024 | HP:0000518 | Bilateral |

#### Diagnosen

| Ressource ID | Typ | Beschreibung | Feststellungsdatum | ICD-10 | Orpha |
|--------------|-----|--------------|-------------------|---------|-------|
| `condition-marfan-confirmed` | Condition | Marfan-Syndrom | 15.12.2024 | Q87.4 | 558 |
| `mii-exa-seltene-condition-cataract` | Condition | Katarakt bilateral | 15.10.2024 | H26.9 | - |

#### Prozeduren

| Ressource ID | Typ | Beschreibung | Datum | OPS Code | Status |
|--------------|-----|--------------|-------|----------|---------|
| `mii-exa-seltene-procedure-cataract-surgery` | Procedure | Phakoemulsifikation mit IOL | 12.11.2024 | 5-144.5a | Abgeschlossen |
| `mii-exa-seltene-procedure-aortic-planned` | Procedure | Aortenwurzelersatz (David-OP) | 15.03.2025 | 5-354.0a | Geplant |

#### Medikation

| Ressource ID | Typ | Medikament | Dosierung | Start | Indikation |
|--------------|-----|------------|-----------|-------|------------|
| `mii-exa-seltene-medication-losartan` | MedicationStatement | Losartan | 50mg 1x täglich | 15.12.2024 | Aortenprotektion |

#### Diagnostik

| Ressource ID | Typ | Untersuchung | Datum | Wichtige Befunde |
|--------------|-----|--------------|-------|------------------|
| `mii-exa-seltene-observation-echo-aortic` | Observation | Aortenwurzel-Echo | 15.12.2024 | 48mm (pathologisch) |
| `mii-exa-seltene-observation-echo-av` | Observation | AK-Insuffizienz Echo | 15.12.2024 | Grad II |
| `mii-exa-seltene-observation-echo-mv` | Observation | MK-Insuffizienz Echo | 15.12.2024 | Grad I |

#### Behandlungskontakte

| Ressource ID | Typ | Beschreibung | Datum | Setting | Fachbereich |
|--------------|-----|--------------|-------|---------|-------------|
| `mii-exa-seltene-encounter-ophthalmology` | Encounter | Augenärztliche Konsultation | 15.10.2024 | Ambulant | Ophthalmologie |
| `mii-exa-seltene-encounter-cataract-surgery` | Encounter | Katarakt-OP | 12.11.2024 | Tagesklinik | Ophthalmologie |
| `mii-exa-seltene-encounter-cardiology` | Encounter | Kardiologische Erstvorstellung | 15.12.2024 | Ambulant | Kardiologie |
| `mii-exa-seltene-encounter-surgery-planned` | Encounter | Geplante Herzchirurgie | 15.03.2025 | Stationär | Herzchirurgie |

#### Klinische Beurteilungen

| Ressource ID | Typ | Beschreibung | Datum | Wichtige Aspekte |
|--------------|-----|--------------|-------|------------------|
| `clinical-impression-cardiology` | ClinicalImpression | Kardiologische Beurteilung | 15.12.2024 | Marfan bestätigt, OP-Indikation |

### Bundle

| Ressource ID | Typ | Beschreibung | Anzahl Einträge |
|--------------|-----|--------------|-----------------|
| `mii-exa-seltene-bundle-marfan-complete` | Bundle | Transaction Bundle mit allen Ressourcen | 20 Ressourcen |

## Implementierung

Die vollständigen FHIR-Ressourcen sind in den FSH-Quellen dieses Moduls definiert (`input/fsh/Beispiel_Marfan/`), inklusive Transaction Bundle.


### Ressourcen-Diagramme

#### Gesamtübersicht aller Ressourcen und Beziehungen

![Marfan-Fallbeispiel Ressourcenübersicht](Marfan_Case_Resources_Diagram.svg)

#### Zeitlicher Verlauf

![Marfan-Fallbeispiel zeitlicher Verlauf](Marfan_Case_Timeline_Diagram.svg)
