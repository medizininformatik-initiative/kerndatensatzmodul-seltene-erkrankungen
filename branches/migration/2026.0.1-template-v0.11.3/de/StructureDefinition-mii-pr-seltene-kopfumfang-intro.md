<!-- Quelle: MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/Messbefunde/Kopfumfang-Observation.page.md (Simplifier-Guide 2026.0.1, migriert 2026-08-28, Direktiven gestript) -->
Dieses Profil beschreibt die Messung des Kopfumfangs (okzipital-frontal) eines Patienten. Der Kopfumfang ist besonders relevant bei seltenen Erkrankungen mit Auswirkungen auf das Schädelwachstum, z.B. Skelettdysplasien, neurologische Erkrankungen oder Syndrome mit Makro-/Mikrozephalie.

### Klinische Bedeutung

Die Messung des Kopfumfangs ist ein wichtiger Parameter bei:
- **Skelettdysplasien**: Erkrankungen wie Achondroplasie zeigen oft charakteristische Kopfproportionen
- **Neurologischen Erkrankungen**: Makrozephalie oder Mikrozephalie als Leitsymptom
- **Syndromen**: Viele seltene Syndrome haben charakteristische Kopfmaße als diagnostisches Kriterium
- **Entwicklungsstörungen**: Verlaufskontrolle des Schädelwachstums

### Kodierung

Das Profil verwendet den LOINC-Code **9843-4** (Head Occipital-frontal circumference) für die standardisierte Kodierung der Messung.

---

**Suchparameter**

Folgende Suchparameter sind für das Modul Seltene Erkrankungen relevant, auch in Kombination:

1. Der Suchparameter ```_id``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?_id=1234```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-kopfumfang```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#all).

3. Der Suchparameter "code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?code=http://loinc.org|9843-4```

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

    ```GET [base]/Observation?value-quantity=35|http://unitsofmeasure.org|cm```

    Anwendungshinweise: Weitere Informationen zur Suche nach "value-quantity" finden sich in der FHIR-Basisspezifikation - Abschnitt "quantity".

Beispielinstanzen sind auf der Profilseite im Abschnitt „Examples" verlinkt.
