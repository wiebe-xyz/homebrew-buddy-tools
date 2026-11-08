class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.219"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.219.tar.gz"
      sha256 "5ce9d66ca47dd2669166f5225c6a5494d8e4bc77169f3010a2bd60e8d01e9f60"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.219.tar.gz"
      sha256 "47a9d0af1bf337821eba1f9239514f7a5dc13ed5730b404e3e5cd9ee530c9c9d"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
