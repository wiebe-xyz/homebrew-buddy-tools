class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.98"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.98.tar.gz"
      sha256 "10b60119025b78df7fa6ea77838ce2675659cb64dc12b645c09b4e7d4d382697"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.98.tar.gz"
      sha256 "3a4f6dac48504b2d3c9eb690dd1dac82b420a6309b4963b4477c4b8fd84df945"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
