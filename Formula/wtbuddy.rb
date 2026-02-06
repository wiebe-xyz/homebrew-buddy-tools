class Wtbuddy < Formula
  desc "CLI tool for managing Git worktrees for parallel development"
  homepage "https://github.com/wiebe-xyz/pr-buddy"
  version "0.0.122"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-amd64-0.0.122.tar.gz"
      sha256 "4f0e6c3dba8ed97ce9dcebee47a7c0a2d4132b7218ed71576f1142994fa8c3fa"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/wtbuddy-darwin-arm64-0.0.122.tar.gz"
      sha256 "c00dfaf4b95dd25cfb529ff1ff83b294240c41934c03dd716c8b0748002e00dd"
    end
  end

  def install
    bin.install "wtbuddy"
  end

  test do
    system "#{bin}/wtbuddy", "--version"
  end
end
