# homebrew-tap

Homebrew casks for Tailscale tools.

```
brew install --cask tailscale/tap/aperture-cli
```

Or tap it first:

```
brew tap tailscale/tap
brew install --cask aperture-cli
```

## Casks

| Cask | Description |
| --- | --- |
| `aperture-cli` | Agentic coding launcher for [Aperture](https://github.com/tailscale/aperture-cli) |

## Updates

`Casks/aperture-cli.rb` is written by the [aperture-cli](https://github.com/tailscale/aperture-cli) release workflow. It installs the signed, notarized release archives, so don't edit it by hand. Fixes go in that repo's `.goreleaser.yaml`.
