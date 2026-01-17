# Homebrew Tap for Wribe

[Wribe](https://github.com/chhoumann/wribe) is an AI-powered local audio transcription app for macOS.

## Installation

```bash
brew tap chhoumann/wribe
brew install --cask wribe
```

## Why a custom tap?

Wribe is distributed without Apple notarization (to avoid the $99/year developer fee). The official Homebrew cask repository requires notarized apps, so this custom tap provides:

- One-liner installation
- Automatic Gatekeeper quarantine removal
- Easy updates via `brew upgrade`

## Updating

```bash
brew upgrade --cask wribe
```

## Uninstalling

```bash
brew uninstall --cask wribe
```

To also remove preferences and caches:

```bash
brew uninstall --cask --zap wribe
```

## Source

- App repository: https://github.com/chhoumann/wribe
- Cask source: [Casks/wribe.rb](Casks/wribe.rb)
