class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.139"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.139.tar.gz"
      sha256 "1f50cdc674014e84108049edf8e47a397b2dcb3d4f24eaa2799d35cd54031410"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.139.tar.gz"
      sha256 "64b43826af1b870a7bd21febfe6e43a63a6d73f14f5eebf7f7367d1a07c24642"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
