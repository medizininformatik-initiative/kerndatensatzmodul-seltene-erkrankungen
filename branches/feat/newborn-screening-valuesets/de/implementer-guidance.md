# Anleitung für Implementierende - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* [**Anleitung**](guidance.md)
* **Anleitung für Implementierende**

## Anleitung für Implementierende

Das Modul Seltene Erkrankungen ist ein KDS-Modul für die Basismodule der Medizininformatik-Initiative in Deutschland und steht daher im direkten Zusammenhang zu den Basismodulen Person, Diagnose, Labor, Prozedur oder Medikation sowie zu den anderen KDS-Modulen wie Symptom/Klinischer Phänotyp oder dem Molekulargenetischer Befundbericht, s. Abb. MII-KDS_2025-06-12_de auf [MII KDS](https://www.medizininformatik-initiative.de/de/der-kerndatensatz-der-medizininformatik-initiative).

![](https://www.medizininformatik-initiative.de/sites/default/files/2025-06/2025-06-12_de_KDS-Abb_1.png)

 

Wie auf der [UML-Seite](uml-diagrams.md) gezeigt, ist das mit folgenden anderen Modulen zu verwenden:

* Molekulargenetischer Befund
* Symptom
* Basismodule Diagnose
* Labor
* Forschungsvorhaben
* sowie bei Bedarf die indikationsspezifischen KDS-Module (Onkologie bei seltenen erblichen Tumorerkrankungen, Kardiologie bei relevanten Phänotypen etc)

## Zukünftige Entwicklungen

### Interoperabilität mit nationalen und europäischen Registern

Für die nahtlose Integration mit bestehenden Registersystemen und Zielspezifikationen im Bereich Seltene Erkrankungen sind folgende Entwicklungen geplant:

#### ConceptMaps und StructureMaps

**Technische Mappings zu:**

* **ERDRI/RD-CODE**: European Rare Disease Registry Infrastructure 
* Mapping zwischen ICD-10-GM und ORPHAcodes
* Mapping von HPO-Termen zu ERDRI-Phänotyp-Kategorien
 
* **Modellvorhaben Genomsequenzierung SE**: Genommedizin für Seltene Erkrankungen 
* Bidirektionale Transformation zwischen Genomsequenzierungs-Daten und FHIR-Profilen
* Integration von NGS-Befunden in die SE-Diagnostik
* Erhaltung der semantischen Integrität bei Datenübertragung
 
* **SDMMR**: Set de Données Minimal Maladies Rares

Die Implementierung erfolgt über:

* **ConceptMaps** für terminologische Übersetzungen
* **StructureMaps** für strukturelle Transformationen zwischen Datenformaten
* Automatisierte Validierung der Mappings

### Ausweitung der "FAIRen" SE-Datenerhebung am Klinischen Arbeitsplatz nach französischem Vorbild

Eine der vier Basen der FAIR-Prinzipien ist die Reusability (R), die Mehrfachnutzung von einmal erhobenen Daten für verschiedene erlaubte Zwecke. Das Kernparadigma der Medizininformatik-Initiative in Deutschland ist die Mehrfachnutzung der an Klinischen Arbeitsplätzen erhobenen Daten. Und wenn bei mehrfach benötigten Daten Lücken identifiziert werden - wie das bei der ORPHA-Kodierung der SE-Diagnosen in Deutschland lange Zeit der Fall war - , darf geprüft werden, inwieweit es gelingt, die (zusätzlichen) Ressourcen für die Erhebung an einem Ort zu fokussieren. Wenn die Arbeitsprozesse es erlauben, können die Klinischen Arbeitsplätze oder die klinischen Patientenakten die richtigen Stellen sein. Als Vorbild kann die Datenerhebung für das Zentralregister für Seltene Erkrankungen (Banque Nationale de Données Maladies Rares, BNDMR) in Frankreich dienen.

In Frankreich basiert die vorrangige Strategie der Datenerfassung für die mehrfache lokale und übergreifende Datennutzung, der sogenannte Verbundene Modus (mode connecté), auf der Interoperabilität von Krankenhausinformationssystemen (KIS) mit dem Zentralregister BNDMR und seinen Zugängenm siehe: [Le mode connecté avec le dossier patient](https://www.bndmr.fr/participer/mode-connecte/). "Dieser vom französischen Gesundheitsministerium favorisiert geförderte Verbundene Modus setzt voraus, dass die elektronische Patientenakte (DPI/EPA) oder die Facharztakte zuvor vom Softwarehersteller (oder dem Partnerkrankenhaus) an die Erhebung des nationalen Mindestdatensatzes für Seltene Krankheiten (SDM-MR.fr) angepasst wurde, und zwar gemäß den technischen Spezifikationen, die gemeinsam von der Agentur für Digitale Gesundheit und dem operativen Team des BNDMR veröffentlicht wurden (Komponente für Seltene Krankheiten des nationalen Interoperabilitätsrahmens Gesundheitsinformationssysteme). Die Implementierung dieses Modus erfolgt in enger Zusammenarbeit mit den Herstellern von Unternehmenssoftware und den Abteilungen für Informationssysteme der Partnerkrankenhäuser (siehe Publishers' Kit). Entscheidet sich die Partnerinstitution für die Methode der vernetzten Datenerhebung (mode connecté), sind die Gesundheitsfachpersonen verpflichtet, den Mindestdatensatz SDM-MR.fr direkt in ihre elektronische Patientenakte einzugeben. Sie haben den Vorteil, dass sie nicht viele bereits vorhandene Daten, insbesondere Identitätsdaten, erneut eingeben müssen. Innerhalb des KIS gilt die elektronische Patientenakte (EMR) als zentrales Element des Vertrauens in Bezug auf Patientenidentitäten."

In Deutschland kann der Verbundene Modus in Klinischen Arbeitsplatzsystemen oder Facharztakten vorrangig für den Deutschen SE-Minimalbasisdatensatz (MBDS-SE.de) im Modul SE des MII KDS so gestaltet werden, dass die beabsichtigt geteilten Daten über die Datenintegrationszentren breit für die Gemeinsame Nutzung im Netzwerk Universitätsmedizin zur Verfügung stehen. Diese Zukunft hat für das wichtigste Element, die ORPHAcode-Kodierung, schon an sehr vielen Standorten und für weitere Merkmale des Moduls SE schon an einigen Standorten begonnen.

### FHIR Questionnaires für strukturierte Datenerhebung

Zur Vereinfachung der Datenerfassung sind standardisierte FHIR Questionnaires in Entwicklung:

**Geplante Fragebögen:**

* **Ersterfassungsbogen**: Strukturierte Erhebung von Basisinformationen, Familienanamnese und initialen Symptomen
* **Verlaufsdokumentation**: Standardisierte Erfassung von Symptomverläufen und Therapieansprechen
* **Genetische Beratung**: Detaillierte Stammbaumerhebung und Erfassung genetischer Risikofaktoren

Die Questionnaires werden:

* Das SDC (Structured Data Capture) Profil implementieren
* Automatische Vorbefüllung aus Bestandsdaten unterstützen
* Conditional Logic für dynamische Formulare bieten
* Gegen Terminologieserver validiert werden

### Mitwirkung und Feedback

Die zukünftigen Entwicklungen sollen erfolgt in enger Abstimmung mit den Zentren für Seltene Erkrankungen (ZSE) und den bestehenden Registerbetreibern sowie dem NUM-FOSA Seltene Erkrankungen erfolgen. Feedback und Vorschläge können über das Modulteam Seltene Erkrankungen in die MII eingebracht werden.

### Hinweise zur Implementierung

Bei der Implementierung des KDS-Moduls **Seltene Erkrankungen** sind besonder folgende Punkte (aufsteigend sortiert) wichtig:

1. Kodierung nach der**Orphanet Nomenklatur der Seltenen Krankheiten**des[Orphanet](https://www.orpha.net/de/disease)mit krankheitsspezifischen, eindeutigen**ORPHAcodes**,
1. Phänotypisierung nach der**Human Phenotype Ontology**([HPO](https://hpo.jax.org/)),
1. Abbildung der Familienanamnese des Indexpatienten.

### Referenzen

* Grundlage des KDS-Moduls Seltene Erkrankungen ist hauptsächlich der europäische Basis-Datensatz für Seltene Erkrankungen der European Rare Disease Registry Infrastructure - ERDRI ([ERDRI CDS](https://eu-rd-platform.jrc.ec.europa.eu/sites/default/files/CDS/JRC-2018-00192-00-00-DE-TRA-00-Final.pdf)). Ziel dabei ist die Harmonisierung der verwendeten Datenelemente und Datenstrukturen in bestehenden und zukünftigen Registern in Europa. Die Verwendung des "Satzes gemeinsamer Datenelemente für die Registrierung seltener Krankheiten" ("Set of common data elements for rare diseases registration") durch jedes Register ist ein erster Schritt auf dem Weg zu diesem Ziel und zur Interoperabilität der Register für seltene Erkrankungen europaweit.
* Eine weitere wichtige Referenz ist der Datensatz des [Nationalen Registers für Seltene Erkrankungen (NARSE)](https://www.narse.de/), welches von der Eva Luise und Horst Köhler Stiftung angestoßen wurde und vom Berlin Institute of Health in der Charité (BIH@Charité) umgesetzt wird.
* Da im [Modellvorhaben Genomsequenzierung](https://www.bfarm.de/DE/Das-BfArM/Aufgaben/Modellvorhaben-Genomsequenzierung/Informationen-und-downloads/_node.html) eine **Datensatzspezifikation** für den Bereich der Onkologie **und** für den Bereich der **Seltenen Erkrankungen** vorgenommen wurde, ist es besonders wichtig, beide Datensätze zu harmonisieren.
* Das [Netzwerk Universitätsmedizin (NUM)](https://www.netzwerk-universitaetsmedizin.de/) hebt die Forschung und die Verbesserung der Versorgung für Menschen mit SE bei den Kriterien der Projektauswahl besonders hervor. Da zirka 80 Prozent der SE genetischen Ursprungs sind, müssen laut NAMSE die einrichtungsübergreifenden, sowohl auf Versorgungs‐ als auch Forschungsunterstützung ausgerichteten Doku‐ mentationen neben der präzisen Kodierung der Diagnosen (ICD reicht nicht, es müssen ORPHACodes sein), auch Angaben zu Phänotypisierung und Genotypisierung enthalten.
* Wegen der Heterogenität der Erkrankungen mit unterschiedlichen Versorgungs‐, Forschungs‐ und Dokumentationsbedarfen sind von der Gemeinsamen Forschungsstelle (Joint Research Council, JRC) der EU Kommission 24 Erkrankungsgruppen definiert worden, bei denen die europaweite Zusammenarbeit von Versorgungseinrichtungen und Forschungsgruppen in 24 [Europäischen Referenznetzwerken (ERN)](https://health.ec.europa.eu/rare-diseases-and-european-reference-networks_de) gefördert werden, die jeweils voneinander unterschiedliche, an die Krankheitsbilder angepasste Datenerhebungen in Registern umsetzen oder anstreben. Bei aller Verschiedenheit konnte für die verschiedenen ERN‐Register dennoch ein gemeinsamer Kerndatensatz (Common Data Set, CDS) festgelegt werden ‐ im Bild einer umfassenden Blume die gemeinsame Blüte, um die sich die Blütenblätter der verschiedenen spezifischen Dokumentationen reihen. Dieses Dataset wird Set of Common Data Elements der European Rare Disease Registry Infrastructure (ERDRI CDS) genannt und spielt auch bei der Ableitung des deutschen Kerndatensatzes für SE eine zentrale Rolle.
* Das [Nationale Aktionsbündnis für Menschen mit Seltenen Erkrankungen (NAMSE)](https://www.namse.de/), dessen Gründung nach französischem Vorbild in 2010 auf eine Empfehlung der EU‐Kommission zurückgeht, ist ein Zusammenschluss zwischen dem Bundesministerium für Gesundheit (BMG), dem Bundesministerium für Bildung und Forschung (BMBF) und der Betroffenenorganisation ACHSE e.V. (Allianz Chronischer Seltener Erkrankungen) mit 25 Bündnispartnern ‐ allesamt Spitzen‐ und Dachverbände der wesentlichen Akteure im Gesundheitswesen auf dem Gebiet der SE. Das NAMSE hebt in seiner Digitalstrategie die Notwendigkeit der einrichtungsübergreifenden digitalen Zusammenarbeit der Akteure im Gesundheitssystem hervor, und betont die Notwendigkeit von abgestimmten, präzisen, interoperablen, findbaren Dokumentationen im Versorgungs‐ und im Forschungskontext. Dabei kommt der Vernetzung der Zentren für Seltene Erkrankungen in der Universitätsmedizin mit Anschluss an komplementäre europäische Strukturen eine besondere Bedeutung zu. Das Bundesministerium für Bildung und Forschung hat bei der Ausschreibung der Medizininformatik‐Initiative die Notwendigkeit der IT‐Unterstützung bei Diagnose und Therapiewahl exponiert angezeigt.

