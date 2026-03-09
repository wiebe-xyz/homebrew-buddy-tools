class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.175"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.175.tar.gz"
      sha256 "82455b69434e24a575e4c4f187c5011df1d7395563b8c9702d1088f8a7e0738f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.175.tar.gz"
      sha256 "2bf97a47fd415a0fdd9f89f08176b19d161e68d42bdd339256feab9b6ac51d27"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
