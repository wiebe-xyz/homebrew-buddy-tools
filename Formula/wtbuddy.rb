class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.213"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.213.tar.gz"
      sha256 "ba0e7a7503c74d1c8700d87cb428ac0c218adaebd1710af8c9ccdd0828d07171"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.213.tar.gz"
      sha256 "5a02cdd6ee736562324cc82c33c501b39ac27b76ef62f91a27147006697211d8"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
