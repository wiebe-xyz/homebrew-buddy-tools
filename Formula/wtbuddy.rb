class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.196"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.196.tar.gz"
      sha256 "f47834bc30bf4c839569a690370b94cc08d3adce770a589f20273092b3f802b4"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.196.tar.gz"
      sha256 "a2bd657f77c6f5cc2f969181ebc26eabbbe85b7d299b37a0c71e04997cec31bd"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
