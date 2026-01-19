class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.79"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.79.tar.gz"
      sha256 "e0b4ec07085e97b2bfea8959270dec1d6fbf1970c4727b32fd2c80ccc69e56cb"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.79.tar.gz"
      sha256 "ffb8131a1d138bc6dd652a46c32227a7175eb4c0053ffc84265c647f3f92f1d8"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
