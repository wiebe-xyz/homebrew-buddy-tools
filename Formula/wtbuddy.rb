class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.221"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.221.tar.gz"
      sha256 "c7380da692a34e646290e9291bcaf8df5807931eaea0a5dcd77dcc2dec4ba4db"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.221.tar.gz"
      sha256 "34f38b1663e6b1bcbb2e282d2c6a17b876705d57b9d47f44d352d619c061e17a"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
