class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.126"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.126.tar.gz"
      sha256 "8f483aa386f9e96cee128cc13afc976f3b7d4a957114123799d9595a7f16d5aa"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.126.tar.gz"
      sha256 "77f60cc02a426476678e2b96cd4a4ca08a8166aa5ed2d7d1af87eead0b592ebc"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
