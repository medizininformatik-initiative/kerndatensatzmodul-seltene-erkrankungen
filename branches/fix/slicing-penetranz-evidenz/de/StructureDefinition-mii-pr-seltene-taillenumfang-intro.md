<!-- Quelle: MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/Messbefunde/Taillenumfang-Observation.page.md (Simplifier-Guide 2026.0.1, migriert 2026-08-28, Direktiven gestript) -->
Dieses Profil beschreibt die Messung des Taillenumfangs (Bauchumfang auf Nabelhöhe) eines Patienten. Der Taillenumfang ist relevant für seltene Erkrankungen mit metabolischen Komponenten oder Skelettdysplasien.

### Klinische Bedeutung

Die Messung des Taillenumfangs ist ein wichtiger Parameter bei:
- **Metabolischen Erkrankungen**: Beurteilung der abdominalen Adipositas bei Stoffwechselstörungen
- **Skelettdysplasien**: Dokumentation von Körperproportionen
- **Syndromen mit Körperbauauffälligkeiten**: Charakteristische Verteilung des Körperfetts
- **Berechnung des Taille-Hüft-Verhältnisses (WHR)**: In Kombination mit dem Hüftumfang

### Kodierung

Das Profil verwendet den LOINC-Code **8280-0** (Waist Circumference at umbilicus by Tape measure) für die standardisierte Kodierung der Messung.

---

**Suchparameter**

Folgende Suchparameter sind für das Modul Seltene Erkrankungen relevant, auch in Kombination:

1. Der Suchparameter ```_id``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?_id=1234```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-taillenumfang```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#all).

3. Der Suchparameter "code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?code=http://loinc.org|8280-0```

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

    ```GET [base]/Observation?value-quantity=82|http://unitsofmeasure.org|cm```

    Anwendungshinweise: Weitere Informationen zur Suche nach "value-quantity" finden sich in der FHIR-Basisspezifikation - Abschnitt "quantity".

Beispielinstanzen sind auf der Profilseite im Abschnitt „Examples" verlinkt.
