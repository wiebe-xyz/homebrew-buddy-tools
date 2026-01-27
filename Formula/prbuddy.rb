class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.90"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.90.tar.gz"
      sha256 "f01916f9609427226250fe83d38b401a776223e7e2b128b9941ef499af607f9e"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.90.tar.gz"
      sha256 "2c3c2b59caa205469fa6d3c51797ff8c1a73fd47d7a75545cbbf3e87d3b4ed72"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
