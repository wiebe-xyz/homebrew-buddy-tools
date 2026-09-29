class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.205"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.205.tar.gz"
      sha256 "f59470ea6a80f797c9417ebc9bda95a965ce6ccb958f3187ec571d4351c3a210"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.205.tar.gz"
      sha256 "c98a1bbec6245dca457d06acde3d439d4e17fe0aa55d0f2312ad6819d03ab2fc"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
