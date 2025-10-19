class Want < Formula
  desc "Interactive fulfillment assistant for installing tools and releases."
  homepage "https://github.com/neongreen/mono/tree/main/want"
  version "main.17"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/neongreen/mono/releases/download/want--main.17/want-main.17-darwin-arm64.tar.gz"
      sha256 "138b8aff37b0dd88c36a65b362e766a13313c44ed348a74d7ea84a120176fbfa"
    end
    if Hardware::CPU.intel?
      url "https://github.com/neongreen/mono/releases/download/want--main.17/want-main.17-darwin-amd64.tar.gz"
      sha256 "e4c69794acf1b26aa4ad01b791b2ba2eb61e0ebe28c4ebe4ef6e21fb54506410"
    end
  end
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/neongreen/mono/releases/download/want--main.17/want-main.17-linux-arm64.tar.gz"
      sha256 "a991114f732c7741d443aeadf9de6dc05243ae61907895b61b66da240082621b"
    end
    if Hardware::CPU.intel?
      url "https://github.com/neongreen/mono/releases/download/want--main.17/want-main.17-linux-amd64.tar.gz"
      sha256 "0226ae53478595533c1678e59c62556dbf923a19c6235fcb83be4eb7b9f0bbd9"
    end
  end
  def install
    bin.install "want"
  end

  test do
    system "#{bin}/want", "--help"
  end
end
