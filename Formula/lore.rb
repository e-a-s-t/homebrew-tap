class Lore < Formula
  desc "Git-native project memory and traceability tool"
  homepage "https://github.com/e-a-s-t/lore"
  version "0.1.4"

  on_macos do
    on_arm do
      url "https://github.com/e-a-s-t/lore-tui/releases/download/v0.1.4/lore-darwin-arm64.tar.gz"
      sha256 "f42d9f8dca8ce4315ac4bc6b0df56579779d3828d5a20aa52a34c8e37a171fa5"
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
