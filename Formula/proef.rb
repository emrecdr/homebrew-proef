class Proef < Formula
  desc "Declarative multi-engine e2e test runner: Gherkin prose over embedded hurl"
  homepage "https://github.com/emrecdr/proef"
  version "0.10.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/proef/releases/download/v0.10.0/proef-v0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "a8c4a81214931ed375ad5228d411a6849341808e0b70a02b61f4c1b46ed061aa"
    end
    on_intel do
      url "https://github.com/emrecdr/proef/releases/download/v0.10.0/proef-v0.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "f4eb5280d64c5656f31b5f61b1daaa17c7ab7dae94deafc108610d883b3f253e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/proef/releases/download/v0.10.0/proef-v0.10.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1c620f3c181479cc6af64e5344f7d007acd5dc45d94f4e119d7fce4a1e9cf3cd"
    end
    on_intel do
      url "https://github.com/emrecdr/proef/releases/download/v0.10.0/proef-v0.10.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4d8aa80029b5ce5a52d51de8328cefbcb06fad1d1419196ecba9ca174cdb76f4"
    end
  end

  def install
    bin.install "proef"
  end

  test do
    assert_match "proef", shell_output("#{bin}/proef --version")
  end
end
