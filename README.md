# Homebrew Tap for Warden

This is the official Homebrew tap for [Warden](https://github.com/SidhuK/WardenApp), a native macOS AI chat client supporting 10+ providers.

## Installation

```bash
brew install --cask SidhuK/warden/warden
```

Or use the traditional way:
```bash
brew tap SidhuK/warden
brew install --cask warden
```

## First Launch

Since Warden is not notarized, you may need to bypass Gatekeeper on first launch:

1. **Right-click** the app → **Open**, or
2. Run in terminal:
   ```bash
   xattr -cr /Applications/Warden.app
   ```

## Updates

```bash
brew upgrade --cask warden
```

## Uninstall

```bash
brew uninstall --cask warden
```

## About Warden

Warden is a privacy-focused, native macOS AI chat client that supports:
- OpenAI, Anthropic, Google, Mistral, and more
- Local-only Core Data storage
- MCP agent support
- Multiple AI providers in one app

[Learn more →](https://github.com/SidhuK/WardenApp)
