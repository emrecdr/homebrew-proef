class Proef < Formula
  desc "Declarative multi-engine e2e test runner: Gherkin prose over embedded hurl"
  homepage "https://github.com/emrecdr/proef"
  version "0.4.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/proef/releases/download/v0.4.0/proef-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "80f59f6e64519c4a7717846c415b9050bcf5cb5f1191cf5c6228ff5e462426ec"
    end
    on_intel do
      url "https://github.com/emrecdr/proef/releases/download/v0.4.0/proef-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "9a2d20e9687afe479ab97e8385ca1225de3538c7a171b2208f041f146611eab8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/proef/releases/download/v0.4.0/proef-v0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8197a0f4c332fa7ca744e8ca8f8efd3b7f1f1c5ca72306fee0d23dc3f2beafba"
    end
    on_intel do
      url "https://github.com/emrecdr/proef/releases/download/v0.4.0/proef-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "652a182171a233fa26d93a27be1319f381774368273030ec5a512589b8ffe450"
    end
  end

  def install
    bin.install "proef"
  end

  test do
    assert_match "proef", shell_output("#{bin}/proef --version")
  end
end
