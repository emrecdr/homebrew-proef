class Proef < Formula
  desc "Declarative multi-engine e2e test runner: Gherkin prose over embedded hurl"
  homepage "https://github.com/emrecdr/proef"
  version "0.6.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/proef/releases/download/v0.6.0/proef-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "79729b441c870193563c63357e473c06ba6d8f5fa2054a9beaf40a050d06d9b9"
    end
    on_intel do
      url "https://github.com/emrecdr/proef/releases/download/v0.6.0/proef-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "07049b979e1fd1c998a473d8ca8193d24aa0438b5790c79b55f98aa576fd7572"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/proef/releases/download/v0.6.0/proef-v0.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b8051338b288ee6797ebe477232510f074ea9ca3d237e7a0cd9e2239f9395d24"
    end
    on_intel do
      url "https://github.com/emrecdr/proef/releases/download/v0.6.0/proef-v0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ce74f4f9a5519f7857b5c30be05a8be4a7f542f3f1aad21d3b50facbcb356147"
    end
  end

  def install
    bin.install "proef"
  end

  test do
    assert_match "proef", shell_output("#{bin}/proef --version")
  end
end
