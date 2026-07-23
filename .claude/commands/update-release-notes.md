# Update Release Notes

Update the release notes with changes since a reference commit or tag.

## Instructions

1. **Find the reference point**: Look for the ballot tag or reference commit
   ```bash
   git tag --list --sort=-creatordate | head -10
   ```

2. **List commits since reference**: Get all non-generated commit messages
   ```bash
   git log --format="%s" <reference>..HEAD | grep -v "^\[GEN\]" | grep -v "^auto-generated" | grep -v "^Merge"
   ```

3. **Read current release notes**:
   - Location: `implementation-guides/ImplementationGuide-2026.x-DE/MIIIGModulSelteneErkrankungen/ReleaseNotes.page.md`

4. **Categorize commits**: Group changes into these categories based on commit prefixes:
   - **Breaking Changes** (`BREAKING`): Changes requiring implementation updates
   - **Neue Profile und Funktionalität** (`feat`): New profiles, features
   - **Refaktorierungen** (`refactor`): Code restructuring
   - **Validierung und Qualitätsverbesserungen** (`fix` for validation): Validation fixes
   - **Display-Namen und Terminologie-Korrekturen** (`fix` for display/terminology): Display name corrections
   - **Beispieldaten-Korrekturen** (`fix` for examples): Example file corrections
   - **Technische Verbesserungen** (`chore`): Build, CI, dependencies
   - **Dokumentation** (`docs`): Documentation updates
   - **Weitere Verbesserungen** (`improve`): Other improvements

5. **Format entries**: Use this format:
   - `<type>` Description with context. [[HDB-XXX](https://hl7germany.atlassian.net/browse/HDB-XXX), [#YYY](https://github.com/medizininformatik-initiative/kerndatensatzmodul-seltene-erkrankungen/issues/YYY)]

6. **Add missing entries**: Compare commit list with existing release notes and add any missing items

## Release Notes Format

```markdown
## Änderungen finale Version v2026.0.0 (noch nicht veröffentlicht)

### Breaking Changes
- **`BREAKING`** Description...

### Neue Profile und Funktionalität
- `feat` Description...

### Refaktorierungen
- `refactor` Description...

### Validierung und Qualitätsverbesserungen
- `fix` Description...

### Display-Namen und Terminologie-Korrekturen
- `fix` Description...

### Beispieldaten-Korrekturen
- `fix` Description...

### Dokumentation
- `docs` Description...

### Technische Verbesserungen
- `chore` Description...

### Weitere Verbesserungen
- `improve` Description...
```

## Reference

- Ballot tag: `v2026.0.0-ballot`
- Release notes path: `implementation-guides/ImplementationGuide-2026.x-DE/MIIIGModulSelteneErkrankungen/ReleaseNotes.page.md`
