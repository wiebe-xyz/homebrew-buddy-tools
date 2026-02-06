class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.119"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.119.tar.gz"
      sha256 "913b5fb3aa773ffba422a6e19dbce9d01f07e59390d97b159335680951fcdac5"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.119.tar.gz"
      sha256 "3b7ddd99f22b59cd74ab05c993119ed1c6de0e6aad6992e1a59d80f67363111a"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
