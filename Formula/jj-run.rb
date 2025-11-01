class JjRun < Formula
  desc "Execute shell commands across multiple repository changes in isolated workspaces using jj."
  homepage "https://github.com/neongreen/mono/tree/main/jj-run"
  version "main.1"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/neongreen/mono/releases/download/jj-run--main.1/jj-run-main.1-darwin-arm64.tar.gz"
      sha256 "b7f9fca017e4105643cdbfe246bfdc7cae2316b0b25b95a7a7385fd413e3672f"
    end
    if Hardware::CPU.intel?
      url "https://github.com/neongreen/mono/releases/download/jj-run--main.1/jj-run-main.1-darwin-amd64.tar.gz"
      sha256 "0cf40bf34005b606e6bd55e374986397374fc15b169de91e3d168549e8b117e8"
    end
  end
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/neongreen/mono/releases/download/jj-run--main.1/jj-run-main.1-linux-arm64.tar.gz"
      sha256 "65ce30b7f2f2901a2c7b983095b7aa80ddd5f59b91e22acb0c716f5fdad0f99b"
    end
    if Hardware::CPU.intel?
      url "https://github.com/neongreen/mono/releases/download/jj-run--main.1/jj-run-main.1-linux-amd64.tar.gz"
      sha256 "d70dd7a78d2ca6bb333b2345de1457616b63cfae521ab04608859bda8dbe5d36"
    end
  end
  def install
    bin.install "jj-run"
  end

  test do
    system "#{bin}/jj-run", "--help"
  end
end
