class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.211"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.211.tar.gz"
      sha256 "f1bdf5c019315ab2c0f22e8e3fe6b293329934b7d5305ec8ca2266d00331b0b1"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.211.tar.gz"
      sha256 "c76ad4215041c0b0e98e3749f72c988eac6b210ee3e5f3b0e9e0de8ec3a63c44"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
