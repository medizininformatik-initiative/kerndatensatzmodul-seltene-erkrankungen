# Kommentierung zur Version 2026.0.0-ballot

## Übersicht
Diese Seite dokumentiert offene Fragen und Anmerkungen zur Ballot-Version 2026.0.0 des Kerndatensatzmoduls Seltene Erkrankungen. Die hier aufgeführten Punkte sollen zur Diskussion und Klärung während des Kommentierungszeitraums beitragen.

## 1. Repräsentation molekulargenetischer Testergebnisse

### Fragestellung
**Wie sollen PCR-basierte Tests aus dem Neugeborenenscreening repräsentiert werden?**

Fortgeschrittene molekulargenetische Daten können über das MolGen-Modul abgebildet werden. Unklar ist jedoch die Repräsentation von einfacheren PCR-basierten Tests, wie sie im Neugeborenenscreening verwendet werden.

#### Konkretes Beispiel: SMA-Screening
- **Test**: SMN1 Exon 7 Deletionsnachweis mittels qPCR
- **Ergebnis**: Anwesenheit/Abwesenheit von SMN1 Exon 7
- **Aktuelle Praxis**: Oft als einfaches positiv/negativ Ergebnis berichtet

#### Mögliche Repräsentationsoptionen

**Option A: Als MolGen-Variante**
```fsh
Instance: variant-smn1-screening
InstanceOf: MII_PR_MolGen_Variante
* code = $LNC#69548-6 "Genetic variant assessment"
* component[gene-studied] = "SMN1"
* component[copy-number] = 0
```

**Option B: Als Laborwert-Observation**
```fsh
Instance: observation-smn1-screening
InstanceOf: Observation
* category = laboratory
* code = $LNC#92004-1 "SMN1 gene deletion"
* valueCodeableConcept = $SCT#260373001 "Detected"
```

**Option C: Hybrid-Ansatz**
- Screening-Ergebnis als Laboratory Observation
- Bestätigungs-Diagnostik als MolGen-Ressourcen
- Verknüpfung über evidence.detail Referenzen

### Weitere betroffene Testverfahren
- TREC/KREC für SCID-Screening
- CFTR-Mutationspanels für Mukoviszidose
- SMN2-Kopienanzahl-Bestimmung
- Gezielte Einzelgen-Tests

## 2. Abgrenzung zwischen Diagnose-Profilen

### Fragestellung
**Wann sollte MII_PR_SE_ClinicalDiagnosis vs. MII_PR_SE_GeneticDiagnosis verwendet werden?**

#### Unklare Szenarien
1. **Klinische Diagnose mit genetischer Bestätigung**: Welches Profil für die finale Diagnose?
2. **Verdachtsdiagnosen**: Eigenes Profil oder verificationStatus ausreichend?
3. **Übergangsdiagnosen**: Wie wird der Übergang von klinisch zu genetisch modelliert?

### Vorschlag zur Diskussion
- Verwendung des `replaces` Extension für Diagnose-Progression
- Klare Trennung: Klinisches Profil für phänotypbasierte, genetisches für molekular bestätigte Diagnosen

## 3. HPO-Terme in Diagnosen vs. Symptom-Observations

### Fragestellung
**Dopplung von HPO-Codes in Condition.code und verlinkten Observations?**

Aktuell können HPO-Terme sowohl in:
- `Condition.code.coding[hpo]` (Diagnose-Ebene)
- `Observation.code` (Symptom-Ebene, verlinkt über evidence.detail)

auftreten. Ist diese Redundanz gewünscht oder sollte eine Ebene präferiert werden?

## 4. Dokumentation ausgeschlossener Diagnosen

### Anforderung
Ausgeschlossene Diagnosen (verificationStatus = "refuted") MÜSSEN dokumentiert werden.

### Offene Fragen
1. **Verpflichtungsgrad**: Sind ausgeschlossene Differentialdiagnosen immer zu dokumentieren?
2. **Granularität**: Wie detailliert müssen ausgeschlossene Diagnosen beschrieben werden?
3. **Zeitliche Gültigkeit**: Wie lange bleiben ausgeschlossene Diagnosen relevant?

## 5. Kodierungssysteme und deren Verwendung

### Fragestellung
**Welche Kodierungssysteme sind wann verpflichtend?**

#### Aktuelle Unklarheiten
- ICD-10-GM: Bei genetischen Diagnosen nicht zwingend erforderlich (bestätigt)
- Orpha-Codes: Wann verpflichtend vs. optional?
- OMIM: Nur bei genetischen Diagnosen?
- HPO: Für alle seltenen Erkrankungen empfohlen?

### Vorschlag für Klarstellung
```
Klinische Diagnose:
- ICD-10-GM: Verpflichtend wenn verfügbar
- Orpha: Verpflichtend für seltene Erkrankungen
- HPO: Empfohlen für Phänotyp-Beschreibung
- SNOMED CT: Optional

Genetische Diagnose:
- OMIM: Verpflichtend wenn verfügbar
- Orpha: Verpflichtend für seltene Erkrankungen
- ICD-10-GM: Optional
- SNOMED CT: Category verpflichtend (782964007)
```

## 6. Familienanamnese und Stammbäume

### Fragestellung
**Wie detailliert soll die Familienanamnese bei seltenen Erkrankungen erfasst werden?**

#### Spezifische Punkte
1. Verwendung von FamilyMemberHistory vs. vollständige Pedigree-Darstellung
2. Integration mit MolGen-Familienanamnese
3. Datenschutz-Aspekte bei detaillierten Stammbäumen

## 7. Therapie-Dokumentation

### Fragestellung
**Spezielle Anforderungen für Orphan Drugs und experimentelle Therapien?**

#### Zu klärende Aspekte
- Dokumentation von Enzymersatztherapien
- Off-Label-Use Kennzeichnung
- Studienmedikation und Compassionate Use
- Gentherapien (wie Zolgensma im SMA-Beispiel)

## 8. Verlaufsdokumentation

### Fragestellung
**Wie sollen Krankheitsverläufe bei seltenen Erkrankungen strukturiert dokumentiert werden?**

#### Relevante Aspekte
- Progression der Symptomatik
- Therapieansprechen
- Komplikationen
- Transitions (pädiatrisch → erwachsen)

## 9. Technische Implementierungsfragen

### Profile-Vererbung
- Korrekte Verwendung der MII-Basis-Profile
- Umgang mit Constraints aus Parent-Profilen

### Bundle-Struktur
- Transaction vs. Collection Bundles
- Vollständigkeit der Referenzen

### Versionierung
- Umgang mit sich ändernden Diagnosen
- Historie von Kodierungen (ICD-10-GM Versionswechsel)

## 10. Internationale Interoperabilität

### Fragestellung
**Kompatibilität mit internationalen Rare Disease Registern?**

#### Zu berücksichtigende Standards
- ERN (European Reference Networks) Anforderungen
- Orphanet Codierung
- RD-Connect Standards
- Global Alliance for Genomics and Health (GA4GH)

## Feedback-Kategorien

Bitte kategorisieren Sie Ihr Feedback wie folgt:

- **[MUSS]**: Kritische Änderung erforderlich
- **[SOLL]**: Wichtige Verbesserung empfohlen  
- **[KANN]**: Wünschenswerte Ergänzung
- **[FRAGE]**: Klärungsbedarf
- **[DISKUSSION]**: Konzeptionelle Überlegung

## Einreichung von Kommentaren

Kommentare können eingereicht werden über:
1. GitHub Issues im Projekt-Repository
2. Direkte Kommunikation an die Modulverantwortlichen
3. Diskussion in den MII-Arbeitsgruppen

---

*Hinweis: Dieses Dokument dient der Sammlung von Kommentaren und Fragen zur Ballot-Version. Die finale Spezifikation wird nach Auswertung aller Rückmeldungen erstellt.*

## Beispiele zur Verdeutlichung

### Beispiel 1: SMA-Screening-Kaskade
```
1. Neugeborenenscreening (Tag 3): qPCR SMN1 → Laboratory Observation?
2. Bestätigungsdiagnostik (Tag 18): MLPA → MolGen Variante?
3. Therapieentscheidung (Tag 26): Vollständige genetische Charakterisierung → MolGen
```

### Beispiel 2: Marfan-Diagnoseweg
```
1. Klinischer Verdacht: HPO-basierte Symptome → ClinicalDiagnosis
2. Genetische Testung: FBN1-Mutation → GeneticDiagnosis
3. Familienscreening: Targeted Testing → ???
```

## Zeitplan

- **Kommentierungsfrist**: [Einzutragen]
- **Konsolidierung**: [Einzutragen]
- **Finale Version**: 2026.0.0

## Kontakt

Modulverantwortliche:
- [Kontaktdaten einzufügen]

Technische Fragen:
- [Kontaktdaten einzufügen]