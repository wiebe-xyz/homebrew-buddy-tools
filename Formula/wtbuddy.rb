class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.182"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.182.tar.gz"
      sha256 "1e529544eddc6abc641b072c10914f0f0703604f4f723564c5d92f525cbcaa23"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.182.tar.gz"
      sha256 "cd5a0108222c2503fc36dc8375d675b33057e0d6c24f230d8c3f9e7ed5fed14d"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
