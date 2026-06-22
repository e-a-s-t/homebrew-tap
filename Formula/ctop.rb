class Ctop < Formula
  desc "top-like monitor for Codex and GitHub Copilot usage"
  homepage "https://github.com/e-a-s-t/ctop"
  version "0.2.9"

  on_macos do
    on_arm do
      url "https://github.com/e-a-s-t/ctop/releases/download/v0.2.9/ctop-darwin-arm64.tar.gz"
      sha256 "REPLACE_WITH_SHA256"
    end

    on_intel do
      url "https://github.com/e-a-s-t/ctop/releases/download/v0.2.9/ctop-darwin-amd64.tar.gz"
      sha256 "REPLACE_WITH_SHA256"
    end
  end

  def install
    bin.install "ctop"
  end

  test do
    system "#{bin}/ctop", "--help"
  end
end
