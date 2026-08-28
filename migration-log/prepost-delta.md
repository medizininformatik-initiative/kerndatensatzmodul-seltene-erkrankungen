# Pre/post delta — the two ig-stats measurements compared

| Side | Measurement |
|---|---|
| pre | preflight-analysis.json (mii-ig-seltene-erkrankungen-v2026-de, 64c3cfd, 2026-08-28T13:04:25Z) |
| post | postflight-analysis.json (mii-ig-seltene-erkrankungen-v2026-de, e1b4a1c, 2026-08-28T13:24:08Z) |

Verdicts: **unchanged** 27 · **improved** 1 · **expected-change** 4 · **REGRESSION** 1 · **not-measurable** 0.

## ⛔ Regressions — properties that got WORSE

Each one blocks the migration until it is fixed or explained; an explanation belongs in the migration report, not in a merge commit.

- **`identity.version`**: `2026.0.1` → `2027.0.0-ballot` — machine-identity field changed -- the migrated package is no longer the same package

## Identity

| Property | Pre | Post | Verdict | Why |
|---|---|---|---|---|
| `identity.id` | mii-ig-seltene-erkrankungen-v2026-de | mii-ig-seltene-erkrankungen-v2026-de | unchanged |  |
| `identity.canonical` | https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene | https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene | unchanged |  |
| `identity.packageId` | de.medizininformatikinitiative.kerndatensatz.seltene | de.medizininformatikinitiative.kerndatensatz.seltene | unchanged |  |
| `identity.name` | MIIIGModulSelteneErkrankungen | MIIIGModulSelteneErkrankungen | unchanged |  |
| `identity.version` | 2026.0.1 | 2027.0.0-ballot | **REGRESSION** | machine-identity field changed -- the migrated package is no longer the same package |
| `identity.fhirVersion` | 4.0.1 | 4.0.1 | unchanged |  |
| `identity.calver` | true | true | unchanged |  |
| `identity.publisher` | Medizininformatik Initiative | Medizininformatik Initiative | unchanged |  |
| `identity.status` | active | active | unchanged |  |
| `identity.title` | MII IG Kerndatensatz-Modul Seltene Erkrankungen | MII IG Kerndatensatz-Modul Seltene Erkrankungen | unchanged |  |

## Preflight flags

| Property | Pre | Post | Verdict | Why |
|---|---|---|---|---|
| `licence.contradictory` | false | false | unchanged |  |
| `dependency_health.injection_risk` | true | false | improved | the dependency-injection risk the source carried is cleared |
| `narrative_sources.dual_source` | true | true | unchanged |  |

## Artefact counts

| Property | Pre | Post | Verdict | Why |
|---|---|---|---|---|
| `mode` | static | static | unchanged |  |
| `artifacts.profiles` | 19 | 19 | unchanged |  |
| `artifacts.extensions` | 11 | 11 | unchanged |  |
| `artifacts.valuesets` | 20 | 20 | unchanged |  |
| `artifacts.codesystems` | 5 | 5 | unchanged |  |
| `artifacts.logicals` | 0 | 0 | unchanged |  |
| `artifacts.capabilitystatements` | 1 | 1 | unchanged |  |
| `artifacts.questionnaires` | 0 | 0 | unchanged |  |
| `artifacts.searchparameters` | 0 | 0 | unchanged |  |
| `artifacts.operations` | 0 | 0 | unchanged |  |
| `artifacts.examples` | 107 | 107 | unchanged |  |
| `artifacts.rulesets` | 16 | 47 | expected-change | the count rose by 31 -- artefacts added by the migration; the report names what and why |
| `artifacts.invariants` | 1 | 1 | unchanged |  |
| `artifacts.mappings` | 12 | 12 | unchanged |  |
| `artifacts.other_total` | 0 | 0 | unchanged |  |
| `artifacts.total` | 163 | 163 | unchanged |  |

## Narrative pages

| Property | Pre | Post | Verdict | Why |
|---|---|---|---|---|
| `narrative.pages` | 54 | 62 | expected-change | narrative routing (spec 9d/9e) moves pages between pagecontent, intro-notes and translations -- conservation of the CONTENT is checked by the verifier against page-map.tsv |
| `narrative.intro_note_pages` | 0 | 17 | expected-change | narrative routing (spec 9d/9e) moves pages between pagecontent, intro-notes and translations -- conservation of the CONTENT is checked by the verifier against page-map.tsv |
| `narrative.translation_pages` | 0 | 22 | expected-change | narrative routing (spec 9d/9e) moves pages between pagecontent, intro-notes and translations -- conservation of the CONTENT is checked by the verifier against page-map.tsv |

## Directives

| Property | Pre | Post | Verdict | Why |
|---|---|---|---|---|
| `directives.total` | 467 | 467 | unchanged |  |

