class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.89"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.89.tar.gz"
      sha256 "28a38391523032b55bc9eea2630d9ce528ed60f73d9b9ea2292b8dffe4e6acbb"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.89.tar.gz"
      sha256 "83f3e2ee0d71059f9b9ce07a04eac0cd593cf79b2b69943d1f19c6ac8c89629f"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
