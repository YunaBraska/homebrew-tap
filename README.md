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
daily workflow downloads every declared asset from the latest stable release,
updates its version, URL, and SHA-256, then opens one `bot/maintenance-*` PR.
It dispatches the formula CI against that branch before weekly maintenance merges it.
