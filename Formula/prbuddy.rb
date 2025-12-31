class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.44"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64.tar.gz"
      sha256 "b5623b73cef7b9fec93943c3a4b90d619a705085c2d33a714bb8a9c50cdf589c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64.tar.gz"
      sha256 "d9537070b9dd75a9969dad14119595bb3d6f337a329a0986b205a9f25b7bb623"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
