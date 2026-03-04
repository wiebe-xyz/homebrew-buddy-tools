class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.144"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.144.tar.gz"
      sha256 "d5bf7037e9626ed27ea625252196a3305f89d27596f2114774a255bcbe39c7ee"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.144.tar.gz"
      sha256 "4b96b4915f70e52104d27e0324994e2234581b75cccfc67b3df2f71cef1c5e5c"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
