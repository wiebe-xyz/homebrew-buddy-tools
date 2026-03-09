class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.176"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.176.tar.gz"
      sha256 "b5a6f1eee13d84db0bb5d0aeb6e2768a0d14200d68d33980b555c1815ae918b2"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.176.tar.gz"
      sha256 "1b2033e755044ac739d609a8653943a447dd5e2fd186b6a36e0489a1660f2002"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
