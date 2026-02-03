class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.103"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.103.tar.gz"
      sha256 "c4843661b1537d760c01f7178ebf07a282a1e4fa900dfc6f375307e918a099e8"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.103.tar.gz"
      sha256 "bce490741d1a5fa3eb0fc04b6170ac466bd40b77fb6d5c25ecbf248ed12ce620"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
