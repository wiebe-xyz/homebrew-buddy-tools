class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.59"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.59.tar.gz"
      sha256 "61be29dfdbd01ef595b426efce5ecd03c496d7846529bcacc41b625635547c0f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.59.tar.gz"
      sha256 "2b4fd60e50574cd10ceb364e7173d112213074c3aad0aaf754301d79b3c8250d"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
