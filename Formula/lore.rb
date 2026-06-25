class Lore < Formula
  desc "Git-native project memory and traceability tool"
  homepage "https://github.com/e-a-s-t/lore"
  version "0.1.4"

  on_macos do
    on_arm do
      url "https://github.com/e-a-s-t/lore-tui/releases/download/v0.1.4/lore-darwin-arm64.tar.gz"
      sha256 "0359ac83473f42fbcf13ac68e00e7de4b025ea529ea39b7ca2bb8cdd84eddf3f"
    end
  end

  on_linux do
    url "https://github.com/e-a-s-t/lore-tui/releases/download/v0.1.4/lore-linux-amd64.tar.gz"
    sha256 "52dcc3a84e26d5b1f0b15fcbfe37a13fcc28402dc482c65e43c017b37174bf2a"
  end

  def install
    bin.install "lore-cli" => "lore"
    bin.install "lore-tui"
  end

  test do
    system "#{bin}/lore", "--help"
  end
end
