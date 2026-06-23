class Ctop < Formula
  desc "top-like monitor for Codex and GitHub Copilot usage"
  homepage "https://github.com/e-a-s-t/ctop"
  version "0.2.11"

  on_macos do
    on_arm do
      url "https://github.com/e-a-s-t/ctop/releases/download/v0.2.11/ctop-darwin-arm64.tar.gz"
      sha256 "16df147b9aee69a57efd1fbb6716a67d9326723104c69c639fc111c86ed52727"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/e-a-s-t/ctop/releases/download/v0.2.11/ctop-linux-amd64.tar.gz"
      sha256 "16df147b9aee69a57efd1fbb6716a67d9326723104c69c639fc111c86ed52727"
    end
  end

  def install
    bin.install "ctop"
  end

  test do
    system "#{bin}/ctop", "--help"
  end
end
