class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.85"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.85.tar.gz"
      sha256 "f09f437550aa7284528fe0d45f6060e10e329e099bf5ab3ba9d71699bef6023e"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.85.tar.gz"
      sha256 "8dbdb94d9889e172c58176df274ffd045227262fc11f8492b363bb6bfa16d1cb"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
