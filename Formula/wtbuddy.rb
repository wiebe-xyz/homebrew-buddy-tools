class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.83"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.83.tar.gz"
      sha256 "f143777a7b4fc5f383330262b52177966491e1629a20d4ea0768a1075885b4b0"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.83.tar.gz"
      sha256 "b6c20412d29532b0401a68e8a5142351cb589c97cc5b5044a30c0d6c8ed9c887"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
