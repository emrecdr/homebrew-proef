class Proef < Formula
  desc "Declarative multi-engine e2e test runner: Gherkin prose over embedded hurl"
  homepage "https://github.com/emrecdr/proef"
  version "0.2.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/proef/releases/download/v0.2.1/proef-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "379bc2f3f3017ff3b6ed3f687aceb110d6ea2b5bea078be181d3ec36e53bf0ff"
    end
    on_intel do
      url "https://github.com/emrecdr/proef/releases/download/v0.2.1/proef-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "3b80e39c99a16a04ddcd3c8e23d36fb0748458d167cd51c91f5a884d9022427c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/proef/releases/download/v0.2.1/proef-v0.2.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cb802ba771a6c9e1f0e11642c6e6df2476f7df771fea491269000610840fc410"
    end
    on_intel do
      url "https://github.com/emrecdr/proef/releases/download/v0.2.1/proef-v0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "51eb4b224ea6b2f9f8a68b689fc0087088371170b7df7f927ff4ec588a82667b"
    end
  end

  def install
    bin.install "proef"
  end

  test do
    assert_match "proef", shell_output("#{bin}/proef --version")
  end
end
