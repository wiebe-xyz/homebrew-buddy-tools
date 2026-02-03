class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.104"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.104.tar.gz"
      sha256 "1f80c2d569fe5fdb84cd77e7a8ff9d413cd5dd149d603ed673643fff55f734a7"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.104.tar.gz"
      sha256 "ec9d2d0ea1a00087de535a4c32fd98afa3b02e02f06784db59653882a0ecbee1"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
