class Proef < Formula
  desc "Declarative multi-engine e2e test runner: Gherkin prose over embedded hurl"
  homepage "https://github.com/emrecdr/proef"
  version "0.11.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/proef/releases/download/v0.11.0/proef-v0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "17290ebca43408522fe5c1ce5839361081e19dad1fc338b52fbb13f5a19d25d6"
    end
    on_intel do
      url "https://github.com/emrecdr/proef/releases/download/v0.11.0/proef-v0.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "0e6743a778532507d2f786ee0bd277c6e39b657569d301729c8c483f47d9d5ee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/proef/releases/download/v0.11.0/proef-v0.11.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0ceeaf6e05f61e9d0234eb1003d4e2eb222831bb569d91eabad11980c03b7bb6"
    end
    on_intel do
      url "https://github.com/emrecdr/proef/releases/download/v0.11.0/proef-v0.11.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e7be59b95005acd2d2f970346ad001280d6ecd394c3b5980a182b2f4257edc61"
    end
  end

  def install
    bin.install "proef"
  end

  test do
    assert_match "proef", shell_output("#{bin}/proef --version")
  end
end
