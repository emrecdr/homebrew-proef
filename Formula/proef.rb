class Proef < Formula
  desc "Declarative multi-engine e2e test runner: Gherkin prose over embedded hurl"
  homepage "https://github.com/emrecdr/proef"
  version "0.7.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/proef/releases/download/v0.7.0/proef-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "eb7c882ce3259928805633c1cb8b07b43648c3b4163a57a422823ef5c6e136d9"
    end
    on_intel do
      url "https://github.com/emrecdr/proef/releases/download/v0.7.0/proef-v0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "f48bf44908219f342bfd8e272dac7246e4ecad0642665aca713b802e246ecc83"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/proef/releases/download/v0.7.0/proef-v0.7.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "203832470080114da6bb4f3c8dc94fa76dad5a234a01ec65ed30c0d8d276edf1"
    end
    on_intel do
      url "https://github.com/emrecdr/proef/releases/download/v0.7.0/proef-v0.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1338b181a66fc4567e6b5763c34474f13fe94d103017fed777408039499975bd"
    end
  end

  def install
    bin.install "proef"
  end

  test do
    assert_match "proef", shell_output("#{bin}/proef --version")
  end
end
