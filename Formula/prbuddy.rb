class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.210"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.210.tar.gz"
      sha256 "710805a3a8b62b5861368d830a71626ee44b03ed06ac61f625d921cea95672f2"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.210.tar.gz"
      sha256 "64fccbee41c1395a1c93baf555fdc0d2cfb79b64a9a58acfc909eb5d0e029e2f"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
