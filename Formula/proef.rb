class Proef < Formula
  desc "Declarative multi-engine e2e test runner: Gherkin prose over embedded hurl"
  homepage "https://github.com/emrecdr/proef"
  version "0.5.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/proef/releases/download/v0.5.1/proef-v0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "9a993ae90c1596ab2c89a53a308d974182db6762e80b84a57b1aebbdafe565c8"
    end
    on_intel do
      url "https://github.com/emrecdr/proef/releases/download/v0.5.1/proef-v0.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "89990790fa1da465d723406fbbea64b9bb2e9a9bb5734882dd7e91cc199bd8b2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/proef/releases/download/v0.5.1/proef-v0.5.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0e49c7e93d91a82866f16d26d5e2804d1b096d07c225d6d7e5f460163ed398a8"
    end
    on_intel do
      url "https://github.com/emrecdr/proef/releases/download/v0.5.1/proef-v0.5.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9128975811e58badbc5be9b03c4b45eb0b1bd032483fa52db95c79c66d30930f"
    end
  end

  def install
    bin.install "proef"
  end

  test do
    assert_match "proef", shell_output("#{bin}/proef --version")
  end
end
