<!-- Quelle: MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/TherapieUndForschung/Therapie/StructureDefinition-mii-pr-seltene-therapieempfehlung.html (Simplifier-Guide 2026.0.1, migriert 2026-08-28, Direktiven gestript) -->
Dieses Profil beschreibt eine **medikamentöse Therapieempfehlung** für Patienten mit Seltenen Erkrankungen. Es basiert auf der FHIR-Ressource MedicationRequest und umfasst systemische, gezielte, präventive und gentherapeutische Behandlungsansätze.

### Anwendungsfälle

Medikamentöse Therapieempfehlungen umfassen:
- **Systemische Therapien**: Chemotherapie, Immuntherapie, Hormontherapie
- **Gezielte Therapien**: Targeted Therapy basierend auf molekularen Markern
- **Präventive Therapien**: Prophylaktische Medikation zur Vermeidung von Komplikationen
- **Gentherapien**: Gentherapeutika für seltene genetische Erkrankungen (z.B. Onasemnogene abeparvovec für SMA)
- **Kombinationstherapien**: Siehe separates Profil [Therapieempfehlung-Kombination](StructureDefinition-mii-pr-seltene-therapieempfehlung-kombination.html)

### Implementierungshinweise

#### Kodierung von Medikamenten
- Verwendung von **ATC-Codes** für die Klassifikation
- **UNII-Codes** für neuere Wirkstoffe (insbesondere bei Studien)

#### Status und Intent
- `status`: Typischerweise "draft" für Empfehlungen, "active" nach Genehmigung
- `intent`: "proposal" für Therapieempfehlungen, "order" bei Umsetzung

#### Dosierung
- Strukturierte Dosisangaben mit `dosageInstruction`
- Unterstützung für komplexe Schemata (z.B. Titration, zyklische Gabe)
- Für die korrekte Angabe der Dosierung sind die Vorgaben der [Spezifikation Medikation IG DE](https://build.fhir.org/ig/hl7germany/medication-dosage-ig/index.html) zu beachten

#### Begründung
- Verknüpfung zur Diagnose über `reasonReference`
- Molekulare Marker über Extensions wenn relevant

---

### Suchparameter

Folgende Suchparameter sind für medikamentöse Therapieempfehlungen relevant:

1. **_id**: Suche nach ID der Ressource
   ```GET [base]/MedicationRequest?_id=1234```

2. **_profile**: Suche nach Profil
   ```GET [base]/MedicationRequest?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung```

3. **subject**: Suche nach Patient
   ```GET [base]/MedicationRequest?subject=Patient/example```

4. **status**: Suche nach Status
   ```GET [base]/MedicationRequest?status=active```

5. **intent**: Suche nach Intent
   ```GET [base]/MedicationRequest?intent=proposal```

6. **medication**: Suche nach Medikament
   ```GET [base]/MedicationRequest?medication=http://fhir.de/CodeSystem/ifa/pzn|12345678```

7. **authored-on**: Suche nach Erstellungsdatum
   ```GET [base]/MedicationRequest?authored-on=2024-02-08```

---

Beispielinstanzen sind auf der Profilseite im Abschnitt „Examples" verlinkt.

### Verwandte Profile
- [Therapieempfehlung-Kombination](StructureDefinition-mii-pr-seltene-therapieempfehlung-kombination.html) - Für Kombinationstherapien
- [Therapieempfehlung-Nicht-Medikamentoes](StructureDefinition-mii-pr-seltene-therapieempfehlung-nicht-medikamentoes.html) - Für nicht-medikamentöse Therapien
- [Therapieplan](StructureDefinition-mii-pr-seltene-therapieplan.html) - Übergeordneter Therapieplan
