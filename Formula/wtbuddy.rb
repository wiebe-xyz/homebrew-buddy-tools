class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.180"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.180.tar.gz"
      sha256 "315e476182e0fccd62752d663ff9489a7b67cdcabd8d2d3e8e8136c9de99adba"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.180.tar.gz"
      sha256 "ca5b232c4f7d48d64dfc86d40a86d4ca6d92ac807339838a3d09b46d27960395"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
