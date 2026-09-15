class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.202"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.202.tar.gz"
      sha256 "2955720612fbdf41bf80e685fe2109d9641278c9856f512a1fb93a9651ea19b1"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.202.tar.gz"
      sha256 "d7a7c3068e0d300a071bdd8ce6c4df5fd75b77f0bcdf6ae029328c2de591373b"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
