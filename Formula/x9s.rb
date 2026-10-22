class X9s < Formula
  desc "Terminal UI for Crossplane"
  homepage "https://github.com/e-a-s-t/x9s"
  on_macos do
    on_arm do
      url "https://github.com/e-a-s-t/x9s/releases/download/v0.1.5/x9s-darwin-arm64.tar.gz"
      sha256 "b2aaaedaad9b0c3f97750c7617483f0e928bb14d91ef46aa1d2187bb6d4c2f90"
    end
    on_intel do
      url "https://github.com/e-a-s-t/x9s/releases/download/v0.1.5/x9s-darwin-amd64.tar.gz"
      sha256 "700e4844b43465d3a1af7b5401c9c16c07bf29901eb92e2b89c88f189d61d5d3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/e-a-s-t/x9s/releases/download/v0.1.5/x9s-linux-arm64.tar.gz"
      sha256 "5b2d21c6b55f84eabfe39b78ac50d95930fa61c660d9a4572e7d163da7d7404a"
    end
    on_intel do
      url "https://github.com/e-a-s-t/x9s/releases/download/v0.1.5/x9s-linux-amd64.tar.gz"
      sha256 "9526b7b0f76558c06efaa2fd464c017bf196421b28570f36457479a3d31233d8"
    end
  end

  def install
    bin.install "x9s"
  end

  test do
    system bin/"x9s", "--version"
  end
end
