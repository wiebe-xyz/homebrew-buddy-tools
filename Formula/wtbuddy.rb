class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.80"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.80.tar.gz"
      sha256 "f382fb732428431dc781228d8acfb3b5ca8c99755d547dee907ef4d7e73f8efb"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.80.tar.gz"
      sha256 "2abc66e35c9d38a0ed2629b3c15854f2f5d9307124bfe3de178c84076299a24d"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
