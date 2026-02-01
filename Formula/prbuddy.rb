class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.98"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.98.tar.gz"
      sha256 "1a39e10be7e97122879a689dc9901d30e8eb2891975aa8cd42541c13e3a96809"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.98.tar.gz"
      sha256 "3dd34aa90e718e829e7625ce4c4a9597e796eacbd7ed22ebf7411c1648c55b34"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
