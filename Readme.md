# homebrew-wharfside

Homebrew tap for [Wharfside](https://wharfside.app) — a native macOS GUI for
[apple/container](https://github.com/apple/container) with on-device AI log
diagnosis.

## Install

```bash
brew tap wharfside/wharfside
brew install --cask wharfside
```

## Update

```bash
brew update
brew upgrade --cask wharfside
```

## Uninstall

```bash
brew uninstall --cask wharfside
# remove app data too:
brew uninstall --zap --cask wharfside
```

## Releasing a new version

1. Tag and push a release in the main [wharfside/wharfside](https://github.com/wharfside/wharfside)
   repo (`git tag vX.Y.Z && git push origin vX.Y.Z`). CI signs, notarizes,
   and publishes `Wharfside.dmg` and `Wharfside.dmg.sha256` to the release.
2. In this repo, update `Casks/wharfside.rb`:
   - `version "X.Y.Z"`
   - `sha256` — first field from the published `Wharfside.dmg.sha256`
3. Run `brew audit --cask --online Casks/wharfside.rb` and
   `brew style Casks/wharfside.rb` locally before committing.
4. Commit and push — CI (see `.github/workflows/tests.yml`) re-runs the same
   audit/style checks on every PR.

## License

MIT — see [LICENSE](LICENSE).
