class Prbuddy < Formula
  desc "CLI tool for managing GitHub Pull Requests with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.114"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/prbuddy-darwin-amd64-0.0.114.tar.gz"
      sha256 "1dfc2c00bcb4933828e6f7b902c94aeece72bcaba81bae679d26be6f00f2da06"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/prbuddy-darwin-arm64-0.0.114.tar.gz"
      sha256 "fd5f4df8be2cffc26c0a0a83cf1a75bd0a5f4c093bf0b47ad49d8f89985220e5"
    end
  end

  def install
    bin.install "prbuddy"
  end

  test do
    system "#{bin}/prbuddy", "--version"
  end
end
