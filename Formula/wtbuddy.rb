class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.66"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.66.tar.gz"
      sha256 "73e328c896f989ec74b6775e26602b9b2b4c02e909e25643d33a7ff5e619de9c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.66.tar.gz"
      sha256 "8a4ad6719ce22a0eebad70fb91e207ab1e749cdc750c02bf3b3f6aa753afedae"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
