class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.204"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.204.tar.gz"
      sha256 "2cca51fd7008247618c58e8d6a47d6614154a833b2c4151d44ceb086224adef8"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.204.tar.gz"
      sha256 "7d6b94f0fc2256e56795e1d33929a2f3e6bf15425bcd971a11220fb15298f739"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
