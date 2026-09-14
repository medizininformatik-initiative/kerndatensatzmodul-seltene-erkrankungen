<!-- Quelle: MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/TherapieUndForschung/Therapie/StructureDefinition-mii-pr-seltene-therapieempfehlung-nicht-medikamentoes.html (Simplifier-Guide 2026.0.1, migriert 2026-08-28, Direktiven gestript) -->
Dieses Profil beschreibt eine **nicht-medikamentöse Therapieempfehlung** für Patienten mit Seltenen Erkrankungen. Es basiert auf der FHIR-Ressource ServiceRequest und umfasst operative Eingriffe, Ernährungstherapien, Physiotherapie, genetische Beratung und weitere nicht-medikamentöse Interventionen.

### Anwendungsfälle

Nicht-medikamentöse Therapieempfehlungen umfassen:
- **Operative Eingriffe**: Chirurgische Interventionen (z.B. Aortenwurzelersatz bei Marfan-Syndrom)
- **Ernährungstherapie**: Spezielle Diäten bei Stoffwechselerkrankungen
- **Physiotherapie**: Bewegungstherapie zur Erhaltung der Mobilität
- **Ergotherapie**: Förderung der Alltagsfähigkeiten
- **Logopädie**: Bei Schluck- und Sprachstörungen
- **Psychologische Betreuung**: Psychotherapie und Beratung
- **Genetische Beratung**: Humangenetische Konsultation
- **Prophylaxe**: Präventive Maßnahmen ohne Medikamente
- **Früherkennungsuntersuchungen**: Regelmäßige Screening-Untersuchungen

### Implementierungshinweise

#### Kodierung von Prozeduren
- **OPS-Codes** für operative und interventionelle Eingriffe in Deutschland
- **SNOMED CT** für internationale Kompatibilität
- **LOINC** für diagnostische Verfahren
- Lokale Codes für spezielle Therapieverfahren

#### Status und Intent
- `status`: Typischerweise "draft" für Empfehlungen, "active" nach Genehmigung
- `intent`: "proposal" für Therapieempfehlungen, "order" bei Umsetzung
- `priority`: Dringlichkeit der Intervention (routine, urgent, asap, stat)

#### Zeitplanung
- `occurrence[x]`: Zeitpunkt oder Zeitraum der geplanten Intervention
- `authoredOn`: Datum der Empfehlung

#### Begründung
- Verknüpfung zur Diagnose über `reasonReference`
- Klinische Indikation über `reasonCode`

---

### Suchparameter

Folgende Suchparameter sind für nicht-medikamentöse Therapieempfehlungen relevant:

1. **_id**: Suche nach ID der Ressource
   ```GET [base]/ServiceRequest?_id=1234```

2. **_profile**: Suche nach Profil
   ```GET [base]/ServiceRequest?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung-nicht-medikamentoes```

3. **subject**: Suche nach Patient
   ```GET [base]/ServiceRequest?subject=Patient/example```

4. **status**: Suche nach Status
   ```GET [base]/ServiceRequest?status=active```

5. **intent**: Suche nach Intent
   ```GET [base]/ServiceRequest?intent=proposal```

6. **code**: Suche nach Prozedur-Code
   ```GET [base]/ServiceRequest?code=http://fhir.de/CodeSystem/dimdi/ops-2024|5-354.09```

7. **authored**: Suche nach Erstellungsdatum
   ```GET [base]/ServiceRequest?authored=2024-02-08```

8. **priority**: Suche nach Priorität
   ```GET [base]/ServiceRequest?priority=urgent```

---

Beispielinstanzen sind auf der Profilseite im Abschnitt „Examples" verlinkt.

### Verwandte Profile
- [Therapieempfehlung-Medikamentoes](StructureDefinition-mii-pr-seltene-therapieempfehlung.html) - Für medikamentöse Therapien
- [Therapieplan](StructureDefinition-mii-pr-seltene-therapieplan.html) - Übergeordneter Therapieplan
- [Studieneinschluss-Anfrage](StructureDefinition-mii-pr-seltene-studieneinschluss-anfrage.html) - Für Studienteilnahme-Empfehlungen
