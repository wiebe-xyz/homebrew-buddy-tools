class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.70"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.70.tar.gz"
      sha256 "dc5d742aa6eebdcd360e5a99219dedc70ab07c8368a10b61136d803ee7167935"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.70.tar.gz"
      sha256 "31e0d07f5e0f9e4afd4f7acc2439391d6a6d744bd8494a84430038a642f9d466"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
