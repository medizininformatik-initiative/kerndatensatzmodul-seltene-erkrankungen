## {{page-title}}

Die Studie-Profile des Moduls Seltene Erkrankungen ermöglichen die strukturierte Dokumentation von Studieninformationen und Studieneinschluss-Anfragen für Patienten mit seltenen Erkrankungen.

### Abgrenzung zum Modul Medizinische Forschungsvorhaben

> **Hinweis:** Detaillierte Informationen zu medizinischen Forschungsvorhaben und Studien werden im [Modul Medizinische Forschungsvorhaben](https://www.medizininformatik-initiative.de/Kerndatensatz/Modul_Medizinische_Forschungsvorhaben/IGMIIKDSModulMedizinischeForschungsvorhaben.html) der Medizininformatik-Initiative abgebildet. 
>
> Das Profil **Studieneinschluss-Anfrage** ist jedoch derzeit nicht im Modul Medizinische Forschungsvorhaben enthalten und wird daher hier im Modul Seltene Erkrankungen definiert. Dieses Profil basiert auf dem entsprechenden [Studieneinschluss-Anfrage Profil aus dem MTB-Modul](https://www.medizininformatik-initiative.de/Kerndatensatz/KDS_Molekulares_Tumorboard/MIIIGModulMolekularesTumorboard-TechnischeImplementierung-FHIRProfile-Behandlungsepisode-Therapieplan-MTB-Beschluss-Studieneinschlussempfehlung-Studieneinschluss-Anfrage-ServiceRequest.html) und wurde für die Anforderungen bei seltenen Erkrankungen angepasst.

### Übersicht der Studie-Profile

#### Studieninformationen
- **ResearchStudy**: Basisprofil für Studieninformationen
  - Dokumentiert grundlegende Studiendetails
  - Verknüpfung zu detaillierten Informationen im Modul [Medizinische Forschungsvorhaben] https://www.medizininformatik-initiative.de/Kerndatensatz/Modul_Medizinische_Forschungsvorhaben/IGMIIKDSModulMedizinischeForschungsvorhaben.html

#### Studieneinschluss
- [**Studieneinschluss-Anfrage**](Studieneinschluss-Anfrage.page.md) - ServiceRequest-basiertes Profil
  - Empfehlung zur Studienteilnahme, aber Bestätigung nicht zwingenderweise gegeben
  - Anfrage für Studieneinschluss
  - Basiert auf dem MTB-Modul-Profil

### Implementierungshinweise

#### Integration mit anderen Modulen
1. **Modul Medizinische Forschungsvorhaben**: 
   - Für umfassende Studiendokumentation
   - Detaillierte Protokollinformationen
   - Studienstatus und -verlauf

2. **Modul Molekulares Tumorboard (MTB)**:
   - Vorlage für Studieneinschluss-Anfrage auf Basis eines MTB-Beschlusses
   - Ähnliche Workflow-Patterns

3. **Modul Seltene Erkrankungen**: 
   - Spezifische Anpassungen für seltene Erkrankungen
   - repräsentiert Studienbeteiligungen nach Modellvorhaben Genomsequenzierung und NARSE
   - Integration in Therapieplan über CarePlan


### Anwendungsbeispiele

#### Seltene genetische Erkrankungen
- Gentherapie-Studien
- Register-basierte Studien

#### Orphan Drug Entwicklung
- Phase I/II Studien für seltene Erkrankungen
- Compassionate Use Programme
- Expanded Access Programme

