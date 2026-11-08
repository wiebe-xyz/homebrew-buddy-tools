class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.208"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.208.tar.gz"
      sha256 "ca65cb8519a3374db96a2322cf14c1aa1a8b625c8b869ce3216871b931ea027a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.208.tar.gz"
      sha256 "d5d5441a5fc1abbaf98c53fedf5dff3067a9ec5e706347d07d08a63a8f9285c7"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
