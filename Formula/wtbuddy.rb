class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.55"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64.tar.gz"
      sha256 "19be4b23a77172c1da3be8205a2ff287c62d4a459aeea435549ea6c0af08def0"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64.tar.gz"
      sha256 "2bc5622ec37dbd3c94cddc3aa444d83ff0827027665d284322e0f382bf1150e6"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
