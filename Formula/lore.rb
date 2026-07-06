class Lore < Formula
  desc "Git-native project memory and traceability tool"
  homepage "https://github.com/e-a-s-t/lore"
  version "0.1.6"

  on_macos do
    on_arm do
      url "https://github.com/e-a-s-t/lore/releases/download/v0.1.6/lore-darwin-arm64.tar.gz"
      sha256 "23b984c07b993389fbb71ebba1684ff4d580832536ca3664d1348e00c36f8944"
    end
  end

  on_linux do
    url "https://github.com/e-a-s-t/lore/releases/download/v0.1.6/lore-linux-amd64.tar.gz"
    sha256 "28da1cd37c6565750c08ae242520fa2184bedb7a90343b61e5285d2b04ca1b4d"
  end

  def install
    bin.install "lore-cli" => "lore"
    bin.install "lore-tui"
  end

  test do
    system "#{bin}/lore", "--help"
  end
end
