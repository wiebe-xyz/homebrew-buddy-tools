class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.63"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.63.tar.gz"
      sha256 "7bdcca42adbae5f099bd75733e9e8c440c35373ca9fc83bf8cd85490ec271e74"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.63.tar.gz"
      sha256 "1a1e2aa0018e2c647ca939e6c4c61efd1ce6533df57a5ccf3827c85a81515bd7"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
