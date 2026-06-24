class Lore < Formula
  desc "Git-native project memory and traceability tool"
  homepage "https://github.com/e-a-s-t/lore"
  version "0.1.3"

  on_macos do
    on_arm do
      url "https://github.com/e-a-s-t/lore-tui/releases/download/v0.1.3/lore-darwin-arm64.tar.gz"
      sha256 "ee04b5a1320ab74711c76b8db8dfd4e643a8c344ae280ed649a5ac03c3ad8810"
    end
  end

  on_linux do
    url "https://github.com/e-a-s-t/lore-tui/releases/download/v0.1.3/lore-linux-amd64.tar.gz"
    sha256 "347f2328e9c35e172e37efbcb84a80522bc3c06235c38ab7eb3e831f2b6d3866"
  end

  def install
    bin.install "lore-cli" => "lore"
    bin.install "lore-tui"
  end

  test do
    system "#{bin}/lore", "--help"
  end
end
