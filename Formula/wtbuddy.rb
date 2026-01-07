class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.50"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64.tar.gz"
      sha256 "8a419f73b36b2a9ce6ef52ebf41bdf9404df47e4599d45417a3b72b4d7e7f278"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64.tar.gz"
      sha256 "302b5ea8c9ea32889207f7ee0af75a18bdc7f9aaf724f7bdfde23e6b46be1959"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
