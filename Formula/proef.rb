class Proef < Formula
  desc "Declarative multi-engine e2e test runner: Gherkin prose over embedded hurl"
  homepage "https://github.com/emrecdr/proef"
  version "0.14.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/proef/releases/download/v0.14.0/proef-v0.14.0-aarch64-apple-darwin.tar.gz"
      sha256 "5aa0c8024c74c3e19bb54050d7cc5a52759fc8471fe3ebc0e6d62239c17ec452"
    end
    on_intel do
      url "https://github.com/emrecdr/proef/releases/download/v0.14.0/proef-v0.14.0-x86_64-apple-darwin.tar.gz"
      sha256 "cb17282e1a30f196f48734cfffe367ee65209eb91d3b524bc4471a06a2c19a63"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/proef/releases/download/v0.14.0/proef-v0.14.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "be953a0874cc4fba04db1e613566fb323a238436a08e639dd7873ed4e595806a"
    end
    on_intel do
      url "https://github.com/emrecdr/proef/releases/download/v0.14.0/proef-v0.14.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4cbdc4822558af20972408373b54c153fea5d07cd83a5a08d6462a01973aa7d8"
    end
  end

  def install
    bin.install "proef"
  end

  test do
    assert_match "proef", shell_output("#{bin}/proef --version")
  end
end
