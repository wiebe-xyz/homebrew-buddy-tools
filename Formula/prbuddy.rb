class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.67"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.67.tar.gz"
      sha256 "c1a0bb4f92ae6fdfe6e2f2734f521bb802bbf07640e797c8849d7cd09601b457"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.67.tar.gz"
      sha256 "3f389e175bfcde8a171e4ff34dde5eb94ad21ab0051c7727150403e6956a59c3"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
