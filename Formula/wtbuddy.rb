class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.90"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.90.tar.gz"
      sha256 "53e2d22d51f7bc9a1e58112926cb3d41fb3cd83a014bec581d99f64269f3b05f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.90.tar.gz"
      sha256 "3b8fb2637c9c6e36ad0d4b2f1426b1216703a3eaac79648e5a06d7ccf3603146"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
