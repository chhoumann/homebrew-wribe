# Homebrew Tap for Wribe

[Wribe](https://wribe.app) is an AI-powered local audio transcription app for macOS.

## Installation

```bash
brew tap chhoumann/wribe
brew install --cask wribe
```

## Why a custom tap?

Wribe is distributed as a Developer ID signed + notarized macOS app. This tap exists to make installation and updates via Homebrew easy:

- One-liner installation
- Removes the macOS quarantine flag as a safety step (notarized builds should open normally)
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
