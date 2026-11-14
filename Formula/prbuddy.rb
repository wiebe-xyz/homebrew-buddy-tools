class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.225"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.225.tar.gz"
      sha256 "285bda0a25231d526a5e98137cedeb0b589a8abae4415893c0d2a21cc187a3fc"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.225.tar.gz"
      sha256 "2dc2acb828d5b257a55bcbf8e07113092fc588066fda54701482fee6c99e7b80"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
