class Conf < Formula
  desc "Smart configuration manager with autocompletion for command-line tools."
  homepage "https://github.com/neongreen/mono/tree/main/conf"
  version "main.3"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/neongreen/mono/releases/download/conf--main.3/conf-main.3-darwin-arm64.tar.gz"
      sha256 "c08e5b1d05043e1b3ade51c407026c5a1edab7be79ff3c18ab45dc973be4ff99"
    end
    if Hardware::CPU.intel?
      url "https://github.com/neongreen/mono/releases/download/conf--main.3/conf-main.3-darwin-amd64.tar.gz"
      sha256 "c75e2eca824b1cb5af9805182f5cc3af2e94129ee0bc1ca2e74222d5098953c6"
    end
  end
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/neongreen/mono/releases/download/conf--main.3/conf-main.3-linux-arm64.tar.gz"
      sha256 "d4bd8aca086c7b6c2603afc7c608bfc5183a7ee4101f71aa5153b11a5c90d92a"
    end
    if Hardware::CPU.intel?
      url "https://github.com/neongreen/mono/releases/download/conf--main.3/conf-main.3-linux-amd64.tar.gz"
      sha256 "02520a97c4bb53d2bfde5f328f2fc0a2b0ac4a96869eccf17b3b7c73eca99db1"
    end
  end
  def install
    bin.install "conf"
  end

  test do
    system "#{bin}/conf", "--help"
  end
end
