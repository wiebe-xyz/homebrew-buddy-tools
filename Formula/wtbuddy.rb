class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.124"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.124.tar.gz"
      sha256 "ee371d4596f27145b136d66caf936271f5d179275ff0280620d38f8d327e0ddf"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.124.tar.gz"
      sha256 "5b626af1fb8f4d761324067e46f3722fb526946c9a3d6193ce4518bc6cba75e0"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
