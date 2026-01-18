class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.72"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.72.tar.gz"
      sha256 "31ee09584b6f66912eba93dda4283882db7d6ee4e8b1cee56b44a24f60212b05"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.72.tar.gz"
      sha256 "3d6abe0c898f48f40d314c94f1a0b1f1a206a9fcf48ef47cc936d4ed6f850a9e"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
