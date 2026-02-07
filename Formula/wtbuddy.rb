class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.132"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.132.tar.gz"
      sha256 "4f0eec8b7201a0cc581b60153c964ec0d440d9c33a8c1060bc3f75c480c19e62"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.132.tar.gz"
      sha256 "60f567c971823b750d2d5eb9990509483e0d44926eed911de1b7849afeb4d254"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
