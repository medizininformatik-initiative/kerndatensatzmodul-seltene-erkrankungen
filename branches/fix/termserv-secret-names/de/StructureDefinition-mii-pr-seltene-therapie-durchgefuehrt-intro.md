<!-- Quelle: MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/TherapieUndForschung/Therapie/Therapie-Durchgefuehrt-NARSE.page.md (Simplifier-Guide 2026.0.1, migriert 2026-08-28, Direktiven gestript) -->
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

Beispielinstanzen sind auf der Profilseite im Abschnitt „Examples" verlinkt.

**Suchparameter**

Folgende Suchparameter sind für das Modul Seltene Erkrankungen relevant, auch in Kombination:

1. Der Suchparameter ```_id``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?_id=1234```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapie-durchgefuehrt```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#all).

3. Der Suchparameter "code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?code=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-narse-therapietyp|gentherapie```

    Anwendungshinweise: Weitere Informationen zur Suche nach "code" finden sich in der FHIR-Basisspezifikation - Abschnitt "token".

4. Der Suchparameter "subject" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?subject=Patient/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "subject" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".

5. Der Suchparameter "date" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?date=2024-02-08```

    Anwendungshinweise: Weitere Informationen zur Suche nach "date" finden sich in der FHIR-Basisspezifikation - Abschnitt "date".

6. Der Suchparameter "status" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?status=completed```

    Anwendungshinweise: Weitere Informationen zur Suche nach "status" finden sich in der FHIR-Basisspezifikation - Abschnitt "token".

---

### Verwandte Profile
- [Therapieempfehlung-Medikamentös](StructureDefinition-mii-pr-seltene-therapieempfehlung.html) - Für Therapieempfehlungen
- [Therapieempfehlung-Nicht-Medikamentös](StructureDefinition-mii-pr-seltene-therapieempfehlung-nicht-medikamentoes.html) - Für nicht-medikamentöse Empfehlungen
- [Therapieplan](StructureDefinition-mii-pr-seltene-therapieplan.html) - Übergeordneter Therapieplan
