class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.112"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.112.tar.gz"
      sha256 "255f08693c5eedbd6037c470e3e32cb696f3a415d52a235712f261426751d856"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.112.tar.gz"
      sha256 "6bd6e6c5a7099420f7fd7e6b8d75f841737063ebb462b4006a8849f6667c7546"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
