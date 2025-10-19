class Ingest < Formula
  desc "Flexible ingestion CLI that captures repos, filesystems, and GitHub data into SQLite."
  homepage "https://github.com/neongreen/mono/tree/main/ingest"
  version "main.6"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/neongreen/mono/releases/download/ingest--main.6/ingest-main.6-darwin-arm64.tar.gz"
      sha256 "af7f4a1ac41bd3d078dc03bb284b6fbcfb3d26177a866b1acca3c3e91184243f"
    end
    if Hardware::CPU.intel?
      url "https://github.com/neongreen/mono/releases/download/ingest--main.6/ingest-main.6-darwin-amd64.tar.gz"
      sha256 "6226b1be3e6dd7d7e09d4e1df3b60d7f97306250db0a4bd0fede61a25286eca6"
    end
  end
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/neongreen/mono/releases/download/ingest--main.6/ingest-main.6-linux-arm64.tar.gz"
      sha256 "d2362cc701b9cbad6fade1f892a81487a6f03f84b4f43b17016168c01b3ccfd9"
    end
    if Hardware::CPU.intel?
      url "https://github.com/neongreen/mono/releases/download/ingest--main.6/ingest-main.6-linux-amd64.tar.gz"
      sha256 "e76e355e2b42386bdab95e4d11009d369d3abd06c4fd506f80fdd81f4bf7f2dd"
    end
  end
  def install
    bin.install "ingest"
  end

  test do
    system "#{bin}/ingest", "--help"
  end
end
