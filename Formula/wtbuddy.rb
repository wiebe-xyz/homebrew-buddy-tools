class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.92"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.92.tar.gz"
      sha256 "ef4d8cc4766e2321663ccf9dbf961fccf03ed1eae7387e017f1fc777a30a23c3"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.92.tar.gz"
      sha256 "39c166b2e17d4ec4f6aa1b15a334148c0ca0eeb0b399e7e0384c670c04d90ad4"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
