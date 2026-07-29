class Proef < Formula
  desc "Declarative multi-engine e2e test runner: Gherkin prose over embedded hurl"
  homepage "https://github.com/emrecdr/proef"
  version "0.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/proef/releases/download/v0.1.0/proef-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "b776cfcb8287789539d8e32cff6eef30b6bd1dd3ec5ff0faf4f96f2e6e9e5e70"
    end
    on_intel do
      url "https://github.com/emrecdr/proef/releases/download/v0.1.0/proef-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "803edc410310589666f82a02ea2ff1d5fd26c8cb7f74e80063aa3f9c4e4a1f03"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/proef/releases/download/v0.1.0/proef-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bb20d102567f0291cb4455fde08d2604712ce5462594a8f241fb4217eb7f89a4"
    end
    on_intel do
      url "https://github.com/emrecdr/proef/releases/download/v0.1.0/proef-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5137befdecd1773296e312c8b33bf981a886531c589fe9266a49c0f75f8ee303"
    end
  end

  def install
    bin.install "proef"
  end

  test do
    assert_match "proef", shell_output("#{bin}/proef --version")
  end
end
