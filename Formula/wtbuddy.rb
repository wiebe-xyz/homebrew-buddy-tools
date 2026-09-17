class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.204"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.204.tar.gz"
      sha256 "7b7eb6747cda2e742a630c1e50f89f0aa7b57d53ea144bd85c35111b48f34a0c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.204.tar.gz"
      sha256 "1e3cf14a14679fdd04c23ffaf32f8c5431bbe076294bd3923e6053ea4a6b2be2"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
