class ApertureCli < Formula
  desc "Agentic coding launcher for Aperture by Tailscale"
  homepage "https://github.com/tailscale/aperture-cli"
  version "0.1.0"
  license "BSD-3-Clause"

  # Prebuilt binaries only: the macOS release is Developer ID signed and
  # notarized in CI, and a source build would lose that.
  depends_on :macos

  on_arm do
    url "https://github.com/tailscale/aperture-cli/releases/download/v#{version}/aperture-cli_darwin_arm64.tar.gz"
    sha256 "65b32d62b9f4a6792f22d62669f4323852f101ac344db93a35e60bb6df4df19c"
  end

  on_intel do
    url "https://github.com/tailscale/aperture-cli/releases/download/v#{version}/aperture-cli_darwin_amd64.tar.gz"
    sha256 "9d5bd2c46251327d4af46da5b5bf9b8c1713f63df194cf57f4a52c20af81c9a7"
  end

  def install
    bin.install "aperture"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/aperture --version")
  end
end
