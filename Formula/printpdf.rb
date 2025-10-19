class Printpdf < Formula
  desc "Convert Markdown, URLs, and GitHub files to PDF using multiple renderers."
  homepage "https://github.com/neongreen/mono/tree/main/printpdf"
  version "main.9"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/neongreen/mono/releases/download/printpdf--main.9/printpdf-main.9-darwin-arm64.tar.gz"
      sha256 "e823faaa3d023afe82bd22002683dd0135530f98aeec2c8258b4ea7ab212ef0d"
    end
    if Hardware::CPU.intel?
      url "https://github.com/neongreen/mono/releases/download/printpdf--main.9/printpdf-main.9-darwin-amd64.tar.gz"
      sha256 "84800be3a9240c4061132496f70f35f3e519d3322cbbd32af7d2abdafa6bea90"
    end
  end
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/neongreen/mono/releases/download/printpdf--main.9/printpdf-main.9-linux-arm64.tar.gz"
      sha256 "4a55743645329aa574f9ae135e2b653ce7cdea6d43d3d8ba93dac80407732495"
    end
    if Hardware::CPU.intel?
      url "https://github.com/neongreen/mono/releases/download/printpdf--main.9/printpdf-main.9-linux-amd64.tar.gz"
      sha256 "b158512182f65812b30980104671005fe9a2d4b180d73ce34d10392ff9e505fa"
    end
  end
  def install
    bin.install "printpdf"
  end

  test do
    system "#{bin}/printpdf", "--help"
  end
end
