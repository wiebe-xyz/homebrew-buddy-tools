class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.147"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.147.tar.gz"
      sha256 "616ee346e8bb438e355cf9e95aebf432e0fda016bde4a7b7bcdc55f46ddcdd2b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.147.tar.gz"
      sha256 "346f2b1775ef03e6acddc464059cca38cbc357933eafda0a50c01ef637bd598b"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
