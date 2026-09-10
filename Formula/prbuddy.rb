class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.198"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.198.tar.gz"
      sha256 "edc28a60707c94e59d70b8d9c37594bb21ef5c3bbfdc26942e8ed987845a10e9"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.198.tar.gz"
      sha256 "6c77cd20897717cbebaacfdf7edb332fa62993ca4f6483b33ab5a88e1c1cd4f7"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
