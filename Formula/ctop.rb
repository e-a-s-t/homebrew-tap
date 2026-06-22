class Ctop < Formula
  desc "top-like monitor for Codex and GitHub Copilot usage"
  homepage "https://github.com/e-a-s-t/ctop"
  version "0.2.10"

  on_macos do
    on_arm do
      url "https://github.com/e-a-s-t/ctop/releases/download/v0.2.10/ctop-darwin-arm64.tar.gz"
      sha256 "8a7403517db0f177dfe20e8b8f5c263e023e02f0ea14f66fd5d363c8619146ca"
    end

    on_intel do
      url "https://github.com/e-a-s-t/ctop/releases/download/v0.2.10/ctop-darwin-amd64.tar.gz"
      sha256 "41b0b4553f583cd760713ab72c96f4f23576644df608e238e6a689e0219c8931"
    end
  end

  def install
    bin.install "ctop"
  end

  test do
    system "#{bin}/ctop", "--help"
  end
end
