class Proef < Formula
  desc "Declarative multi-engine e2e test runner: Gherkin prose over embedded hurl"
  homepage "https://github.com/emrecdr/proef"
  version "0.2.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/proef/releases/download/v0.2.0/proef-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "0323fa46854470fbdc8c79b66c3ee77c995bd2336c6c66e262600dd8ec1955e7"
    end
    on_intel do
      url "https://github.com/emrecdr/proef/releases/download/v0.2.0/proef-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "f859a05423102c785e06a504da056c9e10cec82edbc70813bad46690e0cd9f2f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/proef/releases/download/v0.2.0/proef-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "20846b97a3eb1ba64786f98fe224a5b4e00515c31c4a9f90149a3fc6cdd36949"
    end
    on_intel do
      url "https://github.com/emrecdr/proef/releases/download/v0.2.0/proef-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5ab3a82ea1ccea03772362239ac1d0a977270dcf6017bd85efa6a18b9889d65a"
    end
  end

  def install
    bin.install "proef"
  end

  test do
    assert_match "proef", shell_output("#{bin}/proef --version")
  end
end
