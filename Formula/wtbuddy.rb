class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.60"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.60.tar.gz"
      sha256 "7351ded0341e219afd1612ab5151e62b0468306192bac218e99c29351bf9b5e8"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.60.tar.gz"
      sha256 "ce9dec4a2763f3d83a34d11be5dcb4d77177b3b5594e98876fec6c296b7196e9"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
