cask "aperture-cli" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2"
  sha256 arm:   "a5a4188015271a5b27d64a7984d0037eb908dc51d524b0af24246b8c231f083f",
         intel: "89e948b6af5bb228dcbb70a06f79c6b218fe67833b71e3abf1c818fdbcfee6dd"

  # Prebuilt binaries only: the macOS release is Developer ID signed and
  # notarized in CI, and a source build would lose that.
  url "https://github.com/tailscale/aperture-cli/releases/download/v#{version}/aperture-cli_darwin_#{arch}.tar.gz"
  name "Aperture CLI"
  desc "Agentic coding launcher for Aperture by Tailscale"
  homepage "https://github.com/tailscale/aperture-cli"

  depends_on :macos

  binary "aperture"
end
