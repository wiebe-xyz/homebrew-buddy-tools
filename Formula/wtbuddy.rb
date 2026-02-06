class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.113"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.113.tar.gz"
      sha256 "bf7ee807933741d6065749dec1e0e44d782645f9034ea67474dcec8fe1050620"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.113.tar.gz"
      sha256 "54b7b0a8a1419e5ec5cf8d30a276ef59d4e780926fe30220b0a3be6219e52c65"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
