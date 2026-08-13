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
central workflow downloads every declared asset from the latest stable release,
updates its version, URL, and SHA-256, then opens one `bot/maintenance-*` PR.
The pull-request workflow validates that branch; central weekly maintenance
merges it when green.

This repository deliberately has no update scheduler and no maintenance token.
See [automation ownership](https://github.com/YunaBraska/YunaBraska/blob/main/AUTOMATION.md).
