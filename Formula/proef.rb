class Proef < Formula
  desc "Declarative multi-engine e2e test runner: Gherkin prose over embedded hurl"
  homepage "https://github.com/emrecdr/proef"
  version "0.11.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/proef/releases/download/v0.11.1/proef-v0.11.1-aarch64-apple-darwin.tar.gz"
      sha256 "34efbffa60fb0eec4f634c58b97c3f3656331e23d4ee16b24ec391f41bc726f1"
    end
    on_intel do
      url "https://github.com/emrecdr/proef/releases/download/v0.11.1/proef-v0.11.1-x86_64-apple-darwin.tar.gz"
      sha256 "632e5359e7405456544f62ba6fc4f7e6871196dd00b6b1f7de640c06826b9dff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/proef/releases/download/v0.11.1/proef-v0.11.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e1c191435dcab5e0bb61ef6e3d193129f4e1f01faffdb42306ebfef2bab5ad32"
    end
    on_intel do
      url "https://github.com/emrecdr/proef/releases/download/v0.11.1/proef-v0.11.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4f17daea26fd8a540fe236f211ce426d06ee802518f7dc90890eec2a334ab465"
    end
  end

  def install
    bin.install "proef"
  end

  test do
    assert_match "proef", shell_output("#{bin}/proef --version")
  end
end
