class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.201"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.201.tar.gz"
      sha256 "9aafb7fb584996fccbc24abae02f38f25287ea4c426d7db42603694ffc95b4d2"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.201.tar.gz"
      sha256 "fd7cf7e38946c5150c4c8e067f6d59efadbefb1c26a277550fb1a4f2b7955550"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
