---
parent: 
topic: Procedure
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapie-durchgefuehrt
---

## {{page-title}}

Dieses Profil beschreibt eine **durchgeführte Therapie** bei Patienten mit Seltenen Erkrankungen gemäß der NARSE-Klassifikation. Es handelt sich um ein minimales Profil, das unabhängig vom Durchführungsort (ambulant, stationär, außerhalb des Krankenhauses) verwendet werden kann.

### Kontext und Verwendung

Das Profil wurde speziell für die Dokumentation im Rahmen des **Nationalen Aktionsbündnisses für Menschen mit Seltenen Erkrankungen (NAMSE)** und der **NARSE-Register** entwickelt. Es erfasst den Therapietyp aus einer vordefinierten Liste, die die häufigsten Therapieformen bei seltenen Erkrankungen abdeckt.

### NARSE Therapietypen

Die folgenden Therapietypen sind im CodeSystem definiert:

| Code | Bezeichnung | Beschreibung |
|------|-------------|--------------|
| `keine` | Keine | Keine Therapie |
| `pharmakotherapie` | Pharmakotherapie | Medikamentöse Therapie mit konventionellen Arzneimitteln |
| `gentherapie` | Gentherapie | Therapie mit genetisch veränderten Zellen oder direkter Genmodifikation |
| `mrna-therapie` | mRNA Therapie | Therapie mit mRNA-basierten Therapeutika |
| `antikoerpertherapie` | Antikörpertherapie | Therapie mit monoklonalen oder polyklonalen Antikörpern |
| `cart-zelltherapie` | CAR-T-Zelltherapie | Chimäre Antigenrezeptor-T-Zelltherapie |
| `stammzelltransplantation` | Stammzelltransplantation | Hämatopoetische Stammzelltransplantation (autolog oder allogen) |
| `stoffwechseltherapie` | Stoffwechseltherapie | Therapie zur Korrektur von Stoffwechselstörungen (z.B. Enzymersatztherapie) |
| `sonstiges` | Sonstiges | Andere Therapieform, nicht näher spezifiziert |
| `unbekannt` | Unbekannt | Therapietyp ist nicht bekannt |

### Struktur und Inhalt

@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapie-durchgefuehrt' 
select 
    Name: name, Status: status, Version: version, Canonical: url, Basis: baseDefinition
```

### Inhalt

<tabs>
  <tab title="Darstellung">{{tree, buttons}}</tab>
  <tab title="Beschreibung"> 
        @```
        from
	        StructureDefinition
        where
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapie-durchgefuehrt'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapie-durchgefuehrt' 
        for 
            differential.element 
            where 
                mustSupport = true 
            select Feldname: id, Kurzbeschreibung: short, Hinweise: comment
        ```
  </tab>
  <tab title="XML">{{xml}}</tab>
  <tab title="JSON">{{json}}</tab>
  <tab title="Link">{{link}}</tab>
</tabs>

---

### Implementierungshinweise

#### Minimaler Datensatz
Dieses Profil definiert bewusst nur die minimalen Anforderungen:
- **status**: Pflichtfeld (aus FHIR-Basis)
- **subject**: Referenz zum Patienten (Pflicht)
- **code**: NARSE-Therapietyp (Pflicht)
- **performed[x]**: Durchführungszeitpunkt (wenn verfügbar)

#### Verwendung außerhalb des Krankenhauses
Da viele Therapien bei seltenen Erkrankungen außerhalb des stationären Settings erfolgen (z.B. zu Hause, in spezialisierten Zentren), ist dieses Profil **nicht** an das MII-Prozedur-Modul gebunden. Eine MII-Prozedur kann optional einen zusätzlichen NARSE-Code enthalten. 

#### Integration mit anderen Profilen
- Kann über `basedOn` auf Therapieempfehlungen verweisen
- Kann über `reasonReference` auf Diagnosen verweisen (optional)
- Kann in CarePlan.activity.detail aufgenommen werden

---

### Beispiele

#### Gentherapie bei SMA
{{json:mii-exa-seltene-narse-gentherapie-sma}}

#### Enzymersatztherapie bei Morbus Pompe
{{json:mii-exa-seltene-narse-stoffwechseltherapie-pompe}}

---

### Verwandte Profile
- [Therapieempfehlung-Medikamentös](Therapieempfehlung-Medikamentoes.page.md) - Für Therapieempfehlungen
- [Therapieempfehlung-Nicht-Medikamentös](Therapieempfehlung-Nicht-Medikamentoes.page.md) - Für nicht-medikamentöse Empfehlungen
- [Therapieplan](Therapieplan.page.md) - Übergeordneter Therapieplan