class Proef < Formula
  desc "Declarative multi-engine e2e test runner: Gherkin prose over embedded hurl"
  homepage "https://github.com/emrecdr/proef"
  version "0.17.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/proef/releases/download/v0.17.0/proef-v0.17.0-aarch64-apple-darwin.tar.gz"
      sha256 "c080ef185031bf1d73791fdcce151135b145d991f9f70bb7b02b828dd9270ad2"
    end
    on_intel do
      url "https://github.com/emrecdr/proef/releases/download/v0.17.0/proef-v0.17.0-x86_64-apple-darwin.tar.gz"
      sha256 "a89d19589fb4b116e828b45e76089e5f507e8e2f613f1fa472a099a972bb553d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/proef/releases/download/v0.17.0/proef-v0.17.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d422e48e5d5e5c7ee873d6dc1104b6bfcec75b25a899dba2ab4f6ee6fa062bd3"
    end
    on_intel do
      url "https://github.com/emrecdr/proef/releases/download/v0.17.0/proef-v0.17.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9abf4a5f38cc15d877bd875b84a1c9fab0aa499f7d1d60c475b3639d4fd6f02c"
    end
  end

  def install
    bin.install "proef"
  end

  test do
    assert_match "proef", shell_output("#{bin}/proef --version")
  end
end
