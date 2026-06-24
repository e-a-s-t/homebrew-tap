class Ctop < Formula
  desc "top-like monitor for Codex and GitHub Copilot usage"
  homepage "https://github.com/e-a-s-t/ctop"
  version "0.2.12"

  on_macos do
    on_arm do
      url "https://github.com/e-a-s-t/ctop/releases/download/v0.2.12/ctop-darwin-arm64.tar.gz"
      sha256 "4f0eec3cdd80f25b143fe30f7e3f1b45e2f4ed9dc93fbdcc0a3cf6a6d951795a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/e-a-s-t/ctop/releases/download/v0.2.12/ctop-linux-amd64.tar.gz"
      sha256 "4f0eec3cdd80f25b143fe30f7e3f1b45e2f4ed9dc93fbdcc0a3cf6a6d951795a"
    end
  end

  def install
    bin.install "ctop"
  end

  test do
    system "#{bin}/ctop", "--help"
  end
end
