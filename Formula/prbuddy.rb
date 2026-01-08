class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.59"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.59.tar.gz"
      sha256 "260d6f5ec7ed5021f3bb8e3be758b4975294de60fbe93d5129ff4ee9d31a2532"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.59.tar.gz"
      sha256 "9127eacba13e3ebae04e85cb217376df9f623bc3eff0ad591e2b6d8014410a81"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
