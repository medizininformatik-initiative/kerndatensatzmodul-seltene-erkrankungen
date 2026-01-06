---
parent:
topic: Observation
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hueftumfang
---

## {{page-title}}

Dieses Profil beschreibt die Messung des Hüftumfangs (maximale Gesäßprotuberanz) eines Patienten. Der Hüftumfang ist relevant für seltene Erkrankungen mit Auswirkungen auf die Körperproportionen, metabolische Erkrankungen oder Skelettdysplasien.

### Klinische Bedeutung

Die Messung des Hüftumfangs ist ein wichtiger Parameter bei:
- **Metabolischen Erkrankungen**: Beurteilung der Fettverteilung und metabolischer Risikofaktoren
- **Skelettdysplasien**: Dokumentation von Körperproportionen und Skelettveränderungen im Beckenbereich
- **Syndromen mit Körperbauauffälligkeiten**: Charakteristische Proportionen als diagnostisches Merkmal
- **Berechnung des Taille-Hüft-Verhältnisses (WHR)**: In Kombination mit dem Taillenumfang zur Risikoabschätzung

### Kodierung

Das Profil verwendet den LOINC-Code **56063-1** (Circumference.at maximal protrusion of gluteus muscles Pelvis) für die standardisierte Kodierung der Messung.

@```
from
    StructureDefinition
where
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hueftumfang'
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
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hueftumfang'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from
            StructureDefinition
        where
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hueftumfang'
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

### Mapping Logisches Datenmodell zu FHIR

@```
from StructureDefinition
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/LogicalModel/Seltene'
    for differential.element
    where path contains 'Hueftumfang'
    select
        Element: path,
        Beschreibung: definition
```

---

### Verwendung mit Taille-Hüft-Verhältnis

Der Hüftumfang wird häufig in Kombination mit dem Taillenumfang zur Berechnung des **Taille-Hüft-Verhältnisses (Waist-to-Hip Ratio, WHR)** verwendet. Das WHR ist ein wichtiger Indikator für:
- Metabolisches Risiko
- Körperfettverteilung (androide vs. gynoide Verteilung)
- Prognose bei verschiedenen Erkrankungen

Siehe auch: {{pagelink:Waist-to-Hip-Ratio}}

---

**Suchparameter**

Folgende Suchparameter sind für das Modul Seltene Erkrankungen relevant, auch in Kombination:

1. Der Suchparameter ```_id``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?_id=1234```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-hueftumfang```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#all).

3. Der Suchparameter "code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?code=http://loinc.org|56063-1```

    Anwendungshinweise: Weitere Informationen zur Suche nach "code" finden sich in der FHIR-Basisspezifikation - Abschnitt "token".

4. Der Suchparameter "subject" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?subject=Patient/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "subject" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".

5. Der Suchparameter "date" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?date=2024-02-08```

    Anwendungshinweise: Weitere Informationen zur Suche nach "date" finden sich in der FHIR-Basisspezifikation - Abschnitt "date".

6. Der Suchparameter "value-quantity" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?value-quantity=98|http://unitsofmeasure.org|cm```

    Anwendungshinweise: Weitere Informationen zur Suche nach "value-quantity" finden sich in der FHIR-Basisspezifikation - Abschnitt "quantity".

**Beispiele**

{{json:mii-exa-seltene-hueftumfang}}

---
