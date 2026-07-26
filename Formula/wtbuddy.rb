class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.195"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.195.tar.gz"
      sha256 "2b9b658f5d5db2e0d8d9197bec48f7a63e09432c6a81e0c0b56274d9607873fc"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.195.tar.gz"
      sha256 "406276ec79aefb668d9394c8f11c3c877a0cd20c3ce2cff890d68cef2d8e0c77"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
