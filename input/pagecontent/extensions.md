<!-- markdownlint-disable MD041 -->
<!-- Split from the former combined profiles-and-extensions.md per the TF-KDS-agreed
     menu structure (one page per artifact type).
     German mirror: input/translations/de/pagecontent/extensions.md. -->

This page lists the FHIR extensions defined by the **Seltene Erkrankungen** module
(naming convention `MII_EX_<Module>_<Name>`). Extensions carry information the
base resources and profiles cannot express; the profiles that use them are on
the [Profiles](profiles.html) page.

> [TODO: List and describe your module's extensions — or remove this page if
> your module defines none.]
{: .ig-highlight .ig-highlight-grey}

<!-- BEGIN GENERATED: artifact-list (scripts/generate-artifact-lists.py) -->

The module defines the following extensions.

| Title | Id | Purpose |
|---|---|---|
| MII EX SE Empfehlung Priorität | [`mii-ex-seltene-empfehlung-prioritaet`](StructureDefinition-mii-ex-seltene-empfehlung-prioritaet.html) | Priorität der (einzelnen) Empfehlung |
| MII EX SE Empfehlung Publikation | [`mii-ex-seltene-empfehlung-publikation`](StructureDefinition-mii-ex-seltene-empfehlung-publikation.html) | Verweis auf Publikation der (einzelnen) Empfehlung |
| MII EX SE Penetrance | [`mii-ex-seltene-penetrance`](StructureDefinition-mii-ex-seltene-penetrance.html) | Extension to capture the penetrance of genetic variants associated with a rare disease |
| MII EX SE Register | [`mii-ex-seltene-register`](StructureDefinition-mii-ex-seltene-register.html) | Optionaler Verweis auf den Library-Katalogeintrag des Registers nach dem Profil mii-pr-studie-register des MII KDS Moduls Studie. Der verbindliche Registerbezug laeuft ueber ResearchSubject.study, das in R4 zwingend auf eine ResearchStudy zeigt. |
| MII_EX_Seltene_VonSEBetroffen | [`mii-ex-seltene-von-se-betroffen`](StructureDefinition-mii-ex-seltene-von-se-betroffen.html) | Wird in der MII Modul SE Familienanamnese genutzt um zu bestimmen ob ein Familienmitglied an der gleichen SE erkrankt ist. |

<!-- END GENERATED: artifact-list -->
