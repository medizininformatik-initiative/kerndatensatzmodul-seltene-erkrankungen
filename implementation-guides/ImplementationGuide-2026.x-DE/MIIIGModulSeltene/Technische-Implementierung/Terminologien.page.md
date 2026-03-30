---
parent:
topic: Terminologien
---
## {{page-title}}

> **Hinweis zum BfArM Terminologieserver:** Die nachfolgend beschriebenen Kodesysteme ICD-10-GM und ORPHAcodes können über den [Terminologieserver des BfArM](https://www.bfarm.de/DE/Kodiersysteme/Terminologieserver/_node.html) abgerufen und in FHIR-basierten Systemen genutzt werden. Der Server stellt diese Terminologien als FHIR-konforme CodeSystem- und ValueSet-Ressourcen zur Verfügung.

# ICD-10-GM <a href="https://www.bfarm.de/DE/Kodiersysteme/Klassifikationen/ICD/ICD-10-GM/_node.html" target="_blank">(Internationale statistische Klassifikation der Krankheiten und verwandter Gesundheitsprobleme - German Modification)</a>

**ICD-10-GM** ist die deutsche Modifikation der internationalen Diagnosenklassifikation ICD-10 der WHO. Sie dient als gesetzlich vorgeschriebene Klassifikation zur Verschlüsselung von Diagnosen in der ambulanten und stationären Versorgung in Deutschland. Die ICD-10-GM wird jährlich vom BfArM (Bundesinstitut für Arzneimittel und Medizinprodukte) aktualisiert und an die Bedürfnisse des deutschen Gesundheitswesens angepasst. Für Seltene Erkrankungen enthält die ICD-10-GM nur wenige spezifische Kodes (z.B. Q87.4 für das Marfan-Syndrom). Die meisten Seltenen Erkrankungen werden unter Sammelkodes (sogenannte Resteklassen) gruppiert (z.B. Q87.8 für sonstige näher bezeichnete angeborene Fehlbildungssyndrome).

**BfArM-Ressourcen:**
- [ICD-10-GM Übersicht](https://www.bfarm.de/DE/Kodiersysteme/Klassifikationen/ICD/ICD-10-GM/_node.html)
- [ICD-10-GM Download](https://www.bfarm.de/DE/Kodiersysteme/Klassifikationen/ICD/ICD-10-GM/Download/_node.html)

# ORPHAcodes <a href="https://www.orpha.net" target="_blank">(Orphanet Nomenclature of Rare Diseases)</a>

**ORPHAcodes** sind eindeutige numerische Identifikatoren für seltene Erkrankungen aus der Orphanet-Datenbank. Orphanet ist das europäische Referenzportal für Informationen zu seltenen Erkrankungen und Orphan Drugs. Die Orphanet-Nomenklatur bietet eine präzisere Klassifikation seltener Erkrankungen als ICD-10 und ermöglicht eine eindeutige Identifikation von über 6.000 seltenen Erkrankungen. Die Codes werden international für Forschung, Diagnostik und epidemiologische Zwecke verwendet. In Deutschland ist die Kodierung mit ORPHAcodes für die Dokumentation in Zentren für Seltene Erkrankungen und für die Datenerhebung im Rahmen der Medizininformatik-Initiative von besonderer Bedeutung.

Beispiele:
- ORPHA:558 - Marfan-Syndrom
- ORPHA:83330 - Spinale Muskelatrophie Typ 1

**BfArM-Ressourcen:**
- [ORPHAcodes auf dem BfArM Terminologieserver](https://terminologien.bfarm.de/CodeSystem-orphacodes-2025.html)
- [ORPHAcodes auf Orphadata](https://www.orphacode.org/)
- [Orphanet Deutschland](https://www.orpha.net/consor/cgi-bin/index.php?lng=DE)

# Datei Alpha-ID-SE <a href="https://www.bfarm.de/DE/Kodiersysteme/Terminologien/Alpha-ID-SE/_node.html" target="_blank">(Mapping-Datei für Seltene Erkrankungen)</a>

> **Hinweis:** Die **Datei Alpha-ID-SE** ist eine **Mapping-Datei**, kein eigenständiges Kodiersystem. Sie dient der Verknüpfung von ORPHAcodes mit ICD-10-GM-Kodes und deutschen Bezeichnungen.

Die **Datei Alpha-ID-SE** wurde vom BfArM in Zusammenarbeit mit Orphanet entwickelt und verknüpft ORPHAcodes mit deutschen Bezeichnungen und ICD-10-GM-Kodes. Sie ermöglicht eine standardisierte Dokumentation seltener Erkrankungen im deutschen Gesundheitssystem und dient als Brücke zwischen der internationalen Orphanet-Klassifikation und der national verwendeten ICD-10-GM.

Die Datei Alpha-ID-SE wird insbesondere in folgenden Bereichen eingesetzt:
- Zentren für Seltene Erkrankungen
- Register für Seltene Erkrankungen
- Medizininformatik-Initiative
- Versorgungsforschung

Gemäß dem Digitale-Versorgung-und-Pflege-Modernisierungs-Gesetz (DVPMG) ist die Verwendung der Datei Alpha-ID-SE in allen deutschen stationären Einrichtungen im Falle von Primär- oder Sekundärdiagnosen von Seltenen Erkrankungen vorgeschrieben.

**BfArM-Ressourcen:**
- [Datei Alpha-ID-SE Übersicht](https://www.bfarm.de/DE/Kodiersysteme/Terminologien/Alpha-ID-SE/_node.html)
- [Datei Alpha-ID-SE Download](https://www.bfarm.de/DE/Kodiersysteme/Terminologien/Alpha-ID-SE/Download/_node.html)
- [Alpha-ID Terminologie](https://www.bfarm.de/DE/Kodiersysteme/Terminologien/Alpha-ID/_node.html)

# HPO <a href="https://hpo.jax.org" target="_blank">(Human Phenotype Ontology)</a> 

**HPO** wird zur präzisen und hierarchischen **Beschreibung klinischer Phänotypen und Symptome** beim Menschen genutzt. Die Ontologie umfasst strukturierte Begriffe (sogenannte „Terms") für phänotypische Merkmale und ermöglicht die computergestützte Auswertung sowie den Vergleich von Patienten- oder Krankheitsdaten. HPO kommt insbesondere bei der Diagnostik Seltener Erkrankungen, in der Forschung und beim Austausch zwischen medizinischen Datenbanken zum Einsatz.

Neben **HPO** werden weitere internationale Standards genutzt, wie z. B. für Conditions SNOMED CT. Außerdem ist die Erfassung mittels der gesetzlich vorgeschriebenen Klassifikation ICD-10-GM möglich.

Auch **FHIR** (Fast Healthcare Interoperable Resources) integriert HPO, um klinische Phänotypen standardisiert und interoperabel zwischen Softwaresystemen zu übertragen. Details zur Nutzung der HPO-Terminologie innerhalb von FHIR sind z. B. bei HL7 zu finden, inklusive Beispielen und Spezifikationen:
- FHIR-HPO-Terminologie: [HL7 HPO NamingSystem](https://terminology.hl7.org/5.2.0/NamingSystem-HPO.html)
- FHIR-HPO Codesystem: [HL7 FHIR HPO CodeSystem](https://build.fhir.org/ig/HL7/UTG/CodeSystem-HPO.html)

# OMIM <a href="https://www.omim.org" target="_blank">(Online Mendelian Inheritance in Man)</a>

**OMIM** ist eine frei zugängliche medizinische Online-Datenbank, die menschliche Gene und die mit ihnen verbundenen genetisch bedingten Erkrankungen katalogisiert. Sie enthält detaillierte Informationen zu Genen, Mutationen, klinischen Symptomen, Erbgängen und den molekulargenetischen Grundlagen. OMIM dient als zentrale Ressource für die genetische Forschung und Diagnostik, indem sie Zusammenhänge zwischen Genotyp und Phänotyp aufzeigt und regelmäßig aktualisiert wird.

# MONDO <a href="https://mondo.monarchinitiative.org" target="_blank">(Monarch Disease Ontology)</a> - Sekundäre Harmonisierungsontologie

> **Hinweis:** MONDO ist in diesem Implementierungsleitfaden eine **sekundäre Harmonisierungsontologie** und **kein primäres Diagnoseziel**. Die primäre Dokumentation von Diagnosen erfolgt weiterhin über die etablierten Kodiersysteme ICD-10-GM und ORPHAcodes. MONDO-Codes können optional ergänzend angegeben werden, um die internationale Interoperabilität zu verbessern.

**MONDO** (Monarch Disease Ontology) ist eine integrierte Ontologie, die verschiedene Krankheitsklassifikationen harmonisiert und zusammenführt. MONDO wurde vom Monarch Initiative Konsortium entwickelt, um Krankheitsdaten aus unterschiedlichen Quellen interoperabel zu machen.

## Zweck der MONDO-Integration

MONDO wird in diesem Modul als **Sekundärkodierung für internationale Interoperabilität** verwendet:

1. **Harmonisierung bestehender Kodiersysteme:** MONDO integriert automatisch Mappings zu SNOMED CT, ORPHAcodes, OMIM, ICD und weiteren Klassifikationen
2. **Integration mit internationalen Projekten:** MONDO ist das empfohlene Krankheitskodiersystem für:
   - [Phenopackets](https://phenopacket-schema.readthedocs.io/) (GA4GH Standard für phänotypische Daten)
   - Global Alliance for Genomics and Health (GA4GH) Standards
   - Internationale Forschungsregister und Datenbanken
3. **Semantische Interoperabilität:** MONDO ermöglicht die Verknüpfung von Daten, die mit unterschiedlichen nationalen Klassifikationen kodiert wurden

## Verwendung in FHIR-Profilen

In den FHIR-Profilen dieses Moduls wird MONDO als **optionaler** Coding-Slice bereitgestellt:
- Das MONDO-Codesystem verwendet die URI: `http://purl.obolibrary.org/obo/mondo.owl`
- MONDO-Codes haben das Präfix "MONDO:" gefolgt von einer siebenstelligen Nummer (z.B. MONDO:0007947 für Marfan-Syndrom)
- Die Angabe von MONDO-Codes ist **nicht verpflichtend**, kann aber die internationale Datenaustauschbarkeit verbessern

## Beispiele für MONDO-Codes

| Erkrankung | MONDO-Code | Entsprechende ORPHAcodes/OMIM-Codes |
|------------|------------|-------------------------------|
| Marfan-Syndrom | MONDO:0007947 | ORPHA:558, OMIM:154700 |
| Spinale Muskelatrophie | MONDO:0001516 | ORPHA:70 |
| Mukoviszidose | MONDO:0009061 | ORPHA:586, OMIM:219700 |

**Ressourcen:**
- [MONDO Website](https://mondo.monarchinitiative.org)
- [MONDO auf OBO Foundry](http://obofoundry.org/ontology/mondo.html)
- [Monarch Initiative](https://monarchinitiative.org)