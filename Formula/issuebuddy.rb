class Issuebuddy < Formula
  desc "CLI tool for managing GitHub Issues with an interactive terminal UI"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.97"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-amd64-0.0.97.tar.gz"
      sha256 "c1af7ec8f0f0b284342bdb11d0c127846b6f5d9d844fc558eef66d6bb06a39c9"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/issuebuddy-darwin-arm64-0.0.97.tar.gz"
      sha256 "1d7ac62e0a509fe5cdde00a5f54a23233d57903165e3425ebd339b98e15fdf63"
    end
  end

  def install
    bin.install "issuebuddy"
  end

  test do
    system "#{bin}/issuebuddy", "--version"
  end
end
