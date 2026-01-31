class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.96"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.96.tar.gz"
      sha256 "7330ac429af2d257187233fd4815423550ad5b1a6bc282e381ee4929c485ab32"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.96.tar.gz"
      sha256 "e4e5cfe95cf9ee58320d1f7157e32d1bfa78dcc3912038a8d8ef764c50f41aff"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
