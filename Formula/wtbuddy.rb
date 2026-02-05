class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.110"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.110.tar.gz"
      sha256 "a2b63a4a0ca9b91f8313a7b08f5d7fe20dae29f3f0c2111f861f30ab30d40bb7"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.110.tar.gz"
      sha256 "4c7986941f5a962d6c763c41e11c9f4882aa99386b3328320c2a9b1f92c27efb"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
