<!-- Quelle: MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/AnamneseUndDiagnostik/Untersuchung-ClinicalImpression.page.md (Simplifier-Guide 2026.0.1, migriert 2026-08-28, Direktiven gestript) -->
Dieses Profil beschreibt die klinische Bewertung und Dokumentation interdisziplinärer Untersuchungen im Rahmen der Diagnostik seltener Erkrankungen.
Es ermöglicht die strukturierte Erfassung klinischer Eindrücke, Befunde und Behandlungsempfehlungen.

### Strukturierung der klinischen Bewertung

Die ClinicalImpression nutzt drei Hauptelemente zur Strukturierung der klinischen Bewertung:

#### **Problem** (`problem`)
Dokumentiert die **identifizierten Gesundheitsprobleme oder Diagnosen**:
- Bestätigte Diagnosen (ICD-10-GM, ORPHAcodes)
- Verdachtsdiagnosen
- Symptom-Conditions (symptomatische Zustände)
- Beispiel: "Verdacht auf Osteogenesis imperfecta" oder "Bestätigte Von-Willebrand-Erkrankung"

#### **Investigation** (`investigation`)
Erfasst **durchgeführte oder geplante Untersuchungen** zur Abklärung:
- Gruppierung zusammengehöriger Diagnostik
- Labor-Panels (z.B. Gerinnungsdiagnostik)
- Bildgebende Verfahren
- Genetische Tests
- Beispiel: Investigation mit Code "Basisdiagnostik" enthält Referenzen auf CBC, PTT, Blutungszeit

#### **Finding** (`finding`)
Dokumentiert **konkrete Befunde und Beobachtungen**:
- HPO-kodierte phänotypische Merkmale
- Auffällige Laborwerte
- Bildgebungsbefunde
- Klinische Beobachtungen
- Beispiel: "Erhöhte PTT (409675001)", "Bruising susceptibility (HP:0000978)"

### Verwendungsbeispiel

```
ClinicalImpression (Erstvorstellung)
├── problem: Verdacht auf Von-Willebrand-Syndrom
├── investigation[0]: 
│   ├── code: "Gerinnungsdiagnostik"
│   └── item: [PTT-Messung, vWF-Aktivität, Blutungszeit]
└── finding[0]: Nasenbluten (R04.0)
└── finding[1]: Hämatom-Neigung (HP:0000978)
└── finding[2]: PTT verlängert (409675001)
```

---

**Suchparameter** sind modulweit im [CapabilityStatement](CapabilityStatement-mii-cps-seltene-capabilitystatement.html) deklariert &mdash; dort maschinenlesbar und vollst&auml;ndig, statt je Profil von Hand wiederholt.

Beispielinstanzen sind auf der Profilseite im Abschnitt „Examples" verlinkt.
