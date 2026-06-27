class Lore < Formula
  desc "Git-native project memory and traceability tool"
  homepage "https://github.com/e-a-s-t/lore"
  version "0.1.5"

  on_macos do
    on_arm do
      url "https://github.com/e-a-s-t/lore/releases/download/v0.1.5/lore-darwin-arm64.tar.gz"
      sha256 "909a1c4a010460658c85e4304d93089bfae51d7ff2dcf5f93c55036941b15c00"
    end
  end

  on_linux do
    url "https://github.com/e-a-s-t/lore/releases/download/v0.1.5/lore-linux-amd64.tar.gz"
    sha256 "f5ccbd5e519e8975228e0436a7734b1ab170e0431417f450f5a220cfb98ef82b"
  end

  def install
    bin.install "lore-cli" => "lore"
    bin.install "lore-tui"
  end

  test do
    system "#{bin}/lore", "--help"
  end
end
