class Proef < Formula
  desc "Declarative multi-engine e2e test runner: Gherkin prose over embedded hurl"
  homepage "https://github.com/emrecdr/proef"
  version "0.5.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/proef/releases/download/v0.5.2/proef-v0.5.2-aarch64-apple-darwin.tar.gz"
      sha256 "d9a545586650407ef4ec8a6b9145ee5112a0afe618507eb2c4c81789ce541c05"
    end
    on_intel do
      url "https://github.com/emrecdr/proef/releases/download/v0.5.2/proef-v0.5.2-x86_64-apple-darwin.tar.gz"
      sha256 "fd2625a69b86e8aa8ea4561e1e6332204b4ddebc73f568d2dc25438c666a51e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/proef/releases/download/v0.5.2/proef-v0.5.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9fa4d025b03fed68ebb1a4d99b11ee31bc3c39164b06b93951f5126285ccdece"
    end
    on_intel do
      url "https://github.com/emrecdr/proef/releases/download/v0.5.2/proef-v0.5.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a8b302456050f64661c52efc394c7cb1bde669a06fd6433bfb2f037835553762"
    end
  end

  def install
    bin.install "proef"
  end

  test do
    assert_match "proef", shell_output("#{bin}/proef --version")
  end
end
