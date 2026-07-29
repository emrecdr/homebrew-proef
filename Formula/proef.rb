class Proef < Formula
  desc "Declarative multi-engine e2e test runner: Gherkin prose over embedded hurl"
  homepage "https://github.com/emrecdr/proef"
  version "0.3.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/proef/releases/download/v0.3.0/proef-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "a47bdfad018dcc4ddeb35e8d1addcf571b433878844449f481c6414447518811"
    end
    on_intel do
      url "https://github.com/emrecdr/proef/releases/download/v0.3.0/proef-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "1b8e58518916c60a25eaec323f28e5070a6d496de3e7041ea6cd791b7a33c2d4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/proef/releases/download/v0.3.0/proef-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9c7b200df2365e9b59a21f546097129e4784d0ffbec1814e8bf8f190f9fd1b32"
    end
    on_intel do
      url "https://github.com/emrecdr/proef/releases/download/v0.3.0/proef-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "33fa02afa98a1e7f1f9925ad200ee248c9e1e4850c7f9e6060d17c6435b9d837"
    end
  end

  def install
    bin.install "proef"
  end

  test do
    assert_match "proef", shell_output("#{bin}/proef --version")
  end
end
