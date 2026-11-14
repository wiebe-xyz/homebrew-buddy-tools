class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.225"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.225.tar.gz"
      sha256 "cc0f35d513946af09440bb07ffc9ae1c56c474289e611ff2eb53d9a6dcab2fff"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.225.tar.gz"
      sha256 "840a4ea6f9673aa746c7944120dd150cc48ec544b2cbce8c476865d764a3ca6f"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
