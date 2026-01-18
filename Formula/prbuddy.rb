class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.74"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.74.tar.gz"
      sha256 "832f17cbc16b1e15b20db0f6b6755356b1ad71ec142772c2cfacd49c903859e5"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.74.tar.gz"
      sha256 "bf4fa339a45e767a309bcd2548f9a03bba0c05362bd32904720833c43d97b6d4"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
