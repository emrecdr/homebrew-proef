class Proef < Formula
  desc "Declarative multi-engine e2e test runner: Gherkin prose over embedded hurl"
  homepage "https://github.com/emrecdr/proef"
  version "0.9.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/proef/releases/download/v0.9.0/proef-v0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "1ef2a58666cd5c95ef5e6e1f18e641a516037ffcb43be44cfe43470a70bb4833"
    end
    on_intel do
      url "https://github.com/emrecdr/proef/releases/download/v0.9.0/proef-v0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "a95558730d36e41439ff16ad907144d88da0f79562d8ee9043f27ffb331278b5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/proef/releases/download/v0.9.0/proef-v0.9.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "36298de7d156155b998007538ebb931e8714ed51a805606d47d0b21e9b07cbe6"
    end
    on_intel do
      url "https://github.com/emrecdr/proef/releases/download/v0.9.0/proef-v0.9.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "db5147cb5a7bb12c23ae099466e188d1e4336413161381c5787313ce16d64609"
    end
  end

  def install
    bin.install "proef"
  end

  test do
    assert_match "proef", shell_output("#{bin}/proef --version")
  end
end
