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

## Changelog
### Warden 1.0 — Changelog (from 0.9.9)

### New
- **OpenRouter sub-providers:** OpenRouter models are now sub-categorized by their originating labs (e.g., Anthropic, OpenAI, xAI, ZAI, and more).
- **Chat grouping controls:** Option to **group/ungroup chats by date** in the sidebar.
- **Richer model details:** **Metadata and model properties** are now shown for most models (credit: LiteLLM on GitHub).

### Improved
- **Model Selector:** Rebuilt dropdown with **tabbed navigation**, clearer organization, and **faster performance**.
- **Quick Chat:** Major improvements to reliability and overall experience; Quick Chats are now **much more robust**.
- **Sidebar:** Cleaner layout with **more chats visible** at once.
- **UI polish:** Refinements across the **sidebar and chat area**.
- **Projects UI:** Simplified interface with more **native macOS touches**.

### Maintenance
- **Code quality improvements:** Internal refactors and cleanup for stability and maintainability.

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
