class ClaudeTrace < Formula
  desc "Terminal UI for browsing Claude Code conversation logs."
  homepage "https://github.com/neongreen/mono/tree/main/claude-trace"
  version "main.4"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/neongreen/mono/releases/download/claude-trace--main.4/claude-trace-main.4-darwin-arm64.tar.gz"
      sha256 "c514bc848bed7a0be692d4c626544ce49d381d308a64bf4ef4a1ad5926e3e64b"
    end
    if Hardware::CPU.intel?
      url "https://github.com/neongreen/mono/releases/download/claude-trace--main.4/claude-trace-main.4-darwin-amd64.tar.gz"
      sha256 "41269da3ea846ffce8714f81f7c4e29b88546b88c3a169d03afa25a085c39882"
    end
  end
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/neongreen/mono/releases/download/claude-trace--main.4/claude-trace-main.4-linux-arm64.tar.gz"
      sha256 "ce2fd126fa649347342e37090af1e8f043aab7368a427caa7ed36661f130f34a"
    end
    if Hardware::CPU.intel?
      url "https://github.com/neongreen/mono/releases/download/claude-trace--main.4/claude-trace-main.4-linux-amd64.tar.gz"
      sha256 "94dc28c8a236b0be71599093c003e0a78c6edd8f04d14f01a263c76f7cd76591"
    end
  end
  def install
    bin.install "claude-trace"
  end

  test do
    system "#{bin}/claude-trace", "--help"
  end
end
