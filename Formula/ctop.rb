class Ctop < Formula
  desc "top-like monitor for Codex and GitHub Copilot usage"
  homepage "https://github.com/e-a-s-t/ctop"
  version "0.2.9"

  on_macos do
    on_arm do
      url "https://github.com/e-a-s-t/ctop/releases/download/v0.2.9/ctop-darwin-arm64.tar.gz"
      sha256 "fe37c003ead871dafb5edbc16a713a528cf89b48cba4c2c4fcccc7b1b8a5126b"
    end

    on_intel do
      url "https://github.com/e-a-s-t/ctop/releases/download/v0.2.9/ctop-darwin-amd64.tar.gz"
      sha256 "64e9112fa3dce013da67d90cb07c14d5769af0a1ba19ea0b8ba8c95f10917248"
    end
  end

  def install
    bin.install "ctop"
  end

  test do
    system "#{bin}/ctop", "--help"
  end
end
