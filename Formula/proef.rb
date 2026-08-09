class Proef < Formula
  desc "Declarative multi-engine e2e test runner: Gherkin prose over embedded hurl"
  homepage "https://github.com/emrecdr/proef"
  version "0.8.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/proef/releases/download/v0.8.0/proef-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "4e70cb6c76f545c4969bf9c02b485286e8b8da49bb33fa4f417e6cfecd00574b"
    end
    on_intel do
      url "https://github.com/emrecdr/proef/releases/download/v0.8.0/proef-v0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "583b90e7b75cc9e3e3eeaedb319c37da3a4e9e245df8bf5ed6921f41752f4b27"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/proef/releases/download/v0.8.0/proef-v0.8.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6bddac7e65f634a18e41fd570b8a96ddadbd8308d3a151df1b71ee2c9b7971ff"
    end
    on_intel do
      url "https://github.com/emrecdr/proef/releases/download/v0.8.0/proef-v0.8.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6dde61bcf29ac56588289a536959905458fa38e3f6844775f1113954ddd00e21"
    end
  end

  def install
    bin.install "proef"
  end

  test do
    assert_match "proef", shell_output("#{bin}/proef --version")
  end
end
