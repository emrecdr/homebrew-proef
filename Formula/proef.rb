class Proef < Formula
  desc "Declarative multi-engine e2e test runner: Gherkin prose over embedded hurl"
  homepage "https://github.com/emrecdr/proef"
  version "0.12.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/proef/releases/download/v0.12.0/proef-v0.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "42eb4d663c1a4bd2bdb12fd2bbac06de036ad0c7487f29f21cb28adc579565de"
    end
    on_intel do
      url "https://github.com/emrecdr/proef/releases/download/v0.12.0/proef-v0.12.0-x86_64-apple-darwin.tar.gz"
      sha256 "50d0f1ddf26a1ddba40f56a443cc977779283bb3cb37505c58a71fc186cdcda2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/proef/releases/download/v0.12.0/proef-v0.12.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7df77092b41320c855638b1c7aaa216200d10aae99de4c4be57d675f3200efb3"
    end
    on_intel do
      url "https://github.com/emrecdr/proef/releases/download/v0.12.0/proef-v0.12.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7cb2ddb35432efe33f0dccf177db7a94d7ca586bd2acf979b3e8a037c9e64b06"
    end
  end

  def install
    bin.install "proef"
  end

  test do
    assert_match "proef", shell_output("#{bin}/proef --version")
  end
end
