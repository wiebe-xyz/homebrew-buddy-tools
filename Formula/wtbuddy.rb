class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.65"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.65.tar.gz"
      sha256 "c89d02e7ee0768694dd37c17e101b1ef9736dd1f09afbe379998026dbd047327"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.65.tar.gz"
      sha256 "f0461f5b6c993164175bc40b62c3db36e051f6d630afd12491c1b0f0047f4879"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
