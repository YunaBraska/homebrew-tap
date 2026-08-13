# Homebrew Tap

This repository is a Homebrew tap for projects under `YunaBraska`.

## Install

```bash
brew tap yunabraska/tap
brew install --cask yunabraska/tap/podlord   # macOS
brew install yunabraska/tap/podlord          # Linux
brew upgrade yunabraska/tap/podlord
brew install --cask sentrio
```

Casks and formulae are updated automatically from public upstream GitHub Releases.

Add one `# yuna-release: owner/repository` marker and one
`# yuna-release-asset: name-{version}.zip` marker for each platform asset. The
tap workflow downloads every declared asset from the latest stable release,
updates its version, URL, and SHA-256, then opens one `bot/maintenance-*` PR.
It dispatches formula CI for that exact branch commit; central weekly maintenance
merges it when green.

The updater uses this repository's `GITHUB_TOKEN`; no maintenance token is needed.
See [automation ownership](https://github.com/YunaBraska/YunaBraska/blob/main/AUTOMATION.md).
