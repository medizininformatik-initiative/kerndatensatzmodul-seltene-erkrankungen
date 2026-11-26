<!-- Quelle: MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/Messbefunde/Hueftumfang-Observation.page.md (Simplifier-Guide 2026.0.1, migriert 2026-08-28, Direktiven gestript) -->
Dieses Profil beschreibt die Messung des Hüftumfangs (maximale Gesäßprotuberanz) eines Patienten. Der Hüftumfang ist relevant für seltene Erkrankungen mit Auswirkungen auf die Körperproportionen, metabolische Erkrankungen oder Skelettdysplasien.

### Klinische Bedeutung

Die Messung des Hüftumfangs ist ein wichtiger Parameter bei:
- **Metabolischen Erkrankungen**: Beurteilung der Fettverteilung und metabolischer Risikofaktoren
- **Skelettdysplasien**: Dokumentation von Körperproportionen und Skelettveränderungen im Beckenbereich
- **Syndromen mit Körperbauauffälligkeiten**: Charakteristische Proportionen als diagnostisches Merkmal
- **Berechnung des Taille-Hüft-Verhältnisses (WHR)**: In Kombination mit dem Taillenumfang zur Risikoabschätzung

### Kodierung

Das Profil verwendet den LOINC-Code **56063-1** (Circumference.at maximal protrusion of gluteus muscles Pelvis) für die standardisierte Kodierung der Messung.

---

### Verwendung mit Taille-Hüft-Verhältnis

Der Hüftumfang wird häufig in Kombination mit dem Taillenumfang zur Berechnung des **Taille-Hüft-Verhältnisses (Waist-to-Hip Ratio, WHR)** verwendet. Das WHR ist ein wichtiger Indikator für:
- Metabolisches Risiko
- Körperfettverteilung (androide vs. gynoide Verteilung)
- Prognose bei verschiedenen Erkrankungen

Siehe auch: Waist-to-Hip-Ratio

---

**Suchparameter** sind modulweit im [CapabilityStatement](CapabilityStatement-mii-cps-seltene-capabilitystatement.html) deklariert &mdash; dort maschinenlesbar und vollst&auml;ndig, statt je Profil von Hand wiederholt.

Beispielinstanzen sind auf der Profilseite im Abschnitt „Examples" verlinkt.
