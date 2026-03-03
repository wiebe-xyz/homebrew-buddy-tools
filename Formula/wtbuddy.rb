class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.140"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.140.tar.gz"
      sha256 "a1261ec3ba5a77b46b589ea89f607afdcc724388066e45a5f3930396320c440e"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.140.tar.gz"
      sha256 "75fa08a77fcdc1e0b421cef30eb947c74c12c15e506ccf84fc7f0d2e912fd2fd"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
