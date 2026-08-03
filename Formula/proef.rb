class Proef < Formula
  desc "Declarative multi-engine e2e test runner: Gherkin prose over embedded hurl"
  homepage "https://github.com/emrecdr/proef"
  version "0.5.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/proef/releases/download/v0.5.0/proef-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "bd1edd9b4fd5305b00f28b87aa030aefe461206f3359ad8e30c43606e7fa871a"
    end
    on_intel do
      url "https://github.com/emrecdr/proef/releases/download/v0.5.0/proef-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "10993a17d9cc2871f43cc8afc106edd7453fff777af5c0f919f1b8ca6153865c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/proef/releases/download/v0.5.0/proef-v0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "78e844d89667c9e444d2bfb33913eb7ec5e9999e088a0f8f6a95eefcad286c5b"
    end
    on_intel do
      url "https://github.com/emrecdr/proef/releases/download/v0.5.0/proef-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ea837147c9cd3a597b142bb2603397dfdb8e7a11cdfe2130d90a218b660c5a43"
    end
  end

  def install
    bin.install "proef"
  end

  test do
    assert_match "proef", shell_output("#{bin}/proef --version")
  end
end
