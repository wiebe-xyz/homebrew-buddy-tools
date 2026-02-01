class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.99"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.99.tar.gz"
      sha256 "1a078c0f4db1c776f0bf054f5f83b8164acb8e7b1e623084b365c87aed6e703d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.99.tar.gz"
      sha256 "27349d9416b81f3a4adfd08a7fbb4cc5778570379156e4c7e5da3db9ae122bba"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
