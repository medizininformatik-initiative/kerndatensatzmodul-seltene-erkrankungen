## {{page-title}}

### Einleitung

Obwohl geschätzt wird, dass von **Seltenen Erkrankungen (SE)** in Deutschland rund 4 Millionen Menschen (5 % der Bevölkerung) betroffen sind, gelten die davon Betroffenen als die Waisenkinder der Medizin und der MII. Daher fordert das Nationale Aktionsbündnis für Menschen mit Seltenen Erkrankungen (NAMSE), dass die Digitalisierung der Krankenversorgungs‐ und Gesundheitssysteme dieser großen Bevölkerungsgruppe in besonderem Maße zu Gute kommen muss.

Die große Herausforderung bei den SE ergibt sich aus der Vielzahl sehr verschiedener *„Störungen“* und *„Subtypen von Störungen“* (von bis zu 10.000 ist die Rede) mit jeweils nur kleinen Fallzahlen je *„Störung“*.

* Eine Erkrankung gilt in der Europäischen Union als **„Selten"**, wenn von ihr weniger als **5 von 10.000** Einwohnern betroffen sind – also maximal 40.000 Personen in Deutschland.
* Als **„Ultraselten"** gelten Erkrankungen, wenn weniger als 1 unter 50.000 Personen betroffen sind, auch wenn derzeit keine offizielle Definition von Seiten der EU vorliegt.

Regelmäßig ergeben sich bei SE – insbesondere bei Ultraseltenen – vor der Feststellung der eigentlichen Diagnose jahrelange diagnostische Ungewissheiten, die auch Fehlbehandlungen mit sich bringen. Aber auch nach der Feststellung der Diagnose kann nur für rund 5 % der Patient:innen eine gezielte Therapie angeboten werden, weswegen weitere koordinierte Forschung für die verstreut versorgten kleinen Gruppen besonders wichtig ist.

Als Anfang der Verbesserungsprozesse darf die Sichtbarmachung der Personen mit SE mittels exakter Kodierung der SE-Diagnosen durch ORPHAcodes aus der Orphanet-Nomenklatur (Orphanet Nomenclature of Rare Diseases) angesehen werden. Diese ergänzt die gröbere ICD-Klassifizierung und -Kodierung der Diagnosen für das Segment der SE. Laut Robert Koch-Institut (RKI) und Bundesinstitut für Arzneimittel und Medizinprodukte (BfArM) stärkt die Sichtbarmachung der SE die Möglichkeiten der Diagnostik- und Therapieentwicklung sowie der IT-Unterstützung von Diagnose und Therapiewahl.

Die Orpha-Kodierung ist bereits im Modul **DIAGNOSE** als mögliche Ergänzung zur ICD-Kodierung eingerichtet worden. Die Aufnahme in das Modul SE unterstreicht die Bedeutung der exakten Kodierung als Dreh- und Angelpunkt der weiteren SE-Elemente im MII KDS im Allgemeinen und im Modul SE im Besonderen.

---

Wie die anderen Implementierungsleitfäden (IG) der Module des MII-KDS soll das **Modul Seltene Erkrankungen** in den Datenintegrationszentren bei der Aufbereitung von vorhandenen Patientendaten aus dem Versorgungskontext unterstützen. Das Erweiterungsmodul baut bewusst auf bereits vorhandenen Modulen des MII-KDS auf.  Bereits modellierte Datenelemente und Strukturen werden, wo möglich, wiederverwendet, anstatt sie zu duplizieren. Das Erweiterungsmodul SE versteht sich im Wesentlichen als themenspezifisches „Kompositum (Zusammensetzung)“, das verschiedene relevante Datenelemente aus unterschiedlichen Modulen mit kleinen Ergänzungen integriert, ohne die zugrunde liegenden Module vollständig zu übernehmen oder abzulösen. Es wurde wegen inhaltlicher Überschneidungen von Merkmalen eine merkliche Überlappung mit Implementierungsregeln der Module **DIAGNOSE, SYMPTOM/PHÄNOTYP** und **MOLEKULARGENETIK** umgesetzt.

Für eine umfassende Beschreibung Seltener Erkrankungen sind neben den im SE-Modul adressierten Inhalten weitere Module des MII-KDS relevant, u. a. **Labor**, **Molekulargenetischer Befund** und **PROMs**. Perspektivisch sind zudem weitere Erweiterungsmodule (z. B. **Fallkonferenz im Zentrum für Seltene Erkrankungen (ZSE), Neugeborenenscreening**) sinnvoll. Das vorliegende SE‑Modul ist jedoch bewusst schlank gehalten und fokussiert auf die wiederverwendbare Integration bereits modellierter Datenelemente, um Implementierbarkeit und Interoperabilität zu erleichtern.
 
Zugleich soll das Modul SE als Anleitung zu einer einheitlichen, semantisch interoperablen, standardisierten **EU-konformen SE-Dokumentation** an Klinischen Arbeitsplätzen dienen, was sich auch in dem Synonym **„Deutscher Minimalbasisdatensatz für Seltene Erkrankungen (MBDS-SE.de)“** ausdrückt, wodurch die semantische Nähe zum französischen „Set de données minimal national maladies rares **(SDM-MR.fr)**“ und zum Set of Common Data Elements der Europäischen ERN-Register  **(ERDRI CDS.eu)**“ angezeigt wird.


--- 

Die gemäß Modul SE an klinischen Arbeitsplätzen erhobenen und in Datenintegrationszentren aufbereiteten Daten sollen:
* An den *Klinischen Arbeitsplätzen*, wo sie als Teil der *Versorgungsdokumentation* erhoben werden, für die lokale Unterstützung der Versorgung zur Verfügung stehen,
* Als Erweiterungsmodul „Seltene Erkrankungen“ des <a href="https://www.medizininformatik-initiative.de/de/der-kerndatensatz-der-medizininformatik-initiative" target="_blank">MII KDS</a> über die *Datenintegrationszentren* in der MII und im NUM für **Verteilte und Zentrale Auswertungen** zur Verfügung stehen,
* Als <a href="https://eu-rd-platform.jrc.ec.europa.eu/sites/default/files/CDS/JRC-2018-00192-00-00-DE-TRA-00-Final.pdf" target="_blank">ERDRI CDS</a> (mit Einwilligung der Betroffenen) an die einschlägigen *Register* der Europäischen Referenznetzwerke übermittelt werden,
* Als <a href="https://www.narse.de/fileadmin/narse/2025-01-30_NARSE_Datenelemente_DE_V1.2.pdf" target="_blank">NARSE Datensatz</a> (mit Einwilligung der Betroffenen) an das *Centrale NARSE* für dessen Anwendungsszenarien übermittelt werden,
* Als *MBDS‐SE.de* nach europäischem und französischem Vorbild den Ausgangskern der Gestaltung von erkrankungsgruppen‐ und erkrankungsspezifischen Dokumentationen im Sinne eines *Föderierten NARSE‐Netzes Nationalen Gesundheitsdatenraumes* für Seltene Erkrankungen (einschließlich der DIZ der Universitätsklinika) bilden,
* Als MBDS‐SE.de in *Betroffenen‐geführten Dokumentationen* aufgenommen werden, um diese mit anderen Dokumentationen im Gesundheitsdatenraumes für SE im Föderierten NARSE‐Netz verknüpfen zu können,
* Über das <a href="https://forschen-fuer-gesundheit.de/" target="_blank">Forschungsdatenportal für Gesundheit (FDPG)</a> von MII/NUM, die Virtuelle Plattform der <a href="https://vp.ejprarediseases.org/" target="_blank">Virtuelle Plattform der European Rare Disease Research Alliance (ERDERA)</a> und weitere bei den Datenhaltern akkreditierte Plattformen die **Vernetzung von Betroffenen** fördern, das **Finden von Patient:innen für Forschungsprojekte** unterstützen und die **Berücksichtigung** der Seltenen Erkrankungen in der deutschen und europäischen **Gesundheitsberichterstattung voranbringen**.

---