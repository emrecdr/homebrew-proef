class Proef < Formula
  desc "Declarative multi-engine e2e test runner: Gherkin prose over embedded hurl"
  homepage "https://github.com/emrecdr/proef"
  version "0.13.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/proef/releases/download/v0.13.0/proef-v0.13.0-aarch64-apple-darwin.tar.gz"
      sha256 "9cfe86c11b37383b80cab701a82340a4da5004cc401068d3190085448182d77e"
    end
    on_intel do
      url "https://github.com/emrecdr/proef/releases/download/v0.13.0/proef-v0.13.0-x86_64-apple-darwin.tar.gz"
      sha256 "9a39f4a94e7591e0bd39bfdacf8108e079f2e809a8030f79ee8e1bad3070d797"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/proef/releases/download/v0.13.0/proef-v0.13.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e26df3104ec3effd3e25f5894afa7f2b4aac6171fcb36cd6a72690fc9ad2f975"
    end
    on_intel do
      url "https://github.com/emrecdr/proef/releases/download/v0.13.0/proef-v0.13.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f37d2569228a937b72f57ed86e86ac57821ffc80e5e800893b2ea631215fe43f"
    end
  end

  def install
    bin.install "proef"
  end

  test do
    assert_match "proef", shell_output("#{bin}/proef --version")
  end
end
