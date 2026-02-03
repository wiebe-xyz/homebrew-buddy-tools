class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.105"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.105.tar.gz"
      sha256 "de303ecc5754d456ec6954f5f030adea60a30de6ad8ef52b7af0dea0c50932e2"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.105.tar.gz"
      sha256 "4a3f2ab4884872d9fb20a07f05c350795a65cdf176f508b54b7ed89fa7d1fb11"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
