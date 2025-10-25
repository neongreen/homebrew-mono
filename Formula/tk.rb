class Tk < Formula
  desc "System-wide event-sourced task tracker with claims-based authority."
  homepage "https://github.com/neongreen/mono/tree/main/tk"
  version "main.3"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/neongreen/mono/releases/download/tk--main.3/tk-main.3-darwin-arm64.tar.gz"
      sha256 "99955d7e0b765d6ee79a519ec823591d01c9facf2a99c568873972a581cee1ae"
    end
    if Hardware::CPU.intel?
      url "https://github.com/neongreen/mono/releases/download/tk--main.3/tk-main.3-darwin-amd64.tar.gz"
      sha256 "b1bf3d1df801dde646523b47e17bf82a99ac29e430bb5ac157bc3a06ab95aa5d"
    end
  end
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/neongreen/mono/releases/download/tk--main.3/tk-main.3-linux-arm64.tar.gz"
      sha256 "17cbf086a786e190e0ed7138e34e37d92bf6ee51dbe865e5cab29ac1994e3c27"
    end
    if Hardware::CPU.intel?
      url "https://github.com/neongreen/mono/releases/download/tk--main.3/tk-main.3-linux-amd64.tar.gz"
      sha256 "6a1d2193f7d5ffd7e39d65576ee54fbc02e8f1b97bfd92c606c0b2dbc3c24908"
    end
  end
  def install
    bin.install "tk"
  end

  test do
    system "#{bin}/tk", "--help"
  end
end
