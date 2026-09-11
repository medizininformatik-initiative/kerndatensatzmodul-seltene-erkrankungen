# Translation Information - MII IG Kerndatensatz-Modul Seltene Erkrankungen v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **Translation Information**

## Translation Information

This guide is written in **English** (the default language); **German** is the translation. English is therefore both the base rendering of the guide and the `/en/` rendering; use the language switcher at the top right to move between `/en/` and `/de/`.

Translated pages live under `input/translations/de/pagecontent/` (same file name as the English page); resource translations are `.po` files under `input/translations/de/`. Details: [`docs/recipes/add-translation.md`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-seltene-erkrankungen/blob/main/docs/recipes/add-translation.md) in this repository.

**State of translation** (v2027.0.0-ballot.rc1):

| | |
| :--- | :--- |
| Narrative pages | 22 of 22 translated |
| Page titles, breadcrumbs, table of contents | 25 of 25 units translated (one`.po`file) |
| Navigation menu | maintained separately per language (`includes/menu.xml`) |
| Titles and descriptions of profiles, value sets and code systems | **not translated**— all 64 artefacts render in English in both language trees |

> **Known gap:** the last row. Artefact titles and descriptions reach the reader from the resources themselves, not from the page sources, so translating them means adding translation units for each element rather than editing a page. The module has not done this, and a reader on `/de/` therefore meets English text on every artefact page. This is a gap in coverage, not in correctness: the German narrative pages explain every artefact, and the codes and bindings are language-independent.

One note on provenance: the predecessor guide on Simplifier was written in German. The chapters carried over from it were machine-translated into English during the migration and are under editorial review, so the German wording is the older of the two for those pages.

