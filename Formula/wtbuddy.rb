class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.199"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.199.tar.gz"
      sha256 "10af6eecee4976ce0d267679d5367e7847674390068ae430ef2ce807aa0c1f3a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.199.tar.gz"
      sha256 "5464cbaf38b05808f80f163b46281a4d34ad9f41f198eaa5dd719d79062411c1"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
