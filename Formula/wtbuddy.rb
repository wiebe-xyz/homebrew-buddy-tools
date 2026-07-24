class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.194"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.194.tar.gz"
      sha256 "b7d3961f70e913a7f6daee52a9ebcb4c16bb9a8e13e8defee0494070f81c9903"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.194.tar.gz"
      sha256 "c1c7971c48ed225d334d3a67f5d3edded4be6b846c1195fd23c2a2857a43b884"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
