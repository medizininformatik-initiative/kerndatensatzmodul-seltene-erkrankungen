# Best Practices für Kodierung bei Seltenen Erkrankungen

## Vermeidung von Redundanz

### Problem
Nicht alle Diagnosen benötigen alle verfügbaren Kodiersysteme. Eine übermäßige Mehrfachkodierung kann zu:
- Redundanz und Datenaufblähung führen
- Inkonsistenzen zwischen verschiedenen Kodiersystemen verursachen
- Die Wartbarkeit erschweren

### Lösung: Gezielte Kodierung

## Empfohlene Kodierungsstrategie

### 1. Primäre Kodiersysteme nach Diagnosetyp

#### Für KLINISCHE Diagnosen
- **ICD-10-GM:** Pflicht (Abrechnung/Statistik im deutschen Gesundheitswesen)
- **Orpha-Codes:** Pflicht für seltene Erkrankungen
- **HPO-Codes:** Empfohlen für phänotypische Beschreibung

#### Für GENETISCHE Diagnosen
- **Orpha-Codes:** Pflicht für seltene Erkrankungen
- **OMIM-Codes:** Stark empfohlen für genetische Entitäten
- **ICD-10-GM:** Optional (oft unspezifisch für genetische Varianten)

### 2. Kontextabhängige Kodiersysteme

#### HPO-Codes
- **Verwenden bei:** Klinischen Diagnosen (`MII_PR_SE_ClinicalDiagnosis`)
- **Zweck:** Phänotypische Beschreibung
- **Optional bei:** Genetischen Diagnosen (wenn Phänotyp relevant)

#### OMIM-Codes
- **Verwenden bei:** Genetischen Diagnosen (`MII_PR_SE_GeneticDiagnosis`)
- **Zweck:** Genetische Krankheitsentität
- **Nicht verwenden bei:** Rein klinischen Diagnosen ohne genetische Bestätigung

#### SNOMED CT
- **Verwenden wenn:**
  - Keine spezifischere Kodierung verfügbar
  - Internationale Interoperabilität erforderlich
  - Komplexe klinische Konzepte abgebildet werden müssen
- **Vermeiden wenn:** Orpha/OMIM ausreichend

## Entscheidungsmatrix

| Diagnosetyp | ICD-10-GM | Orpha | HPO | OMIM | SNOMED CT |
|------------|-----------|--------|-----|------|-----------|
| Klinische SE-Diagnose | ✅ Pflicht | ✅ Pflicht | ✅ Empfohlen | ❌ Nicht verwenden | ⚠️ Optional |
| Genetische SE-Diagnose | ⚠️ Optional | ✅ Pflicht | ⚠️ Optional | ✅ Stark empfohlen | ⚠️ Optional |
| Verdachtsdiagnose | ✅ Pflicht | ⚠️ Wenn möglich | ✅ Für Symptome | ❌ Nicht verwenden | ⚠️ Optional |

## Praktische Beispiele

### ✅ RICHTIG: Fokussierte Kodierung

#### Klinische Diagnose (ICD-10-GM erforderlich)
```fsh
Instance: marfan-clinical-focused
InstanceOf: MII_PR_SE_ClinicalDiagnosis
* code.coding[icd10-gm] = $ICD10GM#Q87.4 "Marfan-Syndrom"
* code.coding[orphanet] = http://www.orpha.net#558 "Marfan syndrome"
* code.coding[omim] = http://omim.org#154700 "Marfan syndrome"
// OMIM für genetische Kodierung verwendet
```

#### Genetische Diagnose (ICD-10-GM optional)
```fsh
Instance: sma-genetic-focused
InstanceOf: MII_PR_SE_GeneticDiagnosis
* code.coding[orphanet] = http://www.orpha.net#83330 "SMA type 1"
* code.coding[omim] = http://omim.org#253300 "Spinal muscular atrophy, type I"
// ICD-10-GM kann weggelassen werden bei rein genetischer Diagnose
// HPO optional, nur wenn Phänotyp dokumentiert werden soll
```

#### Genetische Diagnose mit ICD-10 (wenn klinisch relevant)
```fsh
Instance: cf-genetic-with-clinical
InstanceOf: MII_PR_SE_GeneticDiagnosis
* code.coding[icd10-gm] = $ICD10GM#E84.0 "Zystische Fibrose mit Lungenmanifestationen"
* code.coding[orphanet] = http://www.orpha.net#586 "Cystic fibrosis"
* code.coding[omim] = http://omim.org#219700 "Cystic fibrosis"
// ICD-10 hier sinnvoll, da klinische Manifestation spezifiziert
```

### ❌ FALSCH: Übermäßige Kodierung

```fsh
Instance: overencoded-diagnosis
InstanceOf: Condition
* code.coding[0] = $ICD10GM#Q87.4 "Marfan-Syndrom"
* code.coding[1] = http://www.orpha.net#558 "Marfan syndrome"
* code.coding[2] = $SCT#19346006 "Marfan syndrome"
* code.coding[3] = http://omim.org#154700 "Marfan syndrome"
* code.coding[4] = $UMLS#C0024796 "Marfan Syndrome"
* code.coding[5] = $MeSH#D008382 "Marfan Syndrome"
// Zu viele redundante Codes!
```

## Spezielle Szenarien

### Diagnose-Progression
Bei der Modellierung von Diagnose-Verläufen:

1. **Verdacht** (Screening)
   - ICD-10-GM: Pflicht
   - Orpha: Wenn spezifischer SE-Verdacht
   - HPO: Für Symptombeschreibung
   - OMIM: Nicht verwenden

2. **Klinische Diagnose**
   - ICD-10-GM: Pflicht
   - Orpha: Pflicht
   - HPO: Empfohlen
   - OMIM: Nicht verwenden

3. **Genetisch bestätigt**
   - ICD-10-GM: Optional (nur wenn klinisch relevant)
   - Orpha: Pflicht
   - HPO: Optional (wenn phänotypisch relevant)
   - OMIM: Stark empfohlen

### Rein genetische vs. Klinisch-genetische Diagnosen

#### Rein genetische Befunde
```fsh
// Beispiel: Carrier-Status ohne Symptome
Instance: carrier-status-sma
InstanceOf: MII_PR_SE_GeneticDiagnosis
* code.coding[orphanet] = http://www.orpha.net#83330 "SMA"
* code.coding[omim] = http://omim.org#253300 "SMA type I"
* code.text = "Heterozygote SMN1-Mutation (Anlageträger)"
// Kein ICD-10, da keine klinische Manifestation
```

#### Klinisch-genetische Diagnose
```fsh
// Beispiel: Symptomatischer Patient mit genetischer Bestätigung
Instance: symptomatic-genetic-diagnosis
InstanceOf: MII_PR_SE_GeneticDiagnosis
* code.coding[icd10-gm] = $ICD10GM#G12.0 "Infantile spinale Muskelatrophie"
* code.coding[orphanet] = http://www.orpha.net#83330 "SMA type 1"
* code.coding[omim] = http://omim.org#253300 "SMA type I"
// ICD-10 sinnvoll, da klinische Manifestation vorhanden
```

## Qualitätskriterien

### Minimale Anforderungen

#### Klinische Diagnose
- [ ] ICD-10-GM Code vorhanden
- [ ] Orpha-Code für seltene Erkrankung
- [ ] Angemessener verificationStatus

#### Genetische Diagnose
- [ ] Orpha-Code für seltene Erkrankung
- [ ] OMIM-Code (wenn verfügbar)
- [ ] Evidence-Link zu MolGen-Ressourcen
- [ ] Angemessener verificationStatus (meist "confirmed")

### Optimale Kodierung
- [ ] Keine redundanten Codes
- [ ] Kontextgerechte Verwendung von HPO/OMIM
- [ ] Klare Trennung zwischen klinischer und genetischer Diagnose
- [ ] Evidence-Verlinkung passend zum Diagnosetyp

## Wann ICD-10-GM bei genetischen Diagnosen verwenden?

### ✅ ICD-10-GM sinnvoll bei:
- Symptomatischen Patienten
- Klinisch manifesten Erkrankungen
- Wenn spezifische klinische Subtypen kodiert werden (z.B. CF mit Lungenmanifestationen)
- Abrechnungsrelevanten Diagnosen

### ❌ ICD-10-GM weglassen bei:
- Reinen Anlageträgern ohne Symptome
- Prädiktiven genetischen Tests
- Genetischen Varianten unklarer Signifikanz (VUS)
- Wenn ICD-10 keine adäquate Spezifität bietet

## Wichtiger Hinweis: Ausgeschlossene Diagnosen

### ⚠️ PFLICHT: Dokumentation ausgeschlossener Diagnosen

**Ausgeschlossene Diagnosen (refuted) MÜSSEN ebenfalls kodiert und dokumentiert werden!**

Dies gilt insbesondere für:
- Verdachtsdiagnosen, die widerlegt wurden
- Differentialdiagnosen, die ausgeschlossen wurden
- Negative genetische Testergebnisse für vermutete Erkrankungen

#### Kodierung ausgeschlossener Diagnosen
```fsh
* verificationStatus = #refuted
* clinicalStatus = #inactive
* code.coding[orphanet] = // Orpha-Code der ausgeschlossenen Erkrankung
* note.text = // Begründung des Ausschlusses
```

#### Warum ist das wichtig?
- **Vermeidung redundanter Diagnostik**: Bereits durchgeführte Tests nicht wiederholen
- **Vollständige Dokumentation**: Diagnostischer Prozess nachvollziehbar
- **Forschung**: Wichtig für Epidemiologie und Differentialdiagnostik
- **Patientensicherheit**: Verhindert unnötige Untersuchungen

## Zusammenfassung

**Grundprinzip:** So viel wie nötig, so wenig wie möglich

1. **Klinische Diagnose:** ICD-10-GM + Orpha + HPO
2. **Genetische Diagnose:** Orpha + OMIM (ICD-10-GM nur wenn klinisch relevant)
3. **Ausgeschlossene Diagnose:** Gleiche Kodierung + verificationStatus = refuted
4. **SNOMED CT:** Nur wenn Mehrwert vorhanden
5. **Andere Systeme:** Nur in begründeten Ausnahmefällen

Die Wahl der Kodiersysteme sollte den Kontext der Diagnose (klinisch vs. genetisch) und den Verwendungszweck (Abrechnung, Forschung, Registrierung) berücksichtigen.