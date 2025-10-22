# LocalDuck Homebrew Tap

This is a Homebrew tap for [LocalDuck](https://github.com/sebk4c/LocalDuck) - a local DuckDB database with Crunchbase data for funding analysis.

## Installation

```bash
brew tap sebk4c/localduck
brew install localduck
```

## What it installs

- `localduck-import` - Import Crunchbase data into DuckDB
- `localduck-query` - Query funding data by organization URL

## Upgrade

```bash
brew upgrade localduck
```

## Uninstall

```bash
brew uninstall localduck
brew untap sebk4c/localduck
```

## For maintainers

This repository contains the Homebrew formula for LocalDuck. The main LocalDuck project repository is at https://github.com/sebk4c/LocalDuck.

When creating a new release:
1. Create a git tag in the LocalDuck repository: `git tag v0.1.0`
2. Push the tag: `git push origin v0.1.0`
3. Update the formula URL to use the tag
4. Calculate the SHA256: `brew fetch --build-from-source localduck`
5. Update the SHA256 in the formula
6. Commit and push changes to this tap repository

