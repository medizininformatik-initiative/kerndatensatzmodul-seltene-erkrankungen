## {{page-title}}

Das Modul Seltene Erkrankungen ist ein Erweiterungsmodul für die Basismodule der Medizininformatik-Initiative in Deutschland und steht daher im direkten Zusammenhang zu den Basismodulen Person, Diagnose, Labor, Prozedur oder Medikation sowie zu den anderen Erweiterungsmodulen wie Symptom/Klinischer Phänotyp oder dem Molekulargenetischer Befundbericht, s. Abb. MII-KDS_2025-06-12_de auf <a href="https://www.medizininformatik-initiative.de/de/der-kerndatensatz-der-medizininformatik-initiative" target="_blank">MII KDS</a>.  

<img style="width:100%; height:auto;" decoding="async" src="https://www.medizininformatik-initiative.de/sites/default/files/2025-06/2025-06-12_de_KDS-Abb_1.png" alt="MII-KDS" title="MII-KDS">

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


### Ausweitung der "FAIRen" SE-Datenerhebung am Klinischen Arbeitsplatz nach französischem Vorbild

Eine der vier Basen der FAIR-Prinzipien ist die Reusability (R), die Mehrfachnutzung von einmal erhobenen Daten für verschiedene erlaubte Zwecke. Das Kernparadigma der Medizininformatik-Initiative in Deutschland ist die Mehrfachnutzung der an Klinischen Arbeitsplätzen erhobenen Daten. Und wenn bei mehrfach benötigten Daten Lücken identifiziert werden - wie das bei der ORPHA-Kodierung der SE-Diagnosen in Deutschland lange Zeit der Fall war - , darf geprüft werden, inwieweit es gelingt, die (zusätzlichen) Ressourcen für die Erhebung an einem Ort zu fokussieren. Wenn die Arbeitsprozesse es erlauben, können die Klinischen Arbeitsplätze oder die klinischen Patientenakten die richtigen Stellen sein. Als Vorbild kann die Datenerhebung für das Zentralregister für Seltene Erkrankungen (Banque Nationale de Données Maladies Rares, BNDMR) in Frankreich dienen.  

In Frankreich basiert die vorrangige Strategie der Datenerfassung für die mehrfache lokale und übergreifende Datennutzung, der sogenannte Verbundene Modus (mode connecté), auf der Interoperabilität von Krankenhausinformationssystemen (KIS) mit dem Zentralregister BNDMR und seinen Zugängen (siehe [Le mode connecté avec le dossier patient] ("https://www.bndmr.fr/participer/mode-connecte/").  
"Dieser vom französischen Gesundheitsministerium favorisiert geförderte Verbundene Modus setzt voraus, dass die elektronische Patientenakte (DPI/EPA) oder die Facharztakte zuvor vom Softwarehersteller (oder dem Partnerkrankenhaus) an die Erhebung des nationalen Mindestdatensatzes für Seltene Krankheiten (SDM-MR.fr) angepasst wurde, und zwar gemäß den technischen Spezifikationen, die gemeinsam von der Agentur für Digitale Gesundheit und dem operativen Team des BNDMR veröffentlicht wurden (Komponente für Seltene Krankheiten des nationalen Interoperabilitätsrahmens  Gesundheitsinformationssysteme). Die Implementierung dieses Modus erfolgt in enger Zusammenarbeit mit den Herstellern von Unternehmenssoftware und den Abteilungen für Informationssysteme der Partnerkrankenhäuser (siehe Publishers' Kit).
Entscheidet sich die Partnerinstitution für die Methode der vernetzten Datenerhebung (mode connecté), sind die Gesundheitsfachpersonen verpflichtet, den Mindestdatensatz SDM-MR.fr direkt in ihre elektronische Patientenakte einzugeben. Sie haben den Vorteil, dass sie nicht viele bereits vorhandene Daten, insbesondere Identitätsdaten, erneut eingeben müssen. Innerhalb des KIS gilt die elektronische Patientenakte (EMR) als zentrales Element des Vertrauens in Bezug auf Patientenidentitäten."  

In Deutschland kann der Verbundene Modus in Klinischen Arbeitsplatzsystemen oder Facharztakten vorrangig für den Deutschen SE-Minimalbasisdatensatz (MBDS-SE.de) im Modul SE des MII KDS so gestaltet werden, dass die beabsichtigt geteilten Daten über die Datenintegrationszentren breit für die Gemeinsame Nutzung im Netzwerk Universitätsmedizin zur Verfügung stehen. Diese Zukunft hat für das wichtigste Element, die Orpha-Kodierung, schon an sehr vielen Standorten und für weitere Merkmale des Moduls SE schon an einigen Standorten begonnen. 


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


