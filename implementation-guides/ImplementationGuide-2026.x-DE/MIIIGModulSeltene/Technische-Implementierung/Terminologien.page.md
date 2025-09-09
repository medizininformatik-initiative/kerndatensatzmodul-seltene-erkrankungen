## {{page-title}}

> **Hinweis zum BfArM Terminologieserver:** Die nachfolgend beschriebenen Kodesysteme ICD-10-GM, Orpha und Alpha-ID-SE können über den [Terminologieserver des BfArM](https://www.bfarm.de/DE/Kodiersysteme/Terminologieserver/_node.html) abgerufen und in FHIR-basierten Systemen genutzt werden. Der Server stellt diese Terminologien als FHIR-konforme CodeSystem- und ValueSet-Ressourcen zur Verfügung.

# ICD-10-GM <a href="https://www.bfarm.de/DE/Kodiersysteme/Klassifikationen/ICD/ICD-10-GM/_node.html" target="_blank">(Internationale statistische Klassifikation der Krankheiten und verwandter Gesundheitsprobleme - German Modification)</a>

**ICD-10-GM** ist die deutsche Modifikation der internationalen Diagnosenklassifikation ICD-10 der WHO. Sie dient als gesetzlich vorgeschriebene Klassifikation zur Verschlüsselung von Diagnosen in der ambulanten und stationären Versorgung in Deutschland. Die ICD-10-GM wird jährlich vom BfArM (Bundesinstitut für Arzneimittel und Medizinprodukte) aktualisiert und an die Bedürfnisse des deutschen Gesundheitswesens angepasst. Für Seltene Erkrankungen enthält die ICD-10-GM spezifische Codes, wobei viele seltene Erkrankungen unter Sammelcodes gruppiert werden (z.B. Q87.4 für Marfan-Syndrom).

**BfArM-Ressourcen:**
- [ICD-10-GM Übersicht](https://www.bfarm.de/DE/Kodiersysteme/Klassifikationen/ICD/ICD-10-GM/_node.html)
- [ICD-10-GM Download](https://www.bfarm.de/DE/Kodiersysteme/Klassifikationen/ICD/ICD-10-GM/Download/_node.html)

# Orpha <a href="https://www.orpha.net" target="_blank">(Orphanet Nomenklatur der Seltenen Krankheiten)</a>

**Orpha-Codes** sind eindeutige numerische Identifikatoren für seltene Erkrankungen aus der Orphanet-Datenbank. Orphanet ist das europäische Referenzportal für Informationen zu seltenen Erkrankungen und Orphan Drugs. Die Orpha-Nomenklatur bietet eine präzisere Klassifikation seltener Erkrankungen als ICD-10 und ermöglicht eine eindeutige Identifikation von über 6.000 seltenen Erkrankungen. Die Codes werden international für Forschung, Diagnostik und epidemiologische Zwecke verwendet. In Deutschland ist die Kodierung mit Orpha-Codes für die Dokumentation in Zentren für Seltene Erkrankungen und für die Datenerhebung im Rahmen der Medizininformatik-Initiative von besonderer Bedeutung.

Beispiele:
- Orpha:558 - Marfan-Syndrom
- Orpha:83330 - Spinale Muskelatrophie Typ 1

**BfArM-Ressourcen:**
- [Orpha-Kodiersystem beim BfArM](https://www.bfarm.de/DE/Kodiersysteme/Kooperationen-und-Projekte/Orphanet/_node.html)
- [Orphanet Deutschland](https://www.orpha.net/consor/cgi-bin/index.php?lng=DE)

# Alpha-ID-SE <a href="https://www.bfarm.de/DE/Kodiersysteme/Terminologien/Alpha-ID-SE/_node.html" target="_blank">(Alpha-ID für Seltene Erkrankungen)</a>

**Alpha-ID-SE** ist die deutsche Erweiterung der Alpha-ID speziell für Seltene Erkrankungen. Sie wurde vom BfArM in Zusammenarbeit mit Orphanet entwickelt und verknüpft die Orpha-Codes mit deutschen Bezeichnungen und ICD-10-GM-Codes. Die Alpha-ID-SE ermöglicht eine standardisierte Dokumentation seltener Erkrankungen im deutschen Gesundheitssystem und dient als Brücke zwischen der internationalen Orphanet-Klassifikation und der national verwendeten ICD-10-GM. Sie umfasst über 8.000 seltene Erkrankungen mit ihren deutschen Bezeichnungen, Synonymen und Verknüpfungen zu anderen Klassifikationssystemen.

Die Alpha-ID-SE wird insbesondere in folgenden Bereichen eingesetzt:
- Zentren für Seltene Erkrankungen
- Register für Seltene Erkrankungen
- Medizininformatik-Initiative
- Versorgungsforschung

**BfArM-Ressourcen:**
- [Alpha-ID-SE Übersicht](https://www.bfarm.de/DE/Kodiersysteme/Terminologien/Alpha-ID-SE/_node.html)
- [Alpha-ID-SE Download](https://www.bfarm.de/DE/Kodiersysteme/Terminologien/Alpha-ID-SE/Download/_node.html)
- [Alpha-ID Terminologie](https://www.bfarm.de/DE/Kodiersysteme/Terminologien/Alpha-ID/_node.html)

# HPO <a href="https://hpo.jax.org" target="_blank">(Human Phenotype Ontology)</a> 

**HPO** wird zur präzisen und hierarchischen **Beschreibung klinischer Phänotypen und Symptome** beim Menschen genutzt. Die Ontologie umfasst strukturierte Begriffe (sogenannte „Terms") für phänotypische Merkmale und ermöglicht die computergestützte Auswertung sowie den Vergleich von Patienten- oder Krankheitsdaten. HPO kommt insbesondere bei der Diagnostik Seltener Erkrankungen, in der Forschung und beim Austausch zwischen medizinischen Datenbanken zum Einsatz.

Neben **HPO** werden weitere internationale Standards genutzt, wie z. B. für Conditions SNOMED CT. Außerdem ist die Erfassung mittels der gesetzlich vorgeschriebenen Klassifikation ICD-10-GM möglich.

Auch **FHIR** (Fast Healthcare Interoperable Resources) integriert HPO, um klinische Phänotypen standardisiert und interoperabel zwischen Softwaresystemen zu übertragen. Details zur Nutzung der HPO-Terminologie innerhalb von FHIR sind z. B. bei HL7 zu finden, inklusive Beispielen und Spezifikationen:
- FHIR-HPO-Terminologie: [HL7 HPO NamingSystem](https://terminology.hl7.org/5.2.0/NamingSystem-HPO.html)
- FHIR-HPO Codesystem: [HL7 FHIR HPO CodeSystem](https://build.fhir.org/ig/HL7/UTG/CodeSystem-HPO.html)

# OMIM <a href="https://www.omim.org" target="_blank">(Online Mendelian Inheritance in Man)</a> 

**OMIM** ist eine frei zugängliche medizinische Online-Datenbank, die menschliche Gene und die mit ihnen verbundenen genetisch bedingten Erkrankungen katalogisiert. Sie enthält detaillierte Informationen zu Genen, Mutationen, klinischen Symptomen, Erbgängen und den molekulargenetischen Grundlagen. OMIM dient als zentrale Ressource für die genetische Forschung und Diagnostik, indem sie Zusammenhänge zwischen Genotyp und Phänotyp aufzeigt und regelmäßig aktualisiert wird.