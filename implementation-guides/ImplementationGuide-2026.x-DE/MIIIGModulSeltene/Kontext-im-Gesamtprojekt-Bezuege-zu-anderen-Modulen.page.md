## {{page-title}}

Das Modul Seltene Erkrankungen ist ein Erweiterungsmodul für die Basismodule der Medizininformatik-Initiative in Deutschland und steht daher im direkten Zusammenhang zu den Basismodulen Person, Diagnose, Labor, Prozedur oder Medikation sowie zu den anderen Erweiterungsmodulen wie Symptom/Klinischer Phänotyp oder dem Molekulargenetischer Befundbericht, s. Abb. MII-KDS_2025-06-12_de auf <a href="https://www.medizininformatik-initiative.de/de/der-kerndatensatz-der-medizininformatik-initiative" target="_blank">MII KDS</a>.  

<style>
      img {
      max-width:100%;
      height: auto;
      }
</style>
<img decoding="async" src="https://www.medizininformatik-initiative.de/sites/default/files/2025-06/2025-06-12_de_KDS-Abb_1.png" alt="MII-KDS" title="MII-KDS">

&nbsp;



Wie auf der UML-Seite gezeigt, ist das mit folgenden anderen Modulen zu verwenden: 

* Molekulargenetischer Befund 
* Symptom
* Basismodule Diagnose
* Labor 
* Forschungsvorhaben
* sowie bei Bedarf die indikationsspezifischen Erweiterungsmodule (Onkologie bei seltenen erblichen Tumorerkrankungen, Kardiologie bei relevanten Phänotypen etc)

## Zukünftige Entwicklungen

### Interoperabilität mit nationalen und europäischen Registern

Für die nahtlose Integration mit bestehenden Registersystemen und Zielspezifikationen im Bereich Seltene Erkrankungen sind folgende Entwicklungen geplant:


#### ConceptMaps und StructureMaps

**Technische Mappings zu:**
- **ERDRI/RD-CODE**: European Rare Disease Registry Infrastructure
  - Übersetzung zwischen ICD-10-GM und Orpha-Codes
  - Mapping von HPO-Termen zu ERDRI-Phänotyp-Kategorien
  
- **Modellvorhaben Genomsequenzierung SE**: Genommedizin für Seltene Erkrankungen
  - Bidirektionale Transformation zwischen Genomsequenzierungs-Daten und FHIR-Profilen
  - Integration von NGS-Befunden in die SE-Diagnostik
  - Erhaltung der semantischen Integrität bei Datenübertragung

- **NARSE**: Nationales Register für Seltene Erkrankungen
  - Harmonisierung der Terminologien zwischen NARSE und MII
  - Unterstützung von Qualitätssicherungsmetriken

  **SDMMR**:Set de Données Minimal Maladies Rares
  - Harmonisierung nach französischem Vorbild. 
  - In Frankreich ist der *„verbundene Modus / mode connecté“* die präferierte Strategie des Gesundheitsministeriums.

Die Implementierung erfolgt über:
- **ConceptMaps** für terminologische Übersetzungen
- **StructureMaps** für strukturelle Transformationen zwischen Datenformaten
- Automatisierte Validierung der Mappings

### FHIR Questionnaires für strukturierte Datenerhebung

Zur Vereinfachung der Datenerfassung sind standardisierte FHIR Questionnaires in Entwicklung:

**Geplante Fragebögen:**
- **Ersterfassungsbogen**: Strukturierte Erhebung von Basisinformationen, Familienanamnese und initialen Symptomen
- **Verlaufsdokumentation**: Standardisierte Erfassung von Symptomverläufen und Therapieansprechen
- **Genetische Beratung**: Detaillierte Stammbaumerhebung und Erfassung genetischer Risikofaktoren

Die Questionnaires werden:
- Das SDC (Structured Data Capture) Profil implementieren
- Automatische Vorbefüllung aus Bestandsdaten unterstützen
- Conditional Logic für dynamische Formulare bieten
- Gegen Terminologieserver validiert werden

### Mitwirkung und Feedback

Die zukünftigen Entwicklungen sollen erfolgt in enger Abstimmung mit den Zentren für Seltene Erkrankungen (ZSE) und den bestehenden Registerbetreibern sowie dem NUM-FOSA Seltene Erkrankungen erfolgen. Feedback und Vorschläge können über das Modulteam Seltene Erkrankungen in die MII eingebracht werden.


