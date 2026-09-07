# Page-structure advice

**This report PROPOSES and never edits a module.** It reads the source and target repositories read-only; its only writes are this report and the page-map v2 TSV (`--map`) - the map is the PRIMARY output and the contract step 5 consumes, this report is its rendering. Every routing row below is the branch the MEASUREMENTS support - a human (or the skill at step 5) decides and applies it.

| Input | Value |
| --- | --- |
| source repo | `/private/tmp/claude-501/-Users-thome-code-fhir-profiling-kerndatensatzmodul-seltene-erkrankungen/ea25fbf8-c4f3-4c5a-be9a-d2c220301297/scratchpad/seltene-source-unmigrated` |
| target repo | `.` |
| routing table | `/Users/thome/code/fhir-profiling/kerndatensatzmodul-onkologie/.claude/skills/mii-ig-migration/references/routing-table.tsv` (17 patterns) |
| Gate 0 preflight | `/Users/thome/code/fhir-profiling/kerndatensatzmodul-seltene-erkrankungen/migration-log/preflight-analysis.json` |
| artefact census | fsh-generated/resources (162 resources; cross-checked by Gate 0's generated_crosscheck) |
| page map | `migration-log/page-map.tsv` |
| generated | 2026-08-28T12:32:35Z |
| script | `page-structure-advice.py` v1.3.0 |

Contract limits in force: menu total <= 33, dropdown children <= 10, top level <= 8, menu depth <= 2; size gate at > 2500 words, > 4 merged sources, or ANY repeated heading title; hub at >= 3 children.

## 1. Source page tree

The tree is taken from the FIRST of four inputs that yields pages: **(a)** the `pages:` block of the source `sushi-config.yaml`, **(b)** the authoritative Simplifier guide tree under `implementation-guides/` (spec 5.1a), **(c)** a flat count of `input/pagecontent/*.md`.

**Input used: (a) the `pages:` block of `sushi-config.yaml`.**

### 1.0 Simplifier guide trees found

Every tree under `implementation-guides/` is listed - the choice is never made silently. Dispositions follow spec 5.1a: #1 authoritative, #2 parallel-language harvest seed, #3 historical/shared retained, #4 unrecognized.

| Guide tree | Title | Version (dir name) | Version (guide.yaml) | Lang | `*.page.md` on disk | Disposition |
| --- | --- | --- | --- | --- | ---: | --- |
| `ImplementationGuide-2026.x-DE` | Medizininformatik Initiative - ImplementationGuide - Modul Seltene Erkrankungen v2026 | 2026.x | 2026.0.1 | DE | 41 | **AUTHORITATIVE** - steps 5.4/5.5 operate on this tree |

**Chosen: `ImplementationGuide-2026.x-DE`** - highest version among the trees in the module's own narrative language DE (sushi-config `language:`): ImplementationGuide-2026.x-DE (directory version 2026.x, guide.yaml version 2026.0.1).

The module's narrative language read from `sushi-config.yaml` `language:` is **DE**.

- `--guide-tree` was given but the `pages:` block already yielded a page tree, and input (a) wins - the override had no effect.

**A human can override this choice**: re-run with `--guide-tree <directory name>`. The ranking above is evidence, not a verdict - confirm it against the rendered IG and record it in the inventory (Gate B reviews it).

_These trees were NOT used: the `pages:` block already yielded a page tree, and input (a) wins. They still need a disposition in the inventory._

### 1.1 Depth histogram

Parsed from `sushi-config.yaml`, indentation-based.

| Level | Pages | Share |
| --- | ---: | ---: |
| 1 | 15 | 100% |
| **total** | **15** | 100% |

Maximum depth used: **1**. Total words across the 15 source pages: **8561**. Pages in `input/pagecontent/`: **15**.

### 1.2 Parent-child tree

```
|- Home  `index.md`
|- Beschreibung des Moduls  `module-description.md`
|- Kontext und Bezüge zu anderen Modulen  `context.md`
|- Anwendungsszenarien  `scenarios.md`
|- Datensätze und Beschreibungen  `datasets.md`
|- Informationsmodell (UML)  `information-model.md`
|- FHIR-Profile (Übersicht)  `profiles-overview.md`
|- Terminologien  `terminology.md`
|- CapabilityStatement  `capability.md`
|- Leitfaden Klinisch-genetische Diagnose  `clinical-genetic-diagnosis-guide.md`
|- Kodier-Empfehlungen  `coding-best-practices.md`
|- Beispiel Spinale Muskelatrophie (SMA)  `sma-example-annotations.md`
|- Beispiel Marfan-Syndrom  `marfan-example-annotations.md`
|- Referenzen  `references.md`
`- Release Notes  `release-notes.md`
```

## 2. Target page measurements

Words = whitespace tokens after removing HTML comments, table separator rows and the markup characters `>`, `|`, `*`, `_`, `` ` ``. Headings, list items, table cells and fenced code all count: the gate measures what the reader has to traverse. Repeated titles are compared case-sensitively; each repeat costs one publisher-appended anchor (`-2`, `-3`, ...). Merged sources are the distinct `<!-- source: X.md -->` section markers the migration itself left behind.

| Page | Words | h2 | h3 | h4 | other h | Repeated titles | Anchor collisions | Merged sources | Size gate |
| --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | --- |
| `ImplementationGuide-mii-ig-seltene-erkrankungen-v2026-de.md` | 286 | 0 | 5 | 0 | 0 | 0 | 0 | 0 | ok |
| `capability-statements.md` | 32 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `changes.md` | 562 | 0 | 1 | 1 | 1 | 0 | 0 | 0 | ok |
| `code-systems.md` | 149 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `downloads.md` | 326 | 0 | 0 | 7 | 0 | 0 | 0 | 0 | ok |
| `examples.md` | 44 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | ok |
| `extensions.md` | 122 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `guidance.md` | 131 | 0 | 2 | 0 | 0 | 0 | 0 | 0 | ok |
| `implementer-guidance.md` | 33 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | ok |
| `index.md` | 478 | 0 | 9 | 0 | 0 | 0 | 0 | 0 | ok |
| `logical-models.md` | 34 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `metadata.md` | 2199 | 0 | 1 | 7 | 1 | 0 | 0 | 0 | ok |
| `operations.md` | 105 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `profiles.md` | 78 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | ok |
| `rendering-artifacts.md` | 3933 | 0 | 8 | 3 | 0 | 0 | 0 | 0 | **TRIPS** - 3933 words > 2500 |
| `researcher-guidance.md` | 112 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `search-parameters.md` | 113 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `security-and-privacy.md` | 444 | 0 | 0 | 3 | 0 | 0 | 0 | 0 | ok |
| `translationinfo.md` | 80 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | ok |
| `uml-diagrams.md` | 43 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | ok |
| `value-sets.md` | 179 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `version-history.md` | 549 | 0 | 0 | 6 | 0 | 0 | 0 | 0 | ok |

### 2.1 Pages that trip the size gate

- **`rendering-artifacts.md`** - 3933 words > 2500.
  - rule 5: re-run routing preferring branches 1 and 2, or split.

## 3. Menu budget

Clickable entries are the menu's real destinations: every `<li><a>` except the dropdown toggles, which only repeat their first child's href.

| Metric | Measured | Contract limit | Headroom |
| --- | ---: | ---: | ---: |
| total clickable entries | 22 | 33 | 11 |
| widest dropdown (Artifacts) | 8 | 10 | 2 |
| top-level entries | 7 | 8 | 1 |
| menu depth used | 2 | 2 | 0 |

| Dropdown | Children | Free (of 10) |
| --- | ---: | ---: |
| Guidance | 4 | 6 |
| Conformance | 5 | 5 |
| Artifacts | 8 | 2 |
| Metadata | 2 | 8 |

After the proposals in section 4: total 10 free, top level 0 free, freest dropdown Metadata (8 free).

## 4. Routing proposal (spec 9d/9e)

One row per source page. The branch number is the spec's; the measurement column is the number that forced it. Branch-4 rows state the presentation (4a) and the visibility (4b), and, where a menu entry fits, the remaining budget after it. `Words` is the source page's own size, counted the same way as the target pages in section 2.

| # | Source page | Lvl | Children | Words | Branch | Proposed destination | Measurement |
| ---: | --- | ---: | ---: | ---: | --- | --- | --- |
| 1 | `index.md` | 1 | 0 | 335 | 3 merge into agreed page | index.md | agreed page named 'index' exists in the target |
| 2 | `module-description.md` | 1 | 0 | 834 | 4 own page | own page (merged page), MENU entry (top level); total 22->23, top level 7->8; remaining after: total 10 free, top level 0 free, freest dropdown Metadata (8 free) | no artefact anchor; no agreed page; 0 child page(s) |
| 3 | `context.md` | 1 | 0 | 740 | 4 own page | own page (merged page), pages:-NESTED under its host (menu budget: top level 8 + 1 > 8) | no artefact anchor; no agreed page; 0 child page(s) |
| 4 | `scenarios.md` | 1 | 0 | 926 | 3 merge into agreed page | guidance.md | semantic match 'szenarien' -> guidance (routing-table) |
| 5 | `datasets.md` | 1 | 0 | 63 | 4 own page | own page (merged page), pages:-NESTED under its host (menu budget: top level 8 + 1 > 8) | no artefact anchor; no agreed page; 0 child page(s) |
| 6 | `information-model.md` | 1 | 0 | 18 | 3 merge into agreed page | logical-models.md | semantic match 'informationsmodell' -> logical-models (routing-table) |
| 7 | `profiles-overview.md` | 1 | 0 | 158 | 4 own page | own page (merged page), pages:-NESTED under its host (menu budget: top level 8 + 1 > 8) | no artefact anchor; no agreed page; 0 child page(s) |
| 8 | `terminology.md` | 1 | 0 | 830 | 3 merge into agreed page | code-systems.md | semantic match 'terminologien' -> code-systems (routing-table) |
| 9 | `capability.md` | 1 | 0 | 206 | 3 merge into agreed page | capability-statements.md | semantic match 'capabilitystatement' -> capability-statements (routing-table) |
| 10 | `clinical-genetic-diagnosis-guide.md` | 1 | 0 | 1044 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-seltene-genetic-diagnosis-intro.md | tokens match on mii-pr-seltene-genetic-diagnosis (3 candidate artefacts) |
| 11 | `coding-best-practices.md` | 1 | 0 | 853 | 4 own page | own page (merged page), pages:-NESTED under its host (menu budget: top level 8 + 1 > 8) | no artefact anchor; no agreed page; 0 child page(s) |
| 12 | `sma-example-annotations.md` | 1 | 0 | 743 | 4 own page | own page (merged page), pages:-NESTED under its host (menu budget: top level 8 + 1 > 8) | no artefact anchor; no agreed page; 0 child page(s) |
| 13 | `marfan-example-annotations.md` | 1 | 0 | 853 | 4 own page | own page (merged page), pages:-NESTED under its host (menu budget: top level 8 + 1 > 8) | no artefact anchor; no agreed page; 0 child page(s) |
| 14 | `references.md` | 1 | 0 | 491 | 3 merge into agreed page | implementer-guidance.md | semantic match 'referenzen' -> implementer-guidance (routing-table) |
| 15 | `release-notes.md` | 1 | 0 | 467 | 3 merge into agreed page | changes.md | semantic match 'releasenotes' -> changes (routing-table) |

Branch totals: 1 intro-note = 1, 3 merge into agreed page = 7, 4 own page = 7.

## 5. Report queue 1 items

The menu budget forced a ToC-nesting where a menu entry was otherwise warranted. Allocation below is first-come-first-served in source document order; the human may spend the budget differently.

- context.md - proposed as its own page but the menu budget is full (top level 8 + 1 > 8); nested in pages:/ToC instead. Remaining capacity is inside a dropdown (Metadata: 8 free) - the human may spend the budget differently.
- datasets.md - proposed as its own page but the menu budget is full (top level 8 + 1 > 8); nested in pages:/ToC instead. Remaining capacity is inside a dropdown (Metadata: 8 free) - the human may spend the budget differently.
- profiles-overview.md - proposed as its own page but the menu budget is full (top level 8 + 1 > 8); nested in pages:/ToC instead. Remaining capacity is inside a dropdown (Metadata: 8 free) - the human may spend the budget differently.
- coding-best-practices.md - proposed as its own page but the menu budget is full (top level 8 + 1 > 8); nested in pages:/ToC instead. Remaining capacity is inside a dropdown (Metadata: 8 free) - the human may spend the budget differently.
- sma-example-annotations.md - proposed as its own page but the menu budget is full (top level 8 + 1 > 8); nested in pages:/ToC instead. Remaining capacity is inside a dropdown (Metadata: 8 free) - the human may spend the budget differently.
- marfan-example-annotations.md - proposed as its own page but the menu budget is full (top level 8 + 1 > 8); nested in pages:/ToC instead. Remaining capacity is inside a dropdown (Metadata: 8 free) - the human may spend the budget differently.
- MIIIGModulSeltene/Anwendungsfaelle-Informationsmodell/Index.page.md - nested under MIIIGModulSeltene/Index.page.md because that host got no menu entry of its own; giving this page one directly would put it at menu depth 3 > 2, so it only becomes visible if the human buys the host a top-level entry first.
- MIIIGModulSeltene/Technische-Implementierung/Index.page.md - nested under MIIIGModulSeltene/Index.page.md because that host got no menu entry of its own; giving this page one directly would put it at menu depth 3 > 2, so it only becomes visible if the human buys the host a top-level entry first.
- MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/Index.page.md - nested under MIIIGModulSeltene/Technische-Implementierung/Index.page.md because that host got no menu entry of its own; giving this page one directly would put it at menu depth 3 > 2, so it only becomes visible if the human buys the host a top-level entry first.
- MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/Familienanamnese/Index.page.md - nested under MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/Index.page.md because that host got no menu entry of its own; giving this page one directly would put it at menu depth 3 > 2, so it only becomes visible if the human buys the host a top-level entry first.
- MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/TherapieUndForschung/Index.page.md - nested under MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/Index.page.md because that host got no menu entry of its own; giving this page one directly would put it at menu depth 3 > 2, so it only becomes visible if the human buys the host a top-level entry first.
- MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/TherapieUndForschung/Studie/Index.page.md - nested under MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/TherapieUndForschung/Index.page.md because that host got no menu entry of its own; giving this page one directly would put it at menu depth 3 > 2, so it only becomes visible if the human buys the host a top-level entry first.
- MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/Beispiele-fuer-Seltene-Erkrankungen/Index.page.md - nested under MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/Index.page.md because that host got no menu entry of its own; giving this page one directly would put it at menu depth 3 > 2, so it only becomes visible if the human buys the host a top-level entry first.
- MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/Beispiele-fuer-Seltene-Erkrankungen/Spinale-Muskelatrophie-SMA.page.md - nested under MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/Beispiele-fuer-Seltene-Erkrankungen/Index.page.md because that host got no menu entry of its own; giving this page one directly would put it at menu depth 3 > 2, so it only becomes visible if the human buys the host a top-level entry first.
- MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/Beispiele-fuer-Seltene-Erkrankungen/Marfan-Syndrom.page.md - nested under MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/Beispiele-fuer-Seltene-Erkrankungen/Index.page.md because that host got no menu entry of its own; giving this page one directly would put it at menu depth 3 > 2, so it only becomes visible if the human buys the host a top-level entry first.

Size-gate trips (rule 5) needing a routing re-run or a split:

- `rendering-artifacts.md` - 3933 words > 2500.

## 6. Suggested `5.4c page-routing` run-log lines

One per source page (union pages included), ready for the migration run log. The `5.4c page-routing` step IS the advice run that GENERATES the page map (`--map`) - the map is machine-written, never hand-written; these lines are only its run-log form.

```
5.4c page-routing	index.md	branch=3	index.md	agreed page named 'index' exists in the target
5.4c page-routing	module-description.md	branch=4	own page (merged page), MENU entry (top level); total 22->23, top level 7->8; remaining after: total 10 free, top level 0 free, freest dropdown Metadata (8 free)	no artefact anchor; no agreed page; 0 child page(s)
5.4c page-routing	context.md	branch=4	own page (merged page), pages:-NESTED under its host (menu budget: top level 8 + 1 > 8)	no artefact anchor; no agreed page; 0 child page(s)
5.4c page-routing	scenarios.md	branch=3	guidance.md	semantic match 'szenarien' -> guidance (routing-table)
5.4c page-routing	datasets.md	branch=4	own page (merged page), pages:-NESTED under its host (menu budget: top level 8 + 1 > 8)	no artefact anchor; no agreed page; 0 child page(s)
5.4c page-routing	information-model.md	branch=3	logical-models.md	semantic match 'informationsmodell' -> logical-models (routing-table)
5.4c page-routing	profiles-overview.md	branch=4	own page (merged page), pages:-NESTED under its host (menu budget: top level 8 + 1 > 8)	no artefact anchor; no agreed page; 0 child page(s)
5.4c page-routing	terminology.md	branch=3	code-systems.md	semantic match 'terminologien' -> code-systems (routing-table)
5.4c page-routing	capability.md	branch=3	capability-statements.md	semantic match 'capabilitystatement' -> capability-statements (routing-table)
5.4c page-routing	clinical-genetic-diagnosis-guide.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-seltene-genetic-diagnosis-intro.md	tokens match on mii-pr-seltene-genetic-diagnosis (3 candidate artefacts)
5.4c page-routing	coding-best-practices.md	branch=4	own page (merged page), pages:-NESTED under its host (menu budget: top level 8 + 1 > 8)	no artefact anchor; no agreed page; 0 child page(s)
5.4c page-routing	sma-example-annotations.md	branch=4	own page (merged page), pages:-NESTED under its host (menu budget: top level 8 + 1 > 8)	no artefact anchor; no agreed page; 0 child page(s)
5.4c page-routing	marfan-example-annotations.md	branch=4	own page (merged page), pages:-NESTED under its host (menu budget: top level 8 + 1 > 8)	no artefact anchor; no agreed page; 0 child page(s)
5.4c page-routing	references.md	branch=3	implementer-guidance.md	semantic match 'referenzen' -> implementer-guidance (routing-table)
5.4c page-routing	release-notes.md	branch=3	changes.md	semantic match 'releasenotes' -> changes (routing-table)
5.4c page-routing	MIIIGModulSeltene/Index.page.md	branch=3	index.md	agreed page named 'index' exists in the target
5.4c page-routing	MIIIGModulSeltene/Release-Notes.page.md	branch=3	changes.md	semantic match 'releasenotes' -> changes (routing-table)
5.4c page-routing	MIIIGModulSeltene/Beschreibung-Modul.page.md	branch=3	index.md	semantic match 'beschreibungmodul' -> index (routing-table)
5.4c page-routing	MIIIGModulSeltene/Kontext-im-Gesamtprojekt-Bezuege-zu-anderen-Modulen.page.md	branch=3	implementer-guidance.md	semantic match 'kontextimgesamtprojekt' -> implementer-guidance (routing-table)
5.4c page-routing	MIIIGModulSeltene/Referenzen.page.md	branch=3	implementer-guidance.md	semantic match 'referenzen' -> implementer-guidance (routing-table)
5.4c page-routing	MIIIGModulSeltene/Anwendungsfaelle-Informationsmodell/Index.page.md	branch=4	own page (HUB), pages:-NESTED under MIIIGModulSeltene/Index.page.md (its host has no menu entry)	no artefact anchor; no agreed page; 3 child page(s)
5.4c page-routing	MIIIGModulSeltene/Anwendungsfaelle-Informationsmodell/Beschreibung-von-Szenarien-fuer-die-Anwendung-des-Moduls-SE.page.md	branch=3	guidance.md	semantic match 'szenarien' -> guidance (routing-table)
5.4c page-routing	MIIIGModulSeltene/Anwendungsfaelle-Informationsmodell/Datensaetze-inkl.-Beschreibungen.page.md	branch=3	logical-models.md	semantic match 'datensaetze' -> logical-models (routing-table)
5.4c page-routing	MIIIGModulSeltene/Anwendungsfaelle-Informationsmodell/UML.page.md	branch=3	uml-diagrams.md	semantic match 'uml' -> uml-diagrams (routing-table)
5.4c page-routing	MIIIGModulSeltene/Technische-Implementierung/Index.page.md	branch=4	own page (HUB), pages:-NESTED under MIIIGModulSeltene/Index.page.md (its host has no menu entry)	no artefact anchor; no agreed page; 3 child page(s)
5.4c page-routing	MIIIGModulSeltene/Technische-Implementierung/Terminologien.page.md	branch=3	code-systems.md	semantic match 'terminologien' -> code-systems (routing-table)
5.4c page-routing	MIIIGModulSeltene/Technische-Implementierung/CapabilityStatement.page.md	branch=3	capability-statements.md	semantic match 'capabilitystatement' -> capability-statements (routing-table)
5.4c page-routing	MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/Index.page.md	branch=4	own page (HUB), pages:-NESTED under MIIIGModulSeltene/Technische-Implementierung/Index.page.md (its host has no menu entry)	no artefact anchor; no agreed page; 5 child page(s)
5.4c page-routing	MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/AnamneseUndDiagnostik/Index.page.md	branch=2	h3/h4 section on profiles.md	4 children, 2 anchoring distinct artefacts (StructureDefinition)
5.4c page-routing	MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/AnamneseUndDiagnostik/Symptom-Condition.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-seltene-symptom-condition-intro.md	compact match on mii-pr-seltene-symptom-condition (2 candidate artefacts)
5.4c page-routing	MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/AnamneseUndDiagnostik/HPO-Phaenotypisierung-Observation.page.md	branch=1	input/intro-notes/ValueSet-mii-vs-seltene-hpo-phenotypic-observation-codes-intro.md	tokens match on mii-vs-seltene-hpo-phenotypic-observation-codes (1 candidate artefact)
5.4c page-routing	MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/AnamneseUndDiagnostik/Untersuchung-ClinicalImpression.page.md	branch=2	h3/h4 section on profiles.md	child of family overview MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/AnamneseUndDiagnostik/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/AnamneseUndDiagnostik/Diagnose/Index.page.md	branch=2	h3/h4 section on profiles.md	child of family overview MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/AnamneseUndDiagnostik/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/AnamneseUndDiagnostik/Diagnose/SE-Diagnose-genetisch-Condition.page.md	branch=2	h3/h4 section on profiles.md	child of family overview MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/AnamneseUndDiagnostik/Diagnose/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/AnamneseUndDiagnostik/Diagnose/SE-Diagnose-klinisch-Condition.page.md	branch=2	h3/h4 section on profiles.md	child of family overview MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/AnamneseUndDiagnostik/Diagnose/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/Messbefunde/Index.page.md	branch=2	h3/h4 section on profiles.md	6 children, 4 anchoring distinct artefacts (StructureDefinition)
5.4c page-routing	MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/Messbefunde/Body-Mass-Index-Observation.page.md	branch=2	h3/h4 section on profiles.md	child of family overview MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/Messbefunde/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/Messbefunde/Blutgruppe-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-seltene-blutgruppe-intro.md	tokens match on mii-pr-seltene-blutgruppe (3 candidate artefacts)
5.4c page-routing	MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/Messbefunde/Kopfumfang-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-seltene-kopfumfang-intro.md	tokens match on mii-pr-seltene-kopfumfang (2 candidate artefacts)
5.4c page-routing	MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/Messbefunde/Taillenumfang-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-seltene-taillenumfang-intro.md	tokens match on mii-pr-seltene-taillenumfang (2 candidate artefacts)
5.4c page-routing	MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/Messbefunde/Hueftumfang-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-seltene-hueftumfang-intro.md	tokens match on mii-pr-seltene-hueftumfang (2 candidate artefacts)
5.4c page-routing	MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/Messbefunde/Waist-to-Hip-Ratio.page.md	branch=2	h3/h4 section on profiles.md	child of family overview MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/Messbefunde/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/Familienanamnese/Index.page.md	branch=4	own page (merged page), pages:-NESTED under MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/Index.page.md (its host has no menu entry)	no artefact anchor; no agreed page; 1 child page(s)
5.4c page-routing	MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/Familienanamnese/Familienanamnese-FamilyMemberHistory.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-seltene-familienanamnese-intro.md	tokens match on mii-pr-seltene-familienanamnese (1 candidate artefact)
5.4c page-routing	MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/TherapieUndForschung/Index.page.md	branch=4	own page (merged page), pages:-NESTED under MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/Index.page.md (its host has no menu entry)	no artefact anchor; no agreed page; 2 child page(s)
5.4c page-routing	MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/TherapieUndForschung/Therapie/Index.page.md	branch=2	h3/h4 section on profiles.md	5 children, 4 anchoring distinct artefacts (StructureDefinition)
5.4c page-routing	MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/TherapieUndForschung/Therapie/Therapieplan.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-seltene-therapieplan-intro.md	compact match on mii-pr-seltene-therapieplan (1 candidate artefact)
5.4c page-routing	MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/TherapieUndForschung/Therapie/Therapieempfehlung-Medikamentoes.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-seltene-therapieempfehlung-nicht-medikamentoes-intro.md	tokens match on mii-pr-seltene-therapieempfehlung-nicht-medikamentoes (9 candidate artefacts)
5.4c page-routing	MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/TherapieUndForschung/Therapie/Therapieempfehlung-Nicht-Medikamentoes.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-seltene-therapieempfehlung-nicht-medikamentoes-intro.md	compact match on mii-pr-seltene-therapieempfehlung-nicht-medikamentoes (3 candidate artefacts)
5.4c page-routing	MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/TherapieUndForschung/Therapie/Therapieempfehlung-Kombination.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-seltene-therapieempfehlung-kombination-intro.md	compact match on mii-pr-seltene-therapieempfehlung-kombination (9 candidate artefacts)
5.4c page-routing	MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/TherapieUndForschung/Therapie/Therapie-Durchgefuehrt-NARSE.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-seltene-therapie-durchgefuehrt-intro.md	tokens match on mii-pr-seltene-therapie-durchgefuehrt (1 candidate artefact)
5.4c page-routing	MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/TherapieUndForschung/Studie/Index.page.md	branch=4	own page (merged page), pages:-NESTED under MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/TherapieUndForschung/Index.page.md (its host has no menu entry)	no artefact anchor; no agreed page; 1 child page(s)
5.4c page-routing	MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/TherapieUndForschung/Studie/Studieneinschluss-Anfrage.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-seltene-studieneinschluss-anfrage-intro.md	compact match on mii-pr-seltene-studieneinschluss-anfrage (1 candidate artefact)
5.4c page-routing	MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/Beispiele-fuer-Seltene-Erkrankungen/Index.page.md	branch=4	own page (merged page), pages:-NESTED under MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/Index.page.md (its host has no menu entry)	no artefact anchor; no agreed page; 2 child page(s)
5.4c page-routing	MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/Beispiele-fuer-Seltene-Erkrankungen/Spinale-Muskelatrophie-SMA.page.md	branch=4	own page (merged page), pages:-NESTED under MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/Beispiele-fuer-Seltene-Erkrankungen/Index.page.md (its host has no menu entry)	no artefact anchor; no agreed page; 0 child page(s)
5.4c page-routing	MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/Beispiele-fuer-Seltene-Erkrankungen/Marfan-Syndrom.page.md	branch=4	own page (merged page), pages:-NESTED under MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/Beispiele-fuer-Seltene-Erkrankungen/Index.page.md (its host has no menu entry)	no artefact anchor; no agreed page; 0 child page(s)
5.4c page-routing	map rows=56 retired=0 coverage=ok	map=migration-log/page-map.tsv
```

## 7. Page map (v2) and coverage

The page map is the CONTRACT of the narrative migration: this run generates and validates it, step 5 consumes ONLY it, step 8 checks against it. Columns: `source_page`, `target` (repo-relative path or `RETIRED`), `reason`, `branch` (spec 9e 1-4; 5 = RETIRED), `measure`. One row per page of the source page universe - the authoritative guide tree UNION `input/pagecontent` UNION on-disk pages no toc lists.

Rows: **56** total - 56 routed source pages (15 from the primary tree, 41 union pages outside it) and 0 RETIRED guide-tree summary row(s).

### 7.1 Union pages outside the primary tree

Pages of the universe the primary page tree does not list - routed by the same passes, after it (menu budget included).

| Source page | Branch | Target | Measurement |
| --- | --- | --- | --- |
| `MIIIGModulSeltene/Index.page.md` | 3 | `input/pagecontent/index.md` | agreed page named 'index' exists in the target <br>_(union page: the authoritative guide tree `ImplementationGuide-2026.x-DE` was not the primary input)_ |
| `MIIIGModulSeltene/Release-Notes.page.md` | 3 | `input/pagecontent/changes.md` | semantic match 'releasenotes' -> changes (routing-table) <br>_(union page: the authoritative guide tree `ImplementationGuide-2026.x-DE` was not the primary input)_ |
| `MIIIGModulSeltene/Beschreibung-Modul.page.md` | 3 | `input/pagecontent/index.md` | semantic match 'beschreibungmodul' -> index (routing-table) <br>_(union page: the authoritative guide tree `ImplementationGuide-2026.x-DE` was not the primary input)_ |
| `MIIIGModulSeltene/Kontext-im-Gesamtprojekt-Bezuege-zu-anderen-Modulen.page.md` | 3 | `input/pagecontent/implementer-guidance.md` | semantic match 'kontextimgesamtprojekt' -> implementer-guidance (routing-table) <br>_(union page: the authoritative guide tree `ImplementationGuide-2026.x-DE` was not the primary input)_ |
| `MIIIGModulSeltene/Referenzen.page.md` | 3 | `input/pagecontent/implementer-guidance.md` | semantic match 'referenzen' -> implementer-guidance (routing-table) <br>_(union page: the authoritative guide tree `ImplementationGuide-2026.x-DE` was not the primary input)_ |
| `MIIIGModulSeltene/Anwendungsfaelle-Informationsmodell/Index.page.md` | 4 | `input/pagecontent/anwendungsfaelle-informationsmodell.md` | no artefact anchor; no agreed page; 3 child page(s) <br>_(union page: the authoritative guide tree `ImplementationGuide-2026.x-DE` was not the primary input; folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ |
| `MIIIGModulSeltene/Anwendungsfaelle-Informationsmodell/Beschreibung-von-Szenarien-fuer-die-Anwendung-des-Moduls-SE.page.md` | 3 | `input/pagecontent/guidance.md` | semantic match 'szenarien' -> guidance (routing-table) <br>_(union page: the authoritative guide tree `ImplementationGuide-2026.x-DE` was not the primary input)_ |
| `MIIIGModulSeltene/Anwendungsfaelle-Informationsmodell/Datensaetze-inkl.-Beschreibungen.page.md` | 3 | `input/pagecontent/logical-models.md` | semantic match 'datensaetze' -> logical-models (routing-table) <br>_(union page: the authoritative guide tree `ImplementationGuide-2026.x-DE` was not the primary input)_ |
| `MIIIGModulSeltene/Anwendungsfaelle-Informationsmodell/UML.page.md` | 3 | `input/pagecontent/uml-diagrams.md` | semantic match 'uml' -> uml-diagrams (routing-table) <br>_(union page: the authoritative guide tree `ImplementationGuide-2026.x-DE` was not the primary input)_ |
| `MIIIGModulSeltene/Technische-Implementierung/Index.page.md` | 4 | `input/pagecontent/technische-implementierung.md` | no artefact anchor; no agreed page; 3 child page(s) <br>_(union page: the authoritative guide tree `ImplementationGuide-2026.x-DE` was not the primary input; folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ |
| `MIIIGModulSeltene/Technische-Implementierung/Terminologien.page.md` | 3 | `input/pagecontent/code-systems.md` | semantic match 'terminologien' -> code-systems (routing-table) <br>_(union page: the authoritative guide tree `ImplementationGuide-2026.x-DE` was not the primary input)_ |
| `MIIIGModulSeltene/Technische-Implementierung/CapabilityStatement.page.md` | 3 | `input/pagecontent/capability-statements.md` | semantic match 'capabilitystatement' -> capability-statements (routing-table) <br>_(union page: the authoritative guide tree `ImplementationGuide-2026.x-DE` was not the primary input)_ |
| `MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/Index.page.md` | 4 | `input/pagecontent/fhir-profile.md` | no artefact anchor; no agreed page; 5 child page(s) <br>_(union page: the authoritative guide tree `ImplementationGuide-2026.x-DE` was not the primary input; folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ |
| `MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/AnamneseUndDiagnostik/Index.page.md` | 2 | `input/pagecontent/profiles.md` | 4 children, 2 anchoring distinct artefacts (StructureDefinition) <br>_(union page: the authoritative guide tree `ImplementationGuide-2026.x-DE` was not the primary input; folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ |
| `MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/AnamneseUndDiagnostik/Symptom-Condition.page.md` | 1 | `input/intro-notes/StructureDefinition-mii-pr-seltene-symptom-condition-intro.md` | compact match on mii-pr-seltene-symptom-condition (2 candidate artefacts) <br>_(union page: the authoritative guide tree `ImplementationGuide-2026.x-DE` was not the primary input)_ |
| `MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/AnamneseUndDiagnostik/HPO-Phaenotypisierung-Observation.page.md` | 1 | `input/intro-notes/ValueSet-mii-vs-seltene-hpo-phenotypic-observation-codes-intro.md` | tokens match on mii-vs-seltene-hpo-phenotypic-observation-codes (1 candidate artefact) <br>_(union page: the authoritative guide tree `ImplementationGuide-2026.x-DE` was not the primary input)_ |
| `MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/AnamneseUndDiagnostik/Untersuchung-ClinicalImpression.page.md` | 2 | `input/pagecontent/profiles.md` | child of family overview MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/AnamneseUndDiagnostik/Index.page.md (no anchor of its own) <br>_(union page: the authoritative guide tree `ImplementationGuide-2026.x-DE` was not the primary input)_ |
| `MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/AnamneseUndDiagnostik/Diagnose/Index.page.md` | 2 | `input/pagecontent/profiles.md` | child of family overview MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/AnamneseUndDiagnostik/Index.page.md (no anchor of its own) <br>_(union page: the authoritative guide tree `ImplementationGuide-2026.x-DE` was not the primary input; folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ |
| `MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/AnamneseUndDiagnostik/Diagnose/SE-Diagnose-genetisch-Condition.page.md` | 2 | `input/pagecontent/profiles.md` | child of family overview MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/AnamneseUndDiagnostik/Diagnose/Index.page.md (no anchor of its own) <br>_(union page: the authoritative guide tree `ImplementationGuide-2026.x-DE` was not the primary input)_ |
| `MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/AnamneseUndDiagnostik/Diagnose/SE-Diagnose-klinisch-Condition.page.md` | 2 | `input/pagecontent/profiles.md` | child of family overview MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/AnamneseUndDiagnostik/Diagnose/Index.page.md (no anchor of its own) <br>_(union page: the authoritative guide tree `ImplementationGuide-2026.x-DE` was not the primary input)_ |
| `MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/Messbefunde/Index.page.md` | 2 | `input/pagecontent/profiles.md` | 6 children, 4 anchoring distinct artefacts (StructureDefinition) <br>_(union page: the authoritative guide tree `ImplementationGuide-2026.x-DE` was not the primary input; folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ |
| `MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/Messbefunde/Body-Mass-Index-Observation.page.md` | 2 | `input/pagecontent/profiles.md` | child of family overview MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/Messbefunde/Index.page.md (no anchor of its own) <br>_(union page: the authoritative guide tree `ImplementationGuide-2026.x-DE` was not the primary input)_ |
| `MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/Messbefunde/Blutgruppe-Observation.page.md` | 1 | `input/intro-notes/StructureDefinition-mii-pr-seltene-blutgruppe-intro.md` | tokens match on mii-pr-seltene-blutgruppe (3 candidate artefacts) <br>_(union page: the authoritative guide tree `ImplementationGuide-2026.x-DE` was not the primary input)_ |
| `MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/Messbefunde/Kopfumfang-Observation.page.md` | 1 | `input/intro-notes/StructureDefinition-mii-pr-seltene-kopfumfang-intro.md` | tokens match on mii-pr-seltene-kopfumfang (2 candidate artefacts) <br>_(union page: the authoritative guide tree `ImplementationGuide-2026.x-DE` was not the primary input)_ |
| `MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/Messbefunde/Taillenumfang-Observation.page.md` | 1 | `input/intro-notes/StructureDefinition-mii-pr-seltene-taillenumfang-intro.md` | tokens match on mii-pr-seltene-taillenumfang (2 candidate artefacts) <br>_(union page: the authoritative guide tree `ImplementationGuide-2026.x-DE` was not the primary input)_ |
| `MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/Messbefunde/Hueftumfang-Observation.page.md` | 1 | `input/intro-notes/StructureDefinition-mii-pr-seltene-hueftumfang-intro.md` | tokens match on mii-pr-seltene-hueftumfang (2 candidate artefacts) <br>_(union page: the authoritative guide tree `ImplementationGuide-2026.x-DE` was not the primary input)_ |
| `MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/Messbefunde/Waist-to-Hip-Ratio.page.md` | 2 | `input/pagecontent/profiles.md` | child of family overview MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/Messbefunde/Index.page.md (no anchor of its own) <br>_(union page: the authoritative guide tree `ImplementationGuide-2026.x-DE` was not the primary input)_ |
| `MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/Familienanamnese/Index.page.md` | 4 | `input/pagecontent/familienanamnese.md` | no artefact anchor; no agreed page; 1 child page(s) <br>_(union page: the authoritative guide tree `ImplementationGuide-2026.x-DE` was not the primary input; folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ |
| `MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/Familienanamnese/Familienanamnese-FamilyMemberHistory.page.md` | 1 | `input/intro-notes/StructureDefinition-mii-pr-seltene-familienanamnese-intro.md` | tokens match on mii-pr-seltene-familienanamnese (1 candidate artefact) <br>_(union page: the authoritative guide tree `ImplementationGuide-2026.x-DE` was not the primary input)_ |
| `MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/TherapieUndForschung/Index.page.md` | 4 | `input/pagecontent/therapieundforschung.md` | no artefact anchor; no agreed page; 2 child page(s) <br>_(union page: the authoritative guide tree `ImplementationGuide-2026.x-DE` was not the primary input; folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ |
| `MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/TherapieUndForschung/Therapie/Index.page.md` | 2 | `input/pagecontent/profiles.md` | 5 children, 4 anchoring distinct artefacts (StructureDefinition) <br>_(union page: the authoritative guide tree `ImplementationGuide-2026.x-DE` was not the primary input; folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ |
| `MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/TherapieUndForschung/Therapie/Therapieplan.page.md` | 1 | `input/intro-notes/StructureDefinition-mii-pr-seltene-therapieplan-intro.md` | compact match on mii-pr-seltene-therapieplan (1 candidate artefact) <br>_(union page: the authoritative guide tree `ImplementationGuide-2026.x-DE` was not the primary input)_ |
| `MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/TherapieUndForschung/Therapie/Therapieempfehlung-Medikamentoes.page.md` | 1 | `input/intro-notes/StructureDefinition-mii-pr-seltene-therapieempfehlung-nicht-medikamentoes-intro.md` | tokens match on mii-pr-seltene-therapieempfehlung-nicht-medikamentoes (9 candidate artefacts) <br>_(union page: the authoritative guide tree `ImplementationGuide-2026.x-DE` was not the primary input)_ |
| `MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/TherapieUndForschung/Therapie/Therapieempfehlung-Nicht-Medikamentoes.page.md` | 1 | `input/intro-notes/StructureDefinition-mii-pr-seltene-therapieempfehlung-nicht-medikamentoes-intro.md` | compact match on mii-pr-seltene-therapieempfehlung-nicht-medikamentoes (3 candidate artefacts) <br>_(union page: the authoritative guide tree `ImplementationGuide-2026.x-DE` was not the primary input)_ |
| `MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/TherapieUndForschung/Therapie/Therapieempfehlung-Kombination.page.md` | 1 | `input/intro-notes/StructureDefinition-mii-pr-seltene-therapieempfehlung-kombination-intro.md` | compact match on mii-pr-seltene-therapieempfehlung-kombination (9 candidate artefacts) <br>_(union page: the authoritative guide tree `ImplementationGuide-2026.x-DE` was not the primary input)_ |
| `MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/TherapieUndForschung/Therapie/Therapie-Durchgefuehrt-NARSE.page.md` | 1 | `input/intro-notes/StructureDefinition-mii-pr-seltene-therapie-durchgefuehrt-intro.md` | tokens match on mii-pr-seltene-therapie-durchgefuehrt (1 candidate artefact) <br>_(union page: the authoritative guide tree `ImplementationGuide-2026.x-DE` was not the primary input)_ |
| `MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/TherapieUndForschung/Studie/Index.page.md` | 4 | `input/pagecontent/studie.md` | no artefact anchor; no agreed page; 1 child page(s) <br>_(union page: the authoritative guide tree `ImplementationGuide-2026.x-DE` was not the primary input; folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ |
| `MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/TherapieUndForschung/Studie/Studieneinschluss-Anfrage.page.md` | 1 | `input/intro-notes/StructureDefinition-mii-pr-seltene-studieneinschluss-anfrage-intro.md` | compact match on mii-pr-seltene-studieneinschluss-anfrage (1 candidate artefact) <br>_(union page: the authoritative guide tree `ImplementationGuide-2026.x-DE` was not the primary input)_ |
| `MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/Beispiele-fuer-Seltene-Erkrankungen/Index.page.md` | 4 | `input/pagecontent/beispiele-fuer-seltene-erkrankungen.md` | no artefact anchor; no agreed page; 2 child page(s) <br>_(union page: the authoritative guide tree `ImplementationGuide-2026.x-DE` was not the primary input; folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ |
| `MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/Beispiele-fuer-Seltene-Erkrankungen/Spinale-Muskelatrophie-SMA.page.md` | 4 | `input/pagecontent/spinale-muskelatrophie-sma.md` | no artefact anchor; no agreed page; 0 child page(s) <br>_(union page: the authoritative guide tree `ImplementationGuide-2026.x-DE` was not the primary input)_ |
| `MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/Beispiele-fuer-Seltene-Erkrankungen/Marfan-Syndrom.page.md` | 4 | `input/pagecontent/marfan-syndrom.md` | no artefact anchor; no agreed page; 0 child page(s) <br>_(union page: the authoritative guide tree `ImplementationGuide-2026.x-DE` was not the primary input)_ |

### 7.3 Coverage validation

Universe re-derived from disk: **56** page(s). Every one needs a row with a non-empty target; every RETIRED row needs a reason. The exit code reports the result (0 covered, 1 not).

**Covered.** All 56 universe pages have a target row; every RETIRED row carries a reason.

## 8. M9 optional-page / other-bucket proposal (Gate 0 census)

Counts: generated_crosscheck.counts (fsh-generated/resources). Rule (spec 9a): count 0 -> REMOVE the optional page, count > 0 -> KEEP and fill it; artefacts are never deleted to force a removal. Each proposal is a `5.4a` run-log line and a HUMAN decision - this table only measures.

| Optional page | Census key | Count | Proposal |
| --- | --- | ---: | --- |
| `extensions.md` | `extensions` | 11 | **KEEP** (fill it, delete the banner + OPTIONAL-PAGE marker in both languages) |
| `search-parameters.md` | `searchparameters` | 0 | **REMOVE** per the template's docs/optional-pages.md procedure |
| `operations.md` | `operations` | 0 | **REMOVE** per the template's docs/optional-pages.md procedure |
| `value-sets.md` | `valuesets` | 20 | **KEEP** (fill it, delete the banner + OPTIONAL-PAGE marker in both languages) |
| `code-systems.md` | `codesystems` | 5 | **KEEP** (fill it, delete the banner + OPTIONAL-PAGE marker in both languages) |
| `researcher-guidance.md` | - | - | no artefact count decides it - source narrative does (human decision) |
| `metadata.md` | - | - | no artefact count decides it - source narrative does (human decision) |

_The census reports no `other`-bucket artefact types._

Declared-vs-generated mismatches Gate 0 reports (2) - the GENERATED counts above are the authoritative ones: `examples` 107->106, `profiles` 19->18.

