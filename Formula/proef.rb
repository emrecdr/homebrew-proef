class Proef < Formula
  desc "Declarative multi-engine e2e test runner: Gherkin prose over embedded hurl"
  homepage "https://github.com/emrecdr/proef"
  version "0.5.3"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/proef/releases/download/v0.5.3/proef-v0.5.3-aarch64-apple-darwin.tar.gz"
      sha256 "83b489572f6134c24e94fdec675dedc8434e4cdcc0b050e23875622fc92db999"
    end
    on_intel do
      url "https://github.com/emrecdr/proef/releases/download/v0.5.3/proef-v0.5.3-x86_64-apple-darwin.tar.gz"
      sha256 "7384d91ff86d1df006d7244c5dd670e51ca39a0e67d11eb25fbb48c9fb9a4706"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/proef/releases/download/v0.5.3/proef-v0.5.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "980dca8faa35e7b6b40f34fa798a74047bc13556151c9bbb79370c00db992ed2"
    end
    on_intel do
      url "https://github.com/emrecdr/proef/releases/download/v0.5.3/proef-v0.5.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "60d6a32f1de07f61179528df8e68a76603c0ef5e53b5da696bb84a4d26527fa1"
    end
  end

  def install
    bin.install "proef"
  end

  test do
    assert_match "proef", shell_output("#{bin}/proef --version")
  end
end
