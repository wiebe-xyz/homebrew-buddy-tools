class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.136"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.136.tar.gz"
      sha256 "ea086c45415e36968543664bc0d1fbb8187613b67f5bef9586eba01d2febf71c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.136.tar.gz"
      sha256 "da82cb58d07ed8f54014af2adc185b4e5fc8f4d57ab5f20f792fb2a839f3c5f1"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
