class Prrun < Formula
  desc "Run binaries from GitHub PR releases for quick verification."
  homepage "https://github.com/neongreen/mono/tree/main/prrun"
  version "main.16"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/neongreen/mono/releases/download/prrun--main.16/prrun-main.16-darwin-arm64.tar.gz"
      sha256 "b3be9ff33dbf0eaf83797b4f35c05e80ab18e21684923f1bdccfb2ed40b0f754"
    end
    if Hardware::CPU.intel?
      url "https://github.com/neongreen/mono/releases/download/prrun--main.16/prrun-main.16-darwin-amd64.tar.gz"
      sha256 "641e20de374ca72d6fecdb3a79db14df62233091883c93c7ef8a0c1948a66b08"
    end
  end
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/neongreen/mono/releases/download/prrun--main.16/prrun-main.16-linux-arm64.tar.gz"
      sha256 "0256fd9c1253b9ea04783042286254bcb627a9662eb9ec1f83c9972637064172"
    end
    if Hardware::CPU.intel?
      url "https://github.com/neongreen/mono/releases/download/prrun--main.16/prrun-main.16-linux-amd64.tar.gz"
      sha256 "3eb66732ffa49146d46b811eed5414ea43a4361778244d0f8aea0fe9c375579e"
    end
  end
  def install
    bin.install "prrun"
  end

  test do
    system "#{bin}/prrun", "--help"
  end
end
