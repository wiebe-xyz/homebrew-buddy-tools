class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.114"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.114.tar.gz"
      sha256 "af0499469e9c2821603b7905af95cca181e8ce22740df800862bc7b4ce517f08"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.114.tar.gz"
      sha256 "a412cde8a80997751292118c11b8f8661eb9c66fa68f6d0a3f6645b8b0c5f3f9"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
