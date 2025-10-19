class MarkdownFormat < Formula
  desc "Markdown formatter CLI with opinionated defaults."
  homepage "https://github.com/neongreen/mono/tree/main/markdown-format"
  version "main.6"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/neongreen/mono/releases/download/markdown-format--main.6/markdown-format-main.6-darwin-arm64.tar.gz"
      sha256 "33494841d8f277d09ab1e8d5be4b146766089402ce0ebfe0a0eb88ee76f41ec8"
    end
    if Hardware::CPU.intel?
      url "https://github.com/neongreen/mono/releases/download/markdown-format--main.6/markdown-format-main.6-darwin-amd64.tar.gz"
      sha256 "3757bd0e0c27671f1e635750a9fe51b6990e0d39e9dc74729cc6efaa24124a21"
    end
  end
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/neongreen/mono/releases/download/markdown-format--main.6/markdown-format-main.6-linux-arm64.tar.gz"
      sha256 "57540f11d7422fcc4443206770a8d3c9d784e8fd5790110cf1d97c65d8728880"
    end
    if Hardware::CPU.intel?
      url "https://github.com/neongreen/mono/releases/download/markdown-format--main.6/markdown-format-main.6-linux-amd64.tar.gz"
      sha256 "c66f448a9c7f877610485f9ef5da25c5e42aee5ebe942331c5636191d004b21c"
    end
  end
  def install
    bin.install "markdown-format"
  end

  test do
    system "#{bin}/markdown-format", "--help"
  end
end
