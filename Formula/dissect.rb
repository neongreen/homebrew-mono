class Dissect < Formula
  desc "Go refactoring assistant for structural code transformations."
  homepage "https://github.com/neongreen/mono/tree/main/dissect"
  version "main.10"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/neongreen/mono/releases/download/dissect--main.10/dissect-main.10-darwin-arm64.tar.gz"
      sha256 "f1f325e6eafc9094ff2ec80a793ebb88b64c6dc6a6798cf6146d14cdfc790744"
    end
    if Hardware::CPU.intel?
      url "https://github.com/neongreen/mono/releases/download/dissect--main.10/dissect-main.10-darwin-amd64.tar.gz"
      sha256 "c228c4063116d8404b2f9a666f4ebff26f22d2c8684761cb8f1ac659cc2ddfac"
    end
  end
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/neongreen/mono/releases/download/dissect--main.10/dissect-main.10-linux-arm64.tar.gz"
      sha256 "259a91520792b5e1bef351050f71b13b31b915c9d28359cc00c1211a39cd2444"
    end
    if Hardware::CPU.intel?
      url "https://github.com/neongreen/mono/releases/download/dissect--main.10/dissect-main.10-linux-amd64.tar.gz"
      sha256 "b3e12b1b17b6db4b29d072414b617ea8d4db2dc6ab7d486942b33da8e5b22c7f"
    end
  end
  def install
    bin.install "dissect"
  end

  test do
    system "#{bin}/dissect", "--help"
  end
end
