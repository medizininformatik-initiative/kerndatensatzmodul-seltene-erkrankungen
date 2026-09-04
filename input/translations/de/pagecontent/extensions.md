<!-- markdownlint-disable MD041 -->
<!-- Deutsche Übersetzung von input/pagecontent/extensions.md (aufgeteilt aus
     der früheren Kombi-Seite profiles-and-extensions.md). -->

Diese Seite listet die FHIR-Extensions, die das Modul **Seltene Erkrankungen**
definiert (Namenskonvention `MII_EX_<Modul>_<Name>`). Extensions transportieren
Informationen, die die Basis-Ressourcen und Profile nicht ausdrücken können; die
Profile, die sie verwenden, stehen auf der Seite [Profile](profiles.html).

> [TODO: Listen und beschreiben Sie die Extensions Ihres Moduls — oder
> entfernen Sie diese Seite, wenn Ihr Modul keine definiert.]
{: .ig-highlight .ig-highlight-grey}

<!-- BEGIN GENERATED: artifact-list (scripts/generate-artifact-lists.py) -->

Das Modul definiert die folgenden Extensions.

| Titel | Id | Zweck |
|---|---|---|
| MII EX SE Empfehlung Priorität | [`mii-ex-seltene-empfehlung-prioritaet`](StructureDefinition-mii-ex-seltene-empfehlung-prioritaet.html) | Priorität der (einzelnen) Empfehlung |
| MII EX SE Empfehlung Publikation | [`mii-ex-seltene-empfehlung-publikation`](StructureDefinition-mii-ex-seltene-empfehlung-publikation.html) | Verweis auf Publikation der (einzelnen) Empfehlung |
| MII EX SE Penetrance | [`mii-ex-seltene-penetrance`](StructureDefinition-mii-ex-seltene-penetrance.html) | Extension to capture the penetrance of genetic variants associated with a rare disease |
| MII EX SE Register | [`mii-ex-seltene-register`](StructureDefinition-mii-ex-seltene-register.html) | Optionaler Verweis auf den Library-Katalogeintrag des Registers nach dem Profil mii-pr-studie-register des MII KDS Moduls Studie. Der verbindliche Registerbezug laeuft ueber ResearchSubject.study, das in R4 zwingend auf eine ResearchStudy zeigt. |
| MII_EX_Seltene_VonSEBetroffen | [`mii-ex-seltene-von-se-betroffen`](StructureDefinition-mii-ex-seltene-von-se-betroffen.html) | Wird in der MII Modul SE Familienanamnese genutzt um zu bestimmen ob ein Familienmitglied an der gleichen SE erkrankt ist. |

<!-- END GENERATED: artifact-list -->
