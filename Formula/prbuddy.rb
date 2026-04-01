class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.191"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.191.tar.gz"
      sha256 "d62e2b0d219a79eacc1994653535a4549edfc74b2858160ff42943b43c760d6e"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.191.tar.gz"
      sha256 "f4db10c66c2239befb3ad1d38763f4bcad75f1f2a15a22b2d387cdf778a9bf8f"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
