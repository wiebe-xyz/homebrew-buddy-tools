class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.108"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.108.tar.gz"
      sha256 "e6eaa74f3084e74b86c0034fb2abcbd597ea629334403585fab65e88f5d99d33"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.108.tar.gz"
      sha256 "49ba7dda9a411b6bbe9d23708cffd5965d024d2cfa4201fb33cff591ea349dbb"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
