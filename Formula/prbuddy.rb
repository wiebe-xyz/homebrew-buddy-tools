class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.119"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.119.tar.gz"
      sha256 "532a96d4b5a8d90cedb17e5406e13eb4271820faf7d4f121dd98b2954d62a4cf"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.119.tar.gz"
      sha256 "03d1d961d88cce1afd985da81d9ca6dce2aa6834d9e709a87801ef66586a6601"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
