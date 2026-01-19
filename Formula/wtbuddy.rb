class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.84"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.84.tar.gz"
      sha256 "3e043ca8f2d2191f8dd93f9ef9aee4227b4d96451152f2191c9083dd62487487"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.84.tar.gz"
      sha256 "51f9efe2c795262ee8ed94ae36afd7058fe0b84b11c94d5234e6f53ff17e1fa8"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
