class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.64"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.64.tar.gz"
      sha256 "2948aeca2d011a2c588b799787e7f32cb2623fda1cce523f1ebaf8adb2324b52"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.64.tar.gz"
      sha256 "fe385ed9d8f7f786247b7953c85766ce74fe82716d9dde39a646e5756c82b31d"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
