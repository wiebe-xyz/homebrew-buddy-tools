class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.138"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.138.tar.gz"
      sha256 "f75a0413e1a5a00ac35b0e6faa3e7767aeee6051f0b7e6f1ecb045b280acb6a1"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.138.tar.gz"
      sha256 "2ef2dbd84b63171c1a79d73f9f300ed17aa334f312dbb00e1484e9b0fed7c2ad"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
