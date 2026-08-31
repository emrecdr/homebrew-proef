class Proef < Formula
  desc "Declarative multi-engine e2e test runner: Gherkin prose over embedded hurl"
  homepage "https://github.com/emrecdr/proef"
  version "0.16.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/proef/releases/download/v0.16.0/proef-v0.16.0-aarch64-apple-darwin.tar.gz"
      sha256 "97a27cda2ea4072da38264c6407c5a7703707eb01bd60ee448729d3995e1d7c0"
    end
    on_intel do
      url "https://github.com/emrecdr/proef/releases/download/v0.16.0/proef-v0.16.0-x86_64-apple-darwin.tar.gz"
      sha256 "3a43edd885d08d5db2ffaa13659f47e59c8969d150a31ed074134c8a8c5687e3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/proef/releases/download/v0.16.0/proef-v0.16.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d603550d37be0b4ffce9f105a377ba097fe89aa93637778c10559b7a691eb8e9"
    end
    on_intel do
      url "https://github.com/emrecdr/proef/releases/download/v0.16.0/proef-v0.16.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "43c0762df36277ab59000ee352326fb67f3a4cfe56724823ddf3c165475d2965"
    end
  end

  def install
    bin.install "proef"
  end

  test do
    assert_match "proef", shell_output("#{bin}/proef --version")
  end
end
