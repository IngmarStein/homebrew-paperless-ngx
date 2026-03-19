# Agent Instructions for homebrew-paperless-ngx

This is a personal Homebrew tap (`ingmarstein/paperless-ngx`) containing a single formula: `paperless-ngx`.

## Version Updates

Preferred method for version bumps:

```sh
brew bump-formula-pr --strict ingmarstein/paperless-ngx/paperless-ngx --url=<url> --sha256=<sha256>
# or
brew bump-formula-pr --strict ingmarstein/paperless-ngx/paperless-ngx --tag=<tag> --revision=<revision>
# or
brew bump-formula-pr --strict ingmarstein/paperless-ngx/paperless-ngx --version=<version>
```

### Manual Version Updates

If manual editing is needed:

```sh
brew edit ingmarstein/paperless-ngx/paperless-ngx
# Update url and sha256 (or tag and revision)
# Leave `bottle do` block unchanged
```

Commit message: `paperless-ngx <version>`

## Formula Fixes

Commit message: `paperless-ngx: fix <description>` or `paperless-ngx: <description>`

### When to Add a Revision

Add or increment `revision` when:
- Fix requires existing bottles to be rebuilt
- Dependencies changed in a way that affects the built package
- The installed binary/library behavior changes

Do NOT add revision for cosmetic changes (comments, style, livecheck fixes).

## Validation

Run before committing:

```sh
# Build from source
HOMEBREW_NO_INSTALL_FROM_API=1 brew install --build-from-source ingmarstein/paperless-ngx/paperless-ngx

# Run tests
brew test ingmarstein/paperless-ngx/paperless-ngx

# Audit
brew audit --strict ingmarstein/paperless-ngx/paperless-ngx

# Style check
brew style Formula/paperless-ngx.rb
```

## Commit Message Format

- Version update: `paperless-ngx <version>`
- Fix/change: `paperless-ngx: fix <description>` or `paperless-ngx: <description>`
- Bottle update: `paperless-ngx: update <version> bottle.`
- First line MUST be 50 characters or less

## Bottle Management

Bottles are managed by CI. Do not manually edit `bottle do` blocks.

## References

- [Formula Cookbook](https://docs.brew.sh/Formula-Cookbook)
- [Taps documentation](https://docs.brew.sh/Taps)
