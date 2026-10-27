# homebrew-tap

Homebrew formulae for Tailscale tools.

```
brew install tailscale/tap/aperture-cli
```

Or tap it first:

```
brew tap tailscale/tap
brew install aperture-cli
```

## Formulae

| Formula | Description |
| --- | --- |
| `aperture-cli` | Agentic coding launcher for [Aperture](https://github.com/tailscale/aperture-cli) |

## Updates

`Formula/aperture-cli.rb` is written by the [aperture-cli](https://github.com/tailscale/aperture-cli) release workflow. It installs the signed, notarized release archives, so don't edit it by hand. Fixes go in that repo's `.goreleaser.yaml`.
