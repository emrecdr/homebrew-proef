class Proef < Formula
  desc "Declarative multi-engine e2e test runner: Gherkin prose over embedded hurl"
  homepage "https://github.com/emrecdr/proef"
  version "0.3.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/proef/releases/download/v0.3.1/proef-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "a403a4ed35f295e578b8aaf021c4b9478c15e8ffadb4d2875d7211c51498c191"
    end
    on_intel do
      url "https://github.com/emrecdr/proef/releases/download/v0.3.1/proef-v0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "b774b5acc7e119b90b890997f7caa81df0031b57f3b997c273524764da032b6d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/proef/releases/download/v0.3.1/proef-v0.3.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3ff61238b916ae088f877c40f146809f23bc728fd3c72cb77b05a4e09531177f"
    end
    on_intel do
      url "https://github.com/emrecdr/proef/releases/download/v0.3.1/proef-v0.3.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bc3abaa8345f74ecb7a08526175fdf67b85369389a9c6abd3234780e472356ab"
    end
  end

  def install
    bin.install "proef"
  end

  test do
    assert_match "proef", shell_output("#{bin}/proef --version")
  end
end
