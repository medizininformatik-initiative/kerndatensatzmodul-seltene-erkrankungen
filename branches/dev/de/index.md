# Startseite - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* **Startseite**

## Startseite

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/ImplementationGuide/mii-ig-seltene | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2026-09-02 | *Maschinenlesbarer Name*:MII_IG_Seltene_Erkrankungen |

 Diese Seite enthält Übersetzungen aus der Originalsprache, in der der Leitfaden verfasst wurde. Informationen zu diesen Übersetzungen und Anweisungen zum Abgeben von Feedback zu den Übersetzungen finden Sie [hier](translationinfo.md). 

Die vorliegende Spezifikation beschreibt die FHIR-Repräsentation des Kerndatensatz-Moduls Seltene Erkrankungen der Medizininformatik-Initiative. Im Folgenden werden die Use Cases des Moduls, sowie die dazugehörigen FHIR-Profile und Terminologie-Ressourcen in ihrer verbindlichen Form beschrieben.

| | |
| :--- | :--- |
| Datum | TODO:REVIEW (ci-build) |
| Version | 2027.0.0-ballot |
| Status | Active |
| Realm | DE |

> **Written during migration - review before release.** Datum und Version in der Tabelle oben wurden durch die Migration auf den Arbeitsstand 2027.0.0-ballot gesetzt; die Quellseite dokumentierte das Release 2026.0.1 (30.03.2026).

## Impressum

Dieser Leitfaden ist im Rahmen der Medizininformatik Initiative erstellt worden und unterliegt per Governance-Prozess dem Abstimmungsverfahren des Interoperabilitätsforums und der Technischen Komitees von HL7 Deutschland e. V.

## Ansprechpartner

* Josef Schepers, Berlin Institute of Health (Charité) - Modulsprecher
* Michéle Zoch, Uniklinik Dresden - Modulsprecher
* Martin Bartos, Klinikum Chemnitz - Modulsprecher
* Thomas Debertshäuser, Berlin Institute of Health (Charité)
* Miriam Hübner, Berlin Institute of Health (Charité)
* Steffen Sander, Berlin Institute of Health (Charité)
* Marco Scharschmidt, Berlin Institute of Health (Charité)
* Claudia Finis, Berlin Institute of Health (Charité)
* Stefanie Rudolph, Berlin Institute of Health (Charité)
* Christine Mundlos, ACHSE e.V.
* Clemens Hentrich, Uniklinik Dresden
* Jessica Vasseur, Uniklinik Frankfurt am Main
* Susanne Vorhagen, Uniklinik Köln
* Romina Blasini, Uniklinik Gießen
* Patrik Bovio, Uniklinik Freiburg
* Karoline Buckow, TMF – Technologie- und Methodenplattform für die vernetzte medizinische Forschung e.V.
* Franziska Klepka, TMF – Technologie- und Methodenplattform für die vernetzte medizinische Forschung e.V.

Fragen zu der vorliegenden Publikation können jederzeit unter [chat.fhir.org](https://chat.fhir.org) im Stream 'german/mi-initiative' gestellt werden.

Anmerkungen und Kritik werden in Form von 'Issues' im [GitHub-Projekt](https://github.com/medizininformatik-initiative/kerndatensatzmodul-seltene-erkrankungen/issues) stets gern entgegengenommen.

## Autoren (in alphabetischer Reihenfolge)

* Thomas Debertshäuser, Berlin Institute of Health (Charité)
* Miriam Hübner, Berlin Institute of Health (Charité)
* Steffen Sander, Berlin Institute of Health (Charité)
* Marco Scharschmidt, Berlin Institute of Health (Charité)
* Josef Schepers, Berlin Institute of Health (Charité)

## Copyright-Hinweis, Nutzungshinweise

Copyright © 2019+: TMF e. V., Charlottenstraße 42, 10117 Berlin

Der Inhalt dieser Spezifikation ist öffentlich. Die Nachnutzungs- bzw. Veröffentlichungsansprüche sind nicht beschränkt.

Zu den Nutzungsrechten der zugrunde liegenden FHIR-Technologie siehe die FHIR-Basis-Spezifikation.

Einige verwendete Codesysteme werden von anderen Organisationen herausgegeben und gepflegt. Es gilt das Copyright der dort jeweils aufgeführten Herausgeber (Publisher).

## Disclaimer

Der Inhalt dieses Dokuments ist öffentlich. Zu beachten ist, dass Teile dieses Dokuments auf FHIR Version R4 beruhen, für die Copyright HL7 International gilt.

## Beschreibung des Moduls

### Einleitung

Obwohl geschätzt wird, dass von **Seltenen Erkrankungen (SE)** in Deutschland rund 4 Millionen Menschen (5 % der Bevölkerung) betroffen sind, gelten die davon Betroffenen als die Waisenkinder der Medizin und der MII. Daher fordert das Nationale Aktionsbündnis für Menschen mit Seltenen Erkrankungen (NAMSE), dass die Digitalisierung der Krankenversorgungs‐ und Gesundheitssysteme dieser großen Bevölkerungsgruppe in besonderem Maße zu Gute kommen muss.

Die große Herausforderung bei den SE ergibt sich aus der Vielzahl sehr verschiedener **„Störungen“** und **„Subtypen von Störungen“** (von bis zu 10.000 ist die Rede) mit jeweils nur kleinen Fallzahlen je **„Störung“**.

* Eine Erkrankung gilt in der Europäischen Union als **„Selten"**, wenn von ihr weniger als **5 von 10.000** Einwohnern betroffen sind – also maximal 40.000 Personen in Deutschland.
* Als **„Ultraselten"** gelten Erkrankungen, wenn weniger als 1 unter 50.000 Personen betroffen sind, auch wenn derzeit keine offizielle Definition von Seiten der EU vorliegt.

Regelmäßig ergeben sich bei SE – insbesondere bei Ultraseltenen – vor der Feststellung der eigentlichen Diagnose jahrelange diagnostische Ungewissheiten, die auch Fehlbehandlungen mit sich bringen. Aber auch nach der Feststellung der Diagnose kann nur für rund 5 % der Patient:innen eine gezielte Therapie angeboten werden, weswegen weitere koordinierte Forschung für die verstreut versorgten kleinen Gruppen besonders wichtig ist.

Als Anfang der Verbesserungsprozesse darf die Sichtbarmachung der Personen mit SE mittels exakter Kodierung der SE-Diagnosen durch ORPHAcodes aus der Orphanet-Nomenklatur (Orphanet Nomenclature of Rare Diseases) angesehen werden. Diese ergänzt die gröbere ICD-Klassifizierung und -Kodierung der Diagnosen für das Segment der SE. Laut Robert Koch-Institut (RKI) und Bundesinstitut für Arzneimittel und Medizinprodukte (BfArM) stärkt die Sichtbarmachung der SE die Möglichkeiten der Diagnostik- und Therapieentwicklung sowie der IT-Unterstützung von Diagnose und Therapiewahl.

Die ORPHAcode-Kodierung ist bereits im Modul **DIAGNOSE** als mögliche Ergänzung zur ICD-Kodierung eingerichtet worden. Die Aufnahme in das Modul SE unterstreicht die Bedeutung der exakten Kodierung als Dreh- und Angelpunkt der weiteren SE-Elemente im MII KDS im Allgemeinen und im Modul SE im Besonderen.

-------

Wie die anderen Implementierungsleitfäden (IG) der Module des MII-KDS soll das **Modul Seltene Erkrankungen** in den Datenintegrationszentren bei der Aufbereitung von vorhandenen Patientendaten aus dem Versorgungskontext unterstützen. Das KDS-Modul baut bewusst auf bereits vorhandenen Modulen des MII-KDS auf. Bereits modellierte Datenelemente und Strukturen werden, wo möglich, wiederverwendet, anstatt sie zu duplizieren. Das KDS-Modul SE versteht sich im Wesentlichen als themenspezifisches „Kompositum (Zusammensetzung)“, das verschiedene relevante Datenelemente aus unterschiedlichen Modulen mit kleinen Ergänzungen integriert, ohne die zugrunde liegenden Module vollständig zu übernehmen oder abzulösen. Es wurde wegen inhaltlicher Überschneidungen von Merkmalen eine merkliche Überlappung mit Implementierungsregeln der Module **DIAGNOSE, SYMPTOM/PHÄNOTYP** und **MOLEKULARGENETIK** umgesetzt.

Für eine umfassende Beschreibung Seltener Erkrankungen sind neben den im SE-Modul adressierten Inhalten weitere Module des MII-KDS relevant, u. a. **Labor**, **Molekulargenetischer Befund** und **PROMs**. Perspektivisch sind zudem weitere KDS-Module (z. B. **Fallkonferenz im Zentrum für Seltene Erkrankungen (ZSE), Neugeborenenscreening**) sinnvoll. Das vorliegende SE‑Modul ist jedoch bewusst schlank gehalten und fokussiert auf die wiederverwendbare Integration bereits modellierter Datenelemente, um Implementierbarkeit und Interoperabilität zu erleichtern.

Zugleich soll das Modul SE als Anleitung zu einer einheitlichen, semantisch interoperablen, standardisierten **EU-konformen SE-Dokumentation** an Klinischen Arbeitsplätzen dienen, was sich auch in dem Synonym **„Deutscher Minimalbasisdatensatz für Seltene Erkrankungen (MBDS-SE.de)"** ausdrückt, wodurch die semantische Nähe zum französischen „Set de données minimal national maladies rares **(SDM-MR.fr)**" und zum Set of Common Data Elements der Europäischen ERN-Register **(ERDRI CDS.eu)**" angezeigt wird.

> **Hinweis zur Datenvollständigkeit:** Das Modul Seltene Erkrankungen modelliert primär diejenigen Datenelemente, die **spezifisch für seltene Erkrankungen** sind. Einige Datenelemente erscheinen zusätzlich, weil sie in anderen MII-Modulen noch nicht spezifiziert waren (z.B. BMI, Blutgruppe). Alle Daten aus anderen Modulen (Person, Labor, Pathologie, Molekulargenetischer Befund, etc.) können von abgeleiteten Forschungsprojekten frei genutzt werden. Die MII-Module sind konzeptionelle Konstrukte zur Datenaufbereitung und haben keine inhärente Bedeutung hinsichtlich der Vollständigkeit – ein Forschungsprojekt zu seltenen Erkrankungen wird typischerweise Daten aus mehreren Modulen kombinieren.

-------

Die gemäß Modul SE an klinischen Arbeitsplätzen erhobenen und in Datenintegrationszentren aufbereiteten Daten sollen:

* An den **Klinischen Arbeitsplätzen**, wo sie als Teil der **Versorgungsdokumentation** erhoben werden, für die lokale Unterstützung der Versorgung zur Verfügung stehen,
* Als KDS-Modul „Seltene Erkrankungen" des [MII KDS](https://www.medizininformatik-initiative.de/de/der-kerndatensatz-der-medizininformatik-initiative) über die **Datenintegrationszentren** in der MII und im NUM für **Verteilte und Zentrale Auswertungen** zur Verfügung stehen,
* Als [ERDRI CDS](https://eu-rd-platform.jrc.ec.europa.eu/sites/default/files/CDS/JRC-2018-00192-00-00-DE-TRA-00-Final.pdf) (mit Einwilligung der Betroffenen) an die einschlägigen **Register** der Europäischen Referenznetzwerke übermittelt werden,
* Als [NARSE Datensatz](https://www.narse.de/fileadmin/narse/2025-01-30_NARSE_Datenelemente_DE_V1.2.pdf) (mit Einwilligung der Betroffenen) an das **Centrale NARSE** für dessen Anwendungsszenarien übermittelt werden,
* Als **MBDS‐SE.de** nach europäischem und französischem Vorbild den Ausgangskern der Gestaltung von erkrankungsgruppen‐ und erkrankungsspezifischen Dokumentationen im Sinne eines **Föderierten NARSE‐Netzes Nationalen Gesundheitsdatenraumes** für Seltene Erkrankungen (einschließlich der DIZ der Universitätsklinika) bilden,
* Als MBDS‐SE.de in **Betroffenen‐geführten Dokumentationen** aufgenommen werden, um diese mit anderen Dokumentationen im Gesundheitsdatenraumes für SE im Föderierten NARSE‐Netz verknüpfen zu können,
* Über das [Forschungsdatenportal für Gesundheit (FDPG)](https://forschen-fuer-gesundheit.de/) von MII/NUM, die Virtuelle Plattform der [Virtuelle Plattform der European Rare Disease Research Alliance (ERDERA)](https://vp.ejprarediseases.org/) und weitere bei den Datenhaltern akkreditierte Plattformen die **Vernetzung von Betroffenen** fördern, das **Finden von Patient:innen für Forschungsprojekte** unterstützen und die **Berücksichtigung** der Seltenen Erkrankungen in der deutschen und europäischen **Gesundheitsberichterstattung voranbringen**.

-------

