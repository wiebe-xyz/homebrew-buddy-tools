class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.64"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.64.tar.gz"
      sha256 "fe400674f5858d7f0d4586b3b3d1a8b56cfe13a5a1abd3cbb6ece639f2d2f568"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.64.tar.gz"
      sha256 "9330d7ea1d1c345af90d066a98dfaea4eb027e6408c753e8593b4a821ce1c4ad"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
