class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.52"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64.tar.gz"
      sha256 "c8ef1384c788e8bad897bdcde57c1dd020611125ef983c3e9ded727395562ce6"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64.tar.gz"
      sha256 "8cb6504a1c296251ec59fc437de28c824080a0f3e1dee17d0135c323002b59e5"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
